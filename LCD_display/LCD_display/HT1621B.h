#ifndef _HT1621B_
#define _HT1621B_

#define uchar 	unsigned char
#define uint  	unsigned int
#define BIAS 	0x29	//1/3bias 4commons
#define SYSEN 	0x01
#define LCDOFF 	0x02
#define LCDON 	0x03
#define CS_1	(PRT0DR |= 0x80)
#define CS_0	(PRT0DR &= ~0x80)
#define WR_1	(PRT0DR |= 0x08)
#define WR_0	(PRT0DR &= ~0x08)
#define RD_1	(PRT0DR |= 0x20)
#define RD_0	(PRT0DR &= ~0x20)
#define DATA_1	(PRT0DR |= 0x02)
#define DATA_0	(PRT0DR &= ~0x02)
	
void SendBit_1621(uchar data,uchar cnt);
void SendDataBit_1621(uchar data,uchar cnt);
void SendCmd(uchar command);
void Write_1621(uchar addr,uchar data);
void WriteAll_1621(uchar addr,uchar *p,uchar cnt);
void HT1621B_Init(void);
void delay_us(uint us);
void delay_ms(uchar ms);
#endif