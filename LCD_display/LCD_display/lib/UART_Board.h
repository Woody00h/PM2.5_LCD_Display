//*****************************************************************************
//*****************************************************************************
//  FILENAME:  UART_Board.h
//  Version: 5.3, Updated on 2013/5/19 at 10:44:49
//  Generated by PSoC Designer 5.4.2946
//
//  DESCRIPTION:  UART User Module C Language interface file.
//-----------------------------------------------------------------------------
//      Copyright (c) Cypress Semiconductor 2013. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef UART_Board_INCLUDE
#define UART_Board_INCLUDE

// include the global header file
#include <m8c.h>

#define UART_Board_RXBUF_ENABLE 0

//-------------------------------------------------
// Prototypes of the UART_Board API.
//-------------------------------------------------

#if ( UART_Board_RXBUF_ENABLE )
extern char UART_Board_aRxBuffer[];
extern BYTE UART_Board_bRxCnt;
extern BYTE UART_Board_fStatus;
#endif



// Create pragmas to support proper argument and return value passing

#pragma fastcall16  UART_Board_SetTxIntMode
#pragma fastcall16  UART_Board_EnableInt
#pragma fastcall16  UART_Board_DisableInt
#pragma fastcall16  UART_Board_Start
#pragma fastcall16  UART_Board_Stop
#pragma fastcall16  UART_Board_SendData
#pragma fastcall16  UART_Board_bReadTxStatus
#pragma fastcall16  UART_Board_bReadRxData
#pragma fastcall16  UART_Board_bReadRxStatus
#pragma fastcall16  UART_Board_PutSHexByte
#pragma fastcall16  UART_Board_PutSHexInt
#pragma fastcall16  UART_Board_CPutString
#pragma fastcall16  UART_Board_PutString
#pragma fastcall16  UART_Board_PutChar
#pragma fastcall16  UART_Board_Write
#pragma fastcall16  UART_Board_CWrite

#pragma fastcall16  UART_Board_cGetChar
#pragma fastcall16  UART_Board_cReadChar
#pragma fastcall16  UART_Board_iReadChar
#pragma fastcall16  UART_Board_IntCntl
#pragma fastcall16  UART_Board_TxIntMode
#pragma fastcall16  UART_Board_PutCRLF

#if ( UART_Board_RXBUF_ENABLE )
#pragma fastcall16  UART_Board_CmdReset
#pragma fastcall16  UART_Board_bCmdCheck
#pragma fastcall16  UART_Board_bErrCheck
#pragma fastcall16  UART_Board_bCmdLength
#pragma fastcall16  UART_Board_szGetParam
#pragma fastcall16  UART_Board_szGetRestOfParams
#endif

//**************************************************
// Prototypes of UART API.
//**************************************************
extern void  UART_Board_SetTxIntMode(BYTE bTxIntMode);
extern void  UART_Board_EnableInt(void);
extern void  UART_Board_DisableInt(void);
extern void  UART_Board_Start(BYTE bParitySetting);
extern void  UART_Board_Stop(void);
extern void  UART_Board_SendData(BYTE bTxData);
extern BYTE  UART_Board_bReadTxStatus(void);
extern BYTE  UART_Board_bReadRxData(void);
extern BYTE  UART_Board_bReadRxStatus(void);

// High level TX functions
extern void   UART_Board_CPutString(const BYTE * szRomString);
extern void   UART_Board_PutString(BYTE * szRamString);
extern void   UART_Board_PutChar(CHAR cData);
extern void   UART_Board_Write(BYTE * szRamString, BYTE bCount);
extern void   UART_Board_CWrite(const BYTE * szRomString, INT iCount);
extern void   UART_Board_PutSHexByte(BYTE bValue);
extern void   UART_Board_PutSHexInt(INT iValue);
extern void   UART_Board_PutCRLF(void);
extern void   UART_Board_TxIntMode(BYTE bMask);

// High level RX functions
extern CHAR   UART_Board_cGetChar(void);
extern CHAR   UART_Board_cReadChar(void);
extern INT    UART_Board_iReadChar(void);
extern void   UART_Board_IntCntl(BYTE bMask);

#if ( UART_Board_RXBUF_ENABLE )
extern void   UART_Board_CmdReset(void);
extern BYTE   UART_Board_bCmdCheck(void);
extern BYTE   UART_Board_bErrCheck(void);
extern BYTE   UART_Board_bCmdLength(void);
extern BYTE * UART_Board_szGetParam(void);
extern BYTE * UART_Board_szGetRestOfParams(void);
#endif

//-------------------------------------------------
// Defines for UART_Board API's.
//-------------------------------------------------



//------------------------------------
//  Parity masks
//------------------------------------
#define  UART_Board_PARITY_NONE        0x00
#define  UART_Board_PARITY_EVEN        0x02
#define  UART_Board_PARITY_ODD         0x06
//------------------------------------
//  Transmitter Status Register masks
//------------------------------------
#define  UART_Board_TX_COMPLETE        0x20
#define  UART_Board_TX_BUFFER_EMPTY    0x10

