//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include "HT1621B.h"
#include "ParticleSensor.h"
#include "software_IIC.h"
#include "Si7020.h"
#include "LCD.h"
#include "HumiChipII.h";
#include "include.h"

#define ONE_SECOND_TIMER_RELOAD		24
#define HALF_SECOND_TIMER_RELOAD	12
#define BACKLIGHT_DIM_STEP			3

unsigned int LightADCValue;										
unsigned int DstBackLight;
unsigned int CurrentBackLight;
unsigned char LightDuty;

unsigned char FanUpdateTimer	= ONE_SECOND_TIMER_RELOAD;
unsigned char one_sec_timer		= ONE_SECOND_TIMER_RELOAD;
unsigned char rh_sample_timer	= ONE_SECOND_TIMER_RELOAD;
unsigned char PlasmaTimer		= PLASMA_TIMER_RELOAD;
unsigned char LcdUpdateTimer	= HALF_SECOND_TIMER_RELOAD;
unsigned char IICTimeOutTimer;
unsigned char RHSampleStep = 0;
							//   255   192   129   66    3
const unsigned char RankLevel[8] = {20,  120,  220,  320};

#define USE_SI7020 //if use HumiChipII then comment this macro

void Timer16ISR(void)
{
	if (one_sec_timer)		one_sec_timer--;
	if (rh_sample_timer)	rh_sample_timer--;
	if (FanUpdateTimer)		FanUpdateTimer--;
	if (PlasmaTimer) 		PlasmaTimer--;
	if (LcdUpdateTimer)		LcdUpdateTimer--;
	if (IICTimeOutTimer)	IICTimeOutTimer--;
	if (RecTimeoutTimer)	RecTimeoutTimer--;
	
	if (DstBackLight >= (CurrentBackLight + BACKLIGHT_DIM_STEP))
	{
		CurrentBackLight += BACKLIGHT_DIM_STEP;
		LightDuty = CurrentBackLight;
		PWM8_BL_WritePulseWidth(LightDuty);
	}
	else
	{
		if ((DstBackLight + BACKLIGHT_DIM_STEP) <= CurrentBackLight)
		{
			CurrentBackLight -= BACKLIGHT_DIM_STEP;
			LightDuty = CurrentBackLight;
			PWM8_BL_WritePulseWidth(LightDuty);
		}
	}
}

//
//return the backlight duty according to the light strength
//

