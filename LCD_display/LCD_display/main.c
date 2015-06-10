//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include "HT1621B.h"
#include "ParticleSensor.h"
#include "software_IIC.h"
#include "Si7020.h"
#include "include.h"

#define ONE_SECOND_TIMER_RELOAD 8

unsigned char RecBuf[5];
unsigned int LightADCValue;										

unsigned char FanUpdateTimer	= ONE_SECOND_TIMER_RELOAD;
unsigned char one_sec_timer		= ONE_SECOND_TIMER_RELOAD;
unsigned char rh_sample_timer	= ONE_SECOND_TIMER_RELOAD;
unsigned char PlasmaTimer		= PLASMA_TIMER_RELOAD;
unsigned char LcdUpdateTimer	= 4;
unsigned char IICTimeOutTimer;

unsigned char LifeFlag	 = HEAP_LIFE;
unsigned char RH_T_Flag  = TEMPERATURE;
unsigned char mode = AUTO_MODE;
unsigned char LockStatus = 1;
unsigned char Plasma = 1;
unsigned char PlasmaFlag;
unsigned char Odor = 2;
unsigned char FanFlag;
unsigned char SpeedLvl = 1;
unsigned char PM_Flag = PM2_5;
unsigned char HeapLife = 78;
unsigned char CarbonLife = 56;
unsigned char FanUpdateTimeReload = ONE_SECOND_TIMER_RELOAD;
unsigned char Humidity;
signed   char Temperature;
unsigned char Timer = 3;
unsigned char RHSampleStep = 0;
extern void LCDOuputAll(void);

void Timer16ISR(void)
{
	if (one_sec_timer)		one_sec_timer--;
	if (rh_sample_timer)	rh_sample_timer--;
	if (FanUpdateTimer)		FanUpdateTimer--;
	if (PlasmaTimer) 		PlasmaTimer--;
	if (LcdUpdateTimer)		LcdUpdateTimer--;
	if (IICTimeOutTimer)	IICTimeOutTimer--;
}

void main(void)
{
	unsigned char k;
	unsigned char ret;
	unsigned int *p;
	M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	
	Init_IIC();
	
	delay_us(200);	//wait for the LCD driver power on
	HT1621B_Init();
	
	//back light 
	PWM8_BL_WritePeriod(255);    // Set period to eight clocks
	PWM8_BL_WritePulseWidth(5);   // Set pulse width to generate a 50% duty 
	PWM8_BL_Start();
	
	//WriteAll_1621(0,a,16); //在起始地址为0 处连续写入16个字节数据
	
	UART_Board_Start(UART_PARITY_NONE);
	UART_Board_EnableInt();
	
	UART_Sensor_Start(UART_PARITY_NONE);
	UART_Sensor_EnableInt();
	
	Timer16_WritePeriod(9600);
	Timer16_WriteCompareValue(9000);
	Timer16_EnableInt();
	Timer16_Start();

//	UART_Board_CPutString("Woody is a genius!");
	
	PMSFrameFlag = 0;
	HeadFlag = 0;	
  	DataPtr = 0;
	
	SAR10_SetClk(SAR10_SYSCLK_16); // Set clock source - system clock/64
	SAR10_SetRunMode(SAR10_ONESHOT); // Set running method - one-shot
	SAR10_SetADCChannel(SAR10_CHS_AMUX0); // Set Port_0_5 as input
	SAR10_DisableInt(); // Enable SAR10 interrupt
	SAR10_Start(); // Start conversion


	while(1)
	{
		if (PMSFrameFlag)
		{
			PMSFrameFlag = 0;
			if (FrameCheck())
			{
				UART_Board_CPutString("PM2.5:");
				UART_Board_PutSHexInt(MyPMSUnion.MyPMFrame.PM2_5_US);
				UART_Board_PutCRLF();
				
			}
			else
			{
				
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
//			UART_Board_PutSHexInt(LightADCValue);
//			UART_Board_PutCRLF();
		}
		
		
		if(!rh_sample_timer)
		{
			rh_sample_timer = ONE_SECOND_TIMER_RELOAD;
			if (!RHSampleStep)
			{
				ret = Si7020SendCommand(MRH_NHMM); // send the command(Measure RH, No Hold Master Mode)
				if(ret)
				{
//					UART_Board_CPutString("Send commad success");
//					UART_Board_PutCRLF();
					RHSampleStep = 1;
				}
				else
				{			
//					UART_Board_CPutString("Send commad fail");
//					UART_Board_PutCRLF();					
				}
			}
			else 
			{				
					Si7020Read_RH_NHM(RecBuf);
		//			UART_Board_CPutString("RH: ");
		//			UART_Board_PutSHexInt(*(unsigned int *)RecBuf);
		//			UART_Board_PutCRLF();
					Humidity = Si7020CalcRH(*(unsigned int *)RecBuf);
		//			UART_Board_PutSHexByte(Humidity);
		//			UART_Board_PutCRLF();
					
					Si7020Read_Temp_after_RHM(RecBuf);
//					UART_Board_CPutString("Temperature: ");
		//			UART_Board_PutSHexInt(*(unsigned int *)RecBuf);
		//			UART_Board_PutCRLF();
					Temperature = Si7020CalcTemp(*(unsigned int *)RecBuf);
//					UART_Board_PutSHexByte(Temperature);
//					UART_Board_PutCRLF();
					RHSampleStep = 0;
			}
		}
		
next:		
		if (!LcdUpdateTimer)
		{
			LcdUpdateTimer = 4;
			LCDOuputAll();
		}
	}
}