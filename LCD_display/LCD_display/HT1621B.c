#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include "HT1621B.h"



void delay_us(uint us)
{
	for (;us>0;us--)
	{
		asm ("NOP");
		asm ("NOP");
		asm ("NOP");
		asm ("NOP");
		asm ("NOP");
		asm ("NOP");
	}
}

void delay_ms(uchar ms)
{
	for(;ms>0;ms--)
	{
		delay_us(1000);
	}
}
void SendBit_1621(uchar data,uchar cnt) //data 的高cnt 位写入HT1621，高位在前
{
	uchar i;
	for(i =0; i <cnt; i ++)
	{
		if((data&0x80)==0) 
		{ 
			DATA_0;
		}
		else 
		{
			DATA_1;
		}
		delay_us(4);
		WR_0;
		delay_us(4);
		WR_1;
		data<<=1;
	}
}
void SendDataBit_1621(uchar data,uchar cnt) //data 的低cnt 位写入HT1621，低位在前
{
	uchar i;
	for(i =0; i <cnt; i ++)
	{
		if((data&0x01)==0) 
		{ 
			DATA_0;
		}
		else 
		{
			DATA_1;
		}
		delay_us(4);
		WR_0;
		delay_us(4);
		WR_1;
		data>>=1;
	}
}
void SendCmd(uchar command)
{
	CS_0;
	SendBit_1621(0x80,3); //写入标志码"100"
	SendBit_1621(command,9); //写入9 位数据,其中前8 位为command 命令,最后1 位任意
	CS_1;
	delay_us(4);
}
void Write_1621(uchar addr,uchar data)
{
	CS_0;
	SendBit_1621(0xa0,3); //写入标志码"101"
	SendBit_1621(addr<<2,6); //写入6 位addr
	SendDataBit_1621(data,4); //写入data 的低4 位
	CS_1;
	delay_us(4);
}
void WriteAll_1621(uchar addr,uchar *p,uchar cnt)
{
	uchar i;
	CS_0;
	SendBit_1621(0xa0,3); //写入标志码"101"
	SendBit_1621(addr<<2,6); //写入6 位addr
	for(i =0; i <cnt; i ++,p++) //连续写入数据
	{
		SendDataBit_1621(*p,8);
	}
	CS_1;
	delay_us(4);
}

void HT1621B_Init(void)
{
	SendCmd(BIAS); //设置偏压和占空比
	SendCmd(SYSEN); //打开系统振荡器
	SendCmd(LCDON); //打开LCD 偏压发生器

}