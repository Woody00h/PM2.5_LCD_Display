#ifndef _BOARD_COMM_
#define _BOARD_COMM_

typedef unsigned char u8;
typedef signed   char s8;
typedef unsigned int  u16;

#define B2B_BUF_LENGTH		15
#define B2B_RX_FRAME_HEAD	0x4D44
#define B2B_TX_FRAME_HEAD	0x444D
#define RTS_H				(PRT2DR |= 0x20)
#define RTS_L				(PRT2DR &= ~0x20)

typedef struct 
{
	u16 Head;
	u8 Length;
	u8 Speed;
	u8 Odor;
	u8 Mode;
	u8 Plasma;
	u8 HepaLife;
	u8 CarbonLife;
	u8 Lock;
	u8 Timer;
	u8 checksum;
}B2B_RX_Frame;

typedef union
{
	B2B_RX_Frame myRxFrame;
	u8	RxBuf[B2B_BUF_LENGTH];
}B2B_RX_Union;

typedef struct
{
	u16 Head;
	u16 Length;
	u16 PMdata;
	u8	Light;
	s8	Temperature;
	u8	Humidity;
	u8	CheckSum;
}B2B_TX_Frame;

typedef union
{
	B2B_TX_Frame myTxFrame;
	u8	TxBuf[B2B_BUF_LENGTH];
}B2B_TX_Union;

#ifdef	B2B_COMM
#define B2B_COMM_EXTERN
#else
#define B2B_COMM_EXTERN extern
#endif

B2B_COMM_EXTERN	B2B_RX_Union	myRxUnion;
B2B_COMM_EXTERN	B2B_TX_Union	myTxUnion;
B2B_COMM_EXTERN u8 				B2BHeadFlag;
B2B_COMM_EXTERN u8 				B2BHeadPointer;
B2B_COMM_EXTERN u8 				B2BDataPtr;
B2B_COMM_EXTERN u8 				B2BFrameFlag;
B2B_COMM_EXTERN u8				B2BFrameCheck(void);
B2B_COMM_EXTERN void 			B2BSendData();
#endif