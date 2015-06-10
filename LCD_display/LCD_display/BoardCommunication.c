#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

void BoardUART(void )//board communication rx interrupt
{
	unsigned char rxdata;
	
	rxdata = UART_Board_bReadRxData();
	//echo
	while (!(UART_Board_bReadTxStatus() & UART_TX_BUFFER_EMPTY));
	UART_Board_SendData(rxdata);
}