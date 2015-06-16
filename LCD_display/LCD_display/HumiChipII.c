#define HUMI_CHIP
#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include "HumiChipII.h"
#include "Software_IIC.h"

extern void delay_us(uint us);

unsigned char HumiChipRdHnT()
{
	uchar ret;
	CmdBuf[0] = CMD_RD_RES;
	CmdBuf[1] = 0;
	if(IS_READY)
	{
		ret = ISendBytes(SLAVE_ADDR,CmdBuf,2);
		if(!ret)
			return 0;
		
		ret = IRcvBytes(SLAVE_ADDR,HumiChipData,6);
		return ret;
	}
	else
	{
		return 0;
	}
}

void HumiChipInit()
{
	CmdBuf[0] = CMD_WR_CFG;
	CmdBuf[1] = 0x1c;
	CmdBuf[2] = 0xc4;
	ISendBytes(SLAVE_ADDR,CmdBuf,3); //enable eeprom
	delay_us(10);
	
	CmdBuf[0] = CMD_RD_EE;
	CmdBuf[1] = 0x7F;
	ISendBytes(SLAVE_ADDR,CmdBuf,2); //send read address
	delay_us(1);
	IRcvByte(SLAVE_ADDR,HumiChipData);//read eeprom
	
	if (!(HumiChipData[0] & CHECKSUM_EN))//if checksum not enable
	{
		delay_us(1);
		CmdBuf[0] = CMD_ER_EE;
		CmdBuf[1] = 0x7f;
		CmdBuf[2] = 0x00;
		ISendBytes(SLAVE_ADDR,CmdBuf,3); //erase eeprom
		
		delay_us(7000); //delay 7ms
		
		CmdBuf[0] = CMD_WR_EE;
		CmdBuf[1] = 0x7f;
		CmdBuf[2] = HumiChipData[0] | CHECKSUM_EN;
		ISendBytes(SLAVE_ADDR,CmdBuf,3); //write eeprom
		
		delay_us(7000); //delay 7ms
	}
	
	CmdBuf[0] = CMD_WR_CFG;
	CmdBuf[1] = 0x1c;
	CmdBuf[2] = 0x44;
	ISendBytes(SLAVE_ADDR,CmdBuf,3); //disable eeprom
	
	delay_us(10);
	
	CmdBuf[0] = CMD_POR;
	ISendBytes(SLAVE_ADDR,CmdBuf,1);//power on reset
}

unsigned char HumiChipCheckSum()
{
	unsigned char temp;
	temp = HumiChipData[0] + HumiChipData[1];
	if( temp != HumiChipData[2])
		return 0;
	
	temp = HumiChipData[3] + HumiChipData[4];
	if( temp != HumiChipData[5])
		return 0;
	
	return 1;
}