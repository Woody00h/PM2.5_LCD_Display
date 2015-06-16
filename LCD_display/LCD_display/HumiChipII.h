#ifndef _HUMICHIP_
#define _HUMICHIP_

#define READY_PIN	0x10
#define READY_PORT	PRT1DR
#define IS_READY	!(READY_PORT&READY_PIN)

#define SLAVE_ADDR	0x50	
#define CMD_RD_RES	0x40	//read result
#define CMD_WR_CFG	0xc0	//write configuration
#define CMD_WR_EE	0xe0	//write eeprom
#define CMD_RD_EE	0x60	//read eeprom
#define CMD_ER_EE	0xe2	//erase eeprom
#define CMD_POR		0x88	//power on reset

#define EE_BUSY		0x08
#define CHECKSUM_EN	0x08

#ifdef HUMI_CHIP
#define HUMI_CHIP_EXTERN
#else
#define HUMI_CHIP_EXTERN extern
#endif

HUMI_CHIP_EXTERN unsigned char CmdBuf[3];
HUMI_CHIP_EXTERN unsigned char HumiChipData[6];
HUMI_CHIP_EXTERN unsigned char HumiChipRdHnT();
HUMI_CHIP_EXTERN void HumiChipInit();
HUMI_CHIP_EXTERN unsigned char HumiChipCheckSum();
#endif