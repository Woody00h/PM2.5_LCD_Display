#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#define  B2B_COMM
#include "BoardCommunication.h"
#include "ParticleSensor.h"

extern u8 LightLevel;
extern s8 Temperature;
extern u8 Humidity;

void BoardUART(void )//board communication rx interrupt
{
	unsigned char rxdata;
	
	rxdata = UART_Board_bReadRxData();
	//echo
/*	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData(rxdata);*/
	
	if(B2BHeadFlag == 0)
    {
        //head receive
		if(B2BDataPtr < 2)
		{
			myRxUnion.RxBuf[B2BDataPtr] = rxdata;
			B2BDataPtr ++;
		}
		else
		{
			myRxUnion.myRxFrame.Head <<= 8;
			myRxUnion.RxBuf[1] = rxdata;
			B2BDataPtr = 2;
		}
		
        //head check
		if(B2BDataPtr == 2 && myRxUnion.myRxFrame.Head == B2B_RX_FRAME_HEAD)
		{
			B2BHeadFlag = 1;	
		}
    }
    else
    {
    	myRxUnion.RxBuf[B2BDataPtr] = rxdata;
        if(B2BDataPtr >= (B2B_BUF_LENGTH-1))
        {
            B2BHeadFlag = 0;	
        	B2BDataPtr = 0;
			myRxUnion.myRxFrame.Length = 0;
			myRxUnion.myRxFrame.Head = 0;
        }
		else
		{
			B2BDataPtr++;
		}

	    if(B2BDataPtr == (myRxUnion.myRxFrame.Length + 3) && B2BDataPtr >= 4)
		{
			B2BFrameFlag = 1;
			B2BHeadFlag = 0;	
        	B2BDataPtr = 0;
		}
    }
	
}


/*
*check sum of the frame.
*return 1-pass
*return 0-fail
*/
u8 B2BFrameCheck(void)
{
	u8 checksum = 0;
	u8 i = 0;
	
	for (i = 0; i < (myRxUnion.myRxFrame.Length+2); i++)
	{
		checksum += myRxUnion.RxBuf[i];
	}
	
	myRxUnion.myRxFrame.Length = 0;
	myRxUnion.myRxFrame.Head = 0;
	
	if (checksum == myRxUnion.myRxFrame.checksum)
	{
		return 1;
	}
	else 
	{
		return 0;
	}
}

void B2BSendData()
{
	u8 i;
	u8 sum = 0;
	myTxUnion.myTxFrame.Head	=	B2B_TX_FRAME_HEAD;
	myTxUnion.myTxFrame.Length	=	6;
	myTxUnion.myTxFrame.PMdata	=	data_pm2_5;
	myTxUnion.myTxFrame.Light	=	LightLevel;
	myTxUnion.myTxFrame.Temperature	=	Temperature;
	myTxUnion.myTxFrame.Humidity	=	Humidity;
	
	for (i=0; i<9; i++)
	{
		sum += myTxUnion.TxBuf[i];
	}
	myTxUnion.myTxFrame.CheckSum	=	sum;
	
//	for (i=0; i<10; i++)
//	{
//		while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
//		UART_Board_SendData(myRxUnion.TxBuf[i]);
//	}
	UART_Board_Write(myTxUnion.TxBuf,10);
}