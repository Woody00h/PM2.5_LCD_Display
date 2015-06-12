#include "HT1621B.h"
#include "ParticleSensor.h"
#include "include.h"
#include "Si7020.h"
#define  MY_LCD
#include "LCD.h"
#include <stdlib.h>

extern unsigned char Timer;

void DisplayPMxx(unsigned int pm)
{
	char k = 0;
	unsigned int index;
	unsigned int temp;
	
	temp = pm;
	if(temp > 999)
	{
		temp = 999;
	}
	
	index = temp/100;
	DisplayNum[0] = index;
	
	temp = temp%100;
	index = temp/10;
	DisplayNum[1] = index;
	
	index = temp%10;
	DisplayNum[2] = index;
	
	k = 0;
	while (k<2)
	{
		if (DisplayNum[k])
		{
			DisplayBuf[k] = DigitSeg[DisplayNum[k]];
			k++;
			break;
		}
		else
		{
			DisplayBuf[k] = 0;
		}
		k++;
	}
	
	for (;k<3;k++)
	{
		DisplayBuf[k] = DigitSeg[DisplayNum[k]];
	}
}

void ShowLife(unsigned char life)
{
	unsigned char temp = life;
	unsigned char index;
	if (temp > 99)
	{
		temp = 99;
	}
	
	index = temp/10;
	if(index)
	{
		DisplayBuf[3] = DigitSeg[index];
	}
	else
	{
		DisplayBuf[3] = 0;
	}
	
	index = temp%10;
	DisplayBuf[4] = DigitSeg[index];
}
void ShowHumiTemp(signed char value)
{
	signed char temp = value;
	unsigned char index;
	if (temp > 99)
	{
		temp = 99;
	}
	
	if (temp < 0)
	{
		DisplayBuf[9] = 0x20; //"-"
		temp = abs(temp);
		if (temp > 9)
		{
			temp = 9;
		}
		DisplayBuf[8] = DigitSegSwap[temp];
	}
	else 
	{
		index = temp/10;
		if(index)
		{
			DisplayBuf[9] = DigitSegSwap[index];
		}
		else
		{
			DisplayBuf[9] = 0;
		}
		
		index = temp%10;
		DisplayBuf[8] = DigitSegSwap[index];
	}
}

