#ifndef _SI7020_
#define _SI7020_

//command table
#define MRH_HMM				0xE5	//Measure Relative Humidity, Hold Master Mode
#define MRH_NHMM			0xF5	//Measure Relative Humidity, No Hold Master Mode
#define MT_HMM				0xE3	//Measure Temperature, Hold Master Mode
#define MT_NHMM				0xF3	//Measure Temperature, No Hold Master Mode
#define RD_TEMP_PRE_RHM		0xE0	//Read Temperature Value from Previous RH Measurement
#define RESET				0xFE	//Reset
#define WR_REG1				0xE6	//Write RH/T User Register 1
#define RD_REG1				0xE7	//Read RH/T User Register 1
#define WR_HEAT_CTL_REG		0x51	//Write Heater Control Register
#define RD_HEAT_CTL_REG		0x11	//Read Heater Control Register
#define RD_ID_BYTE_1		0xFA0F	//Read Electronic ID 1st Byte
#define RD_ID_BYTE_2		0xFC09	//Read Electronic ID 2nd Byte
#define RD_FW_REV			0x84B8	//Read Firmware Revision

#define SI7020_ADDR			0x80

unsigned char Si7020SendCommand(unsigned char cmd);
void Si7020Read_RH_NHM(unsigned char * buffer);
unsigned char Si7020Read_Temp_after_RHM(unsigned char * buffer);
signed char Si7020CalcTemp(unsigned int data);
unsigned char Si7020CalcRH(unsigned int data);
#endif