unsigned char LightRank(unsigned int light)
{
	unsigned char duty,i;
	duty = 255;
	for(i=0;i<4;i++)
	{
		if (light < RankLevel[i])
		{
			break;
		}
		else 
		{
			duty -= 63;
		}
	}
	return duty;
}
void main(void)
{
	unsigned char k;
	unsigned char ret;
	unsigned int *p;
	M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	RES_WDT = 0;
	Init_IIC();
	
	delay_us(200);	//wait for the LCD driver power on
	HT1621B_Init();
	
	//back light
	CurrentBackLight = 3;
	PWM8_BL_WritePeriod(255);    // Set period to eight clocks
	PWM8_BL_WritePulseWidth(3);   // Set pulse width to generate a 50% duty 
	PWM8_BL_Start();
	
	//WriteAll_1621(0,a,16); //在起始地址为0 处连续写入16个字节数据
	
	UART_Board_Start(UART_PARITY_NONE);
//	UART_Board_EnableInt();
//	UART_Board_IntCntl(UART_ENABLE_RX_INT | UART_DISABLE_TX_INT);
	
	UART_Sensor_Start(UART_PARITY_NONE);
//	UART_Sensor_EnableInt();
	UART_Sensor_IntCntl(UART_Sensor_ENABLE_RX_INT | UART_Sensor_DISABLE_TX_INT);
	
	Timer16_WritePeriod(3200);
	Timer16_WriteCompareValue(3200);
	Timer16_EnableInt();
	Timer16_Start();

	UART_Board_CPutString("Woody is a genius!");
	
	PMSFrameFlag = 0;
	HeadFlag = 0;	
  	DataPtr = 0;
	
	SAR10_SetClk(SAR10_SYSCLK_16); // Set clock source - system clock/64
	SAR10_SetRunMode(SAR10_ONESHOT); // Set running method - one-shot
	SAR10_SetADCChannel(SAR10_CHS_AMUX0); // Set Port_0_5 as input
	SAR10_DisableInt(); // Enable SAR10 interrupt
	SAR10_Start(); // Start conversion

#ifdef USE_SI7020
	Si7020Init();
#else
	HumiChipInit();
#endif 

	LCD_Init();
	
	RES_WDT = 0;
	while(1)
	{
		if (!RecTimeoutTimer)
		{
			PMSFrameFlag = 0;
			HeadFlag = 0;	
            DataPtr = 0;
		}
		
		if (PMSFrameFlag)
		{
			PMSFrameFlag = 0;
			if (FrameCheck())
			{
				data_pm2_5 = MyPMSUnion.MyPMFrame.PM2_5_US;
				data_pm1_0 = MyPMSUnion.MyPMFrame.PM1_0_US;
//				UART_Board_CPutString("PM2.5:");
//				UART_Board_PutSHexInt(data_pm2_5);
//				UART_Board_PutCRLF();
				
			}
			else
			{
//				UART_Board_CPutString("Checksum fail");
			}
		}
		
		if (!one_sec_timer)
		{
			one_sec_timer = ONE_SECOND_TIMER_RELOAD;
			
			/*
			k++;
			if (k>9)
				k = 0;
			
			a[0] = Digit[k];
			a[1] = Digit[k];
			a[2] = Digit[k];
			WriteAll_1621(0,a,3);
			*/
			
			MUX_CR2 |= 0X02; //connect P2.1 Analog bus
			SAR10_Trigger(); //Trigger new sample
		 	while(SAR10_fIsDataAvailable()==0);//Wait while data is not ready
		 	LightADCValue = SAR10_iGetData(); // Read result
			MUX_CR2 &= ~0X02; //disconnect P2.1 Analog bus
//			UART_Board_CPutString("Light: ");
//			UART_Board_PutSHexInt(LightADCValue);
//			UART_Board_PutCRLF();
			
//			PWM8_BL_WritePulseWidth(LightRank(LightADCValue));
			DstBackLight = LightRank(LightADCValue);
			
		}
		
		
		if(!rh_sample_timer)
		{
			rh_sample_timer = ONE_SECOND_TIMER_RELOAD;
#ifdef USE_SI7020
			if (!RHSampleStep)
			{
				ret = Si7020SendCommand(MRH_NHMM); // send the command(Measure RH, No Hold Master Mode)
				if(ret)
				{
					RHSampleStep = 1;
				}
			}
			else 
			{				
				Si7020Read_RH_NHM(RecBuf);
				Si7020Data = *(unsigned int *)RecBuf;
				if (CRC8Check())
				{				
//					UART_Board_CPutString("RH: ");
//					UART_Board_PutSHexInt(Si7020Data);
//					UART_Board_PutCRLF();
					Humidity = Si7020CalcRH(Si7020Data);
//					UART_Board_PutSHexByte(Humidity);
//					UART_Board_PutCRLF();
				}
				
				Si7020Read_Temp_after_RHM(RecBuf);
				Si7020Data = *(unsigned int *)RecBuf;
//				UART_Board_CPutString("Temperature: ");
//				UART_Board_PutSHexInt(Si7020Data);
//				UART_Board_PutCRLF();
				Temperature = Si7020CalcTemp(Si7020Data);
//				UART_Board_PutSHexByte(Temperature);
//				UART_Board_PutCRLF();
				RHSampleStep = 0;
			}
#else
			HumiChipRdHnT();
			/*print the data to the PC*/
			/*
			UART_Board_CPutString("HumiChip: ");
			UART_Board_PutSHexByte(HumiChipData[0]);
			UART_Board_PutChar(' ');
			UART_Board_PutSHexByte(HumiChipData[1]);
			UART_Board_PutChar(' ');
			UART_Board_PutSHexByte(HumiChipData[2]);
			UART_Board_PutChar(' ');
			UART_Board_PutSHexByte(HumiChipData[3]);
			UART_Board_PutChar(' ');
			UART_Board_PutSHexByte(HumiChipData[4]);
			UART_Board_PutChar(' ');
			UART_Board_PutSHexByte(HumiChipData[5]);
			UART_Board_PutCRLF();*/
			if (HumiChipCheckSum())
			{
				Humidity	= HumiChipData[4];
				Temperature	= HumiChipData[1];
			}
#endif
		}
				
		if (!LcdUpdateTimer)
		{
			LcdUpdateTimer = HALF_SECOND_TIMER_RELOAD;
			LCDOuputAll();
		}
		
		RES_WDT = 0;
	}
}