void LCDOuputAll(void)
{
	char k = 0;
	
	for (k=0;k<LCD_BUF_LENGTH;k++)
	{
		DisplayBuf[k] = 0;
	}
	
	//
	//show the PM2.5 or PM1.0
	//
	if (PM_Flag == PM2_5)//show the PM2.5 value
	{
		DisplayPMxx(data_pm2_5);
		DisplayBuf[0] |= BIT3; //PM2.5 segment
	}
	else //show the PM1.0 
	{
		DisplayPMxx(data_pm1_0);
		DisplayBuf[1] |= BIT3;	//PM1.0 segment
	}
	DisplayBuf[2] |= BIT3; //ug/m3 segment
	
	//
	//show the heap or carbon life
	//
	if (LifeFlag == HEAP_LIFE)
	{
		ShowLife(HeapLife);
		DisplayBuf[3] |= BIT3; //H segment
//		DisplayBuf[4] &= ~BIT3;
	}
	else 
	{
		ShowLife(CarbonLife);
		DisplayBuf[4] |= BIT3; //炭 segment
//		DisplayBuf[3] &= ~BIT3;
	}
	
	//
	//show speed level
	//
	if (SpeedLvl > 8)
	{
		SpeedLvl = 8;
	}
	DisplayBuf[5] = DigitSeg[SpeedLvl];
	
	if(!FanUpdateTimer)
	{
		FanUpdateTimer = FanUpdateTimeReload;
		FanFlag ^= 1;
	}
	if (FanFlag)
	{
		DisplayBuf[6] |= BIT0;
//		DisplayBuf[6] &= ~BIT1;
	}
	else 
	{
		DisplayBuf[6] |= BIT1;
//		DisplayBuf[6] &= ~BIT0;
	}
	
	//
	//show the temperature/humidity/timer
	//
	if (RH_T_Flag == HUMIDITY)
	{
		ShowHumiTemp(Humidity);
//		DisplayBuf[9] &= ~BIT7;
//		DisplayBuf[7] &= ~BIT4;
//		DisplayBuf[7] &= ~BIT5;
	}
	else
	{
		if (RH_T_Flag == TEMPERATURE)
		{
			ShowHumiTemp(Temperature);
//			DisplayBuf[9] &= ~BIT7;
//			DisplayBuf[7] &= ~BIT4;
			DisplayBuf[7] |= BIT5;
		}
		else //timer
		{
			ShowHumiTemp(Timer);
			DisplayBuf[9] |= BIT7;
			DisplayBuf[7] |= BIT4;
//			DisplayBuf[7] &= ~BIT5;
		}
	}
	
	//
	//show auto/manual mode
	//
	if (mode == AUTO_MODE)
	{
		DisplayBuf[7] |= BIT1;
//		DisplayBuf[7] &= ~BIT2;
	}
	else 
	{
		DisplayBuf[7] |= BIT2;
//		DisplayBuf[7] &= ~BIT1;
	}
	
	//
	//show lock status
	//
	if (LockStatus)
	{
		DisplayBuf[7] |= BIT0;
	}
//	else
//	{
//		DisplayBuf[7] &= ~BIT0;
//	}
	
	//
	//show plasma
	//
	if (Plasma)
	{
		DisplayBuf[6] |= BIT4;
		if (!PlasmaTimer)
		{
			PlasmaTimer = PLASMA_TIMER_RELOAD;
			if (PlasmaFlag == 0)
			{
				PlasmaFlag = 1;
			}
			else
			{
				if (PlasmaFlag == 1)
				{
					PlasmaFlag = 2;
				}
				else 
				{
					PlasmaFlag = 0;
				}
			}
		}
	}
	if (PlasmaFlag == 1)
	{
		DisplayBuf[6] |= BIT6;
	}
	else if (PlasmaFlag == 2)
	{
		DisplayBuf[6] |= BIT5 + BIT6;
	}

	
	//
	//show the dust/odor level
	//
	if (MyPMSUnion.MyPMFrame.PM2_5_US > 150)
	{
		DisplayBuf[11] |= BIT5 + BIT4;
		DisplayBuf[10] |= BIT0 + BIT1 + BIT2 + BIT3;
	}
	else 
	{
		if (MyPMSUnion.MyPMFrame.PM2_5_US > 100)
		{
			DisplayBuf[11] |= BIT5 + BIT4;
			DisplayBuf[10] |= BIT0 + BIT1 + BIT2;
		}
		else
		{
			if (MyPMSUnion.MyPMFrame.PM2_5_US > 75)
			{
				DisplayBuf[11] |= BIT5 + BIT4;
				DisplayBuf[10] |= BIT0 + BIT1;
			}
			else 
			{
				if (MyPMSUnion.MyPMFrame.PM2_5_US > 50)
				{
					DisplayBuf[11] |= BIT5 + BIT4;
					DisplayBuf[10] |= BIT0;
				}
				else 
				{
					if (MyPMSUnion.MyPMFrame.PM2_5_US > 25)
					DisplayBuf[11] |= BIT5 + BIT4;
					else
					DisplayBuf[11] |= BIT5;
				}
			}
		}
	}
	
	if (Odor > 4)
	{
		DisplayBuf[11] |= BIT0 + BIT1;
		DisplayBuf[10] |= BIT4 + BIT5 + BIT6 + BIT7;
	}
	else 
	{
		if (Odor > 3)
		{
			DisplayBuf[11] |= BIT0 + BIT1;
			DisplayBuf[10] |= BIT4 + BIT5 + BIT6;
		}
		else
		{
			if (Odor > 2)
			{
				DisplayBuf[11] |= BIT0 + BIT1;
				DisplayBuf[10] |= BIT4 + BIT5;
			}
			else 
			{
				if (Odor > 1)
				{
					DisplayBuf[11] |= BIT0 + BIT1;
					DisplayBuf[10] |= BIT4;
				}
				else 
				{
					if (Odor > 0)
					DisplayBuf[11] |= BIT0 + BIT1;
					else
					DisplayBuf[11] |= BIT1;
				}
			}
		}
	}
	
	DisplayBuf[5] |= BIT3;
	DisplayBuf[6] |= BIT2 + BIT3;
	DisplayBuf[7] |= BIT6 + BIT7;
	DisplayBuf[11] |= BIT2 + BIT6;
	WriteAll_1621(0,DisplayBuf,12);
}

void LCD_Init()
{
	LifeFlag	= HEAP_LIFE;
	RH_T_Flag	= TEMPERATURE;
	mode		= AUTO_MODE;
	LockStatus	= 1;
	Plasma		= 1;
	Odor		= 3;
	SpeedLvl	= 1;
	PM_Flag		= PM2_5;
	HeapLife	= 85;
	CarbonLife	= 73;
}