//------------------------------------
//  Receiver Status Register masks
//------------------------------------
#define  UART_Board_RX_ACTIVE          0x10
#define  UART_Board_RX_COMPLETE        0x08
#define  UART_Board_RX_REG_FULL        0x08
#define  UART_Board_RX_PARITY_ERROR    0x80
#define  UART_Board_RX_OVERRUN_ERROR   0x40
#define  UART_Board_RX_FRAMING_ERROR   0x20
#define  UART_Board_RX_ERROR           0xE0
#define  UART_Board_RX_NO_ERROR        0xE0          // This symbol is deprecated and will removed in the future

#define  UART_Board_RX_NO_DATA         0x01

#define  UART_Board_RX_BUF_ERROR          0xF0  // Mask for any Rx that may occur.
#define  UART_Board_RX_BUF_OVERRUN        0x10  // This indicates the software buffer has
                                                           // been over run.
#define  UART_Board_RX_BUF_CMDTERM        0x01  // Command terminator has been received.

// Interrupt control used with  UART_Board_IntCntl() function
#define UART_Board_ENABLE_RX_INT  0x01
#define UART_Board_ENABLE_TX_INT  0x02
#define UART_Board_DISABLE_RX_INT 0x00
#define UART_Board_DISABLE_TX_INT 0x00

// Interrupt Modes
#define UART_Board_INT_MODE_TX_REG_EMPTY 0x00
#define UART_Board_INT_MODE_TX_COMPLETE  0x01

//-------------------------------------------------
// Register Address Constants for UART_Board
//-------------------------------------------------

#pragma ioport  UART_Board_TX_CONTROL_REG:  0x03b           // Control register
BYTE            UART_Board_TX_CONTROL_REG;
#pragma ioport  UART_Board_TX_SHIFT_REG:    0x038               // TX Shift Register register
BYTE            UART_Board_TX_SHIFT_REG;
#pragma ioport  UART_Board_TX_BUFFER_REG:   0x039               // TX Buffer Register
BYTE            UART_Board_TX_BUFFER_REG;
#pragma ioport  UART_Board_TX_FUNC_REG: 0x138               // Function register
BYTE            UART_Board_TX_FUNC_REG;
#pragma ioport  UART_Board_TX_INPUT_REG:    0x139           // Input register
BYTE            UART_Board_TX_INPUT_REG;
#pragma ioport  UART_Board_TX_OUTPUT_REG:   0x13a           // Output register
BYTE            UART_Board_TX_OUTPUT_REG;
#pragma ioport  UART_Board_RX_CONTROL_REG:  0x03f           // Control register
BYTE            UART_Board_RX_CONTROL_REG;
#pragma ioport  UART_Board_RX_SHIFT_REG:    0x03c               // RX Shift Register register
BYTE            UART_Board_RX_SHIFT_REG;
#pragma ioport  UART_Board_RX_BUFFER_REG:   0x03e               // RX Buffer Register
BYTE            UART_Board_RX_BUFFER_REG;
#pragma ioport  UART_Board_RX_FUNC_REG: 0x13c               // Function register
BYTE            UART_Board_RX_FUNC_REG;
#pragma ioport  UART_Board_RX_INPUT_REG:    0x13d           // Input register
BYTE            UART_Board_RX_INPUT_REG;
#pragma ioport  UART_Board_RX_OUTPUT_REG:   0x13e           // Output register
BYTE            UART_Board_RX_OUTPUT_REG;

#pragma ioport  UART_Board_TX_INT_REG:       0x0e1         // TX Interrupt Mask Register
BYTE            UART_Board_TX_INT_REG;
#pragma ioport  UART_Board_RX_INT_REG:       0x0e1         // RX Interrupt Mask Register
BYTE            UART_Board_RX_INT_REG;

// Masks to use with UART_Board_TX_INT_REG and UART_Board_RX_INT_REG Registers
#define UART_Board_TX_INT_MASK         (0x40) // TX Interrupt register Mask
#define UART_Board_RX_INT_MASK         (0x80) // RX Interrupt register Mask


//-------------------------------------------
//       WARNING WARNING WARNING
// The following defines and function prototypes
// are for backwards compatibility only and
// should not be used for new designs.
//-------------------------------------------
#pragma fastcall16  bUART_Board_ReadTxStatus
#pragma fastcall16  bUART_Board_ReadRxData
#pragma fastcall16  bUART_Board_ReadRxStatus
extern BYTE  bUART_Board_ReadTxStatus(void);
extern BYTE  bUART_Board_ReadRxData(void);
extern BYTE  bUART_Board_ReadRxStatus(void);
//------------------------------------
//  Parity masks
//------------------------------------
#define  UART_PARITY_NONE        0x00
#define  UART_PARITY_EVEN        0x02
#define  UART_PARITY_ODD         0x06

//------------------------------------
//  Transmitter Status Register masks
//------------------------------------
#define  UART_TX_COMPLETE        0x20
#define  UART_TX_BUFFER_EMPTY    0x10

//------------------------------------
//  Receiver Status Register masks
//------------------------------------
#define  UART_RX_ACTIVE          0x10
#define  UART_RX_COMPLETE        0x08
#define  UART_RX_PARITY_ERROR    0x80
#define  UART_RX_OVERRUN_ERROR   0x40
#define  UART_RX_FRAMING_ERROR   0x20
#define  UART_RX_NO_ERROR        0xE0

#endif
//-------------------------------------------
//             END WARNING
//-------------------------------------------
// end of file UART_Board.h
