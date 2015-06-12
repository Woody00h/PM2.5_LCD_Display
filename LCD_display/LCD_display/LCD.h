#ifndef _LCD_
#define _LCD_


#define LCD_BUF_LENGTH 12

#ifdef MY_LCD

#define LCD_EXTERN
const unsigned char DigitSeg[]    ={0xf5,0x60,0xb6,0xf2,0x63,0xd3,0xd7,0x70,0xf7,0xf3};
const unsigned char DigitSegSwap[]={0x5f,0x06,0x6b,0x2f,0x36,0x3d,0x7d,0x07,0x7f,0x3f};

#else 
#define LCD_EXTERN extern 
#endif
	
	
LCD_EXTERN unsigned char DisplayBuf[LCD_BUF_LENGTH];
LCD_EXTERN unsigned char DisplayNum[3];
LCD_EXTERN unsigned char LifeFlag;
LCD_EXTERN unsigned char RH_T_Flag;
LCD_EXTERN unsigned char mode;
LCD_EXTERN unsigned char LockStatus;
LCD_EXTERN unsigned char Plasma;
LCD_EXTERN unsigned char PlasmaFlag;
LCD_EXTERN unsigned char Odor;
LCD_EXTERN unsigned char FanFlag;
LCD_EXTERN unsigned char SpeedLvl;
LCD_EXTERN unsigned char PM_Flag;
LCD_EXTERN unsigned char HeapLife;
LCD_EXTERN unsigned char CarbonLife;
LCD_EXTERN unsigned char FanUpdateTimer;
LCD_EXTERN unsigned char PlasmaTimer;
LCD_EXTERN unsigned char FanUpdateTimeReload;
LCD_EXTERN unsigned char Timer;

LCD_EXTERN void LCD_Init();
LCD_EXTERN void DisplayPMxx(unsigned int pm);
LCD_EXTERN void ShowLife(unsigned char life);
LCD_EXTERN void ShowHumiTemp(signed char value);
LCD_EXTERN void LCDOuputAll(void);
#endif