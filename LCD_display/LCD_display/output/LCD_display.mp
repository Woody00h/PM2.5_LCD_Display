HI-TECH Software C Compiler 

Linker command line:

\
  --edf=C:\Program Files (x86)\HI-TECH Software\HCPSOC\PRO\9.61\dat\en_msgs.txt \
  -cs -h+output\LCD_display.sym -z -QCY8C22345 -ol.obj \
  -Moutput/LCD_display.mp -E1 -ACODE=00h-03h,065h-03FFFh \
  -ABANKROM=00h-03h,065h-0FFh,0100h-01FFhx63 -AROM=00h-03h,065h-03FFFh \
  -ARAM=00h-0F7h,0100h-01FFhx3 -pvectors=0x0 -pstrings=ROM -pcdata=ROM \
  -pPD_startup=CODE,powerup,init,end_init -pintrtext=CODE -pmaintext=CODE \
  -ptext=CODE -pUserModules=CODE \
  -pbss0=00h,rbit0,ramdata0,nvram0,nvbit0,fnauto -promdata0=BANKROM \
  -pbss1=0100h,rbit1,ramdata1,nvram1,nvbit1 -promdata1=BANKROM \
  -pbss2=0200h,rbit2,ramdata2,nvram2,nvbit2 -promdata2=BANKROM \
  -pbss3=0300h,rbit3,ramdata3,nvram3,nvbit3 -promdata3=BANKROM \
  -pstackps=0300h/0300h output\startup.obj output\LCD_display.obj \
  ./obj/boot.obj lib/libpsoc.lib \
  D:/Cypress/PSOCDE~1/5.4/Common/CY110F~1/tools/lib/CY8C22045/cms.lib 

Object code version is 3.10

Machine type is CY8C22345

Call graph: (short form)

*_main size 0,2 offset 0
     _Init_IIC size 0,0 offset 2
     _delay_us size 0,2 offset 13
     _HT1621B_Init size 0,0 offset 2
         _SendCmd size 0,1 offset 2
             _SendBit_1621 size 0,3 offset 7
                 _delay_us size 0,2 offset 13
             _delay_us size 0,2 offset 13
     _PWM8_BL_WritePeriod size 0,0 offset 2
     _PWM8_BL_WritePulseWidth size 0,0 offset 2
     _PWM8_BL_Start size 0,0 offset 2
     _UART_Board_Start size 0,0 offset 2
     _UART_Sensor_Start size 0,0 offset 2
     _UART_Sensor_IntCntl size 0,0 offset 2
     _Timer16_WritePeriod size 0,0 offset 2
     _Timer16_WriteCompareValue size 0,0 offset 2
     _Timer16_EnableInt size 0,0 offset 2
     _Timer16_Start size 0,0 offset 2
     _UART_Board_CPutString size 0,0 offset 2
     _SAR10_SetClk size 0,0 offset 2
     _SAR10_SetRunMode size 0,0 offset 2
     _SAR10_SetADCChannel size 0,0 offset 2
     _SAR10_DisableInt size 0,0 offset 2
     _SAR10_Start size 0,0 offset 2
     _Si7020Init size 0,2 offset 2
     _LCD_Init size 0,0 offset 2
     _FrameCheck size 0,6 offset 2
     _UART_Board_PutSHexInt size 0,0 offset 2
     _UART_Board_PutCRLF size 0,0 offset 2
     _SAR10_Trigger size 0,0 offset 2
     _SAR10_fIsDataAvailable size 0,0 offset 2
     _SAR10_iGetData size 0,0 offset 2
     _Si7020SendCommand size 0,1 offset 4
         _ISendByte size 0,2 offset 5
             _Start_I2c size 0,0 offset 10
                 _delay_us size 0,2 offset 13
             _SendByte size 0,3 offset 10
                 _delay_us size 0,2 offset 13
                 _ChangeToRead size 0,0 offset 13
                     _delay_us size 0,2 offset 13
                 _ChangeToOD size 0,0 offset 13
                     _delay_us size 0,2 offset 13
             _Stop_I2c size 0,0 offset 10
                 _delay_us size 0,2 offset 13
     _Si7020Read_RH_NHM size 0,2 offset 2
         _IRcvBytes size 1,5 offset 4
             _Start_I2c size 0,0 offset 10
             _SendByte size 0,3 offset 10
             _Stop_I2c size 0,0 offset 10
             _RcvByte size 0,2 offset 10
                 _ChangeToRead size 0,0 offset 13
                 _delay_us size 0,2 offset 13
                 _ChangeToOD size 0,0 offset 13
             _Ack_I2c size 0,1 offset 10
                 _delay_us size 0,2 offset 13
     _CRC8Check size 0,0 offset 2
         _LeftRotate size 0,2 offset 2
     _Si7020CalcRH size 0,7 offset 2
         ___lmul size 8,4 offset 13
     _UART_Board_PutSHexByte size 0,0 offset 2
     _Si7020Read_Temp_after_RHM size 0,2 offset 2
         _Si7020SendCommand size 0,1 offset 4
         _IRcvBytes size 1,5 offset 4
*    _Si7020CalcTemp size 0,11 offset 2
*        ___lmul size 8,4 offset 13
         ___wmul size 2,4 offset 13
     _LCDOuputAll size 0,1 offset 2
         _DisplayPMxx size 0,7 offset 3
             ___lwdiv size 2,5 offset 10
             ___lwmod size 2,3 offset 10
         _ShowLife size 0,3 offset 3
             ___lbdiv size 0,4 offset 6
             ___lbmod size 0,4 offset 6
         _ShowHumiTemp size 0,5 offset 3
             _abs size 0,2 offset 8
             ___awdiv size 2,6 offset 8
             ___awmod size 2,4 offset 8
         _WriteAll_1621 size 1,3 offset 3
             _SendBit_1621 size 0,3 offset 7
             _SendDataBit_1621 size 0,3 offset 7
                 _delay_us size 0,2 offset 13
             _delay_us size 0,2 offset 13

Estimated maximum call depth: 5

*intlevel2 size 0,0 offset 25
     _BoardUART size 0,1 offset 25
         _UART_Board_bReadRxData size 0,0 offset 26
         _UART_Board_bReadTxStatus size 0,0 offset 26
         _UART_Board_SendData size 0,0 offset 26
     _Timer16ISR size 0,0 offset 25
*    _SensorUART size 0,3 offset 25
*        _UART_Sensor_bReadRxData size 0,0 offset 28

Estimated maximum call depth: 2


                Name          Link     Load   Length Selector Space Scale
output\startup.obj
                vectors          0        0        3       0     0
                init          3F95     3F95       30    3F3B     0
                SSCParmBl       F8       F8        8       0     1
                TOP              4        4       61       0     0
output\LCD_display.obj
                ramdata0        5A       5A        7       0     1
                romdata0        65       65        7      65     0
                maintext      3C51     3C51      1AF    3C51     0
                text          308C     308C      BC5    308C     0
                bss0             0        0       5A       0     1
                cdata         3E00     3E00       14      3E     0
                strings       3F00     3F00       3B      3F     0
./obj/boot.obj  PD_startu     3F3B     3F3B       5A    3F3B     0
                TOP              4        4       61       0     0

lib/libpsoc.lib
lib/obj/psocconfig.obj
                psoc_conf     2AEC     2AEC       64    2AEC     0
lib/obj/psocconfigtbl.obj
                lit           2B50     2B50      132    2B50     0
                psoc_conf     3E14     3E14       A5      3E     0
lib/obj/pwm8_bl.obj
                UserModul     2C82     2C82       48    2C82     0
lib/obj/pwm8_blint.obj
                UserModul     2CCA     2CCA        1    2C82     0
lib/obj/sar10.obj
                UserModul     2CCB     2CCB       BE    2C82     0
lib/obj/sar10int.obj
                UserModul     2D89     2D89        1    2C82     0
lib/obj/timer16.obj
                UserModul     2D8A     2D8A       62    2C82     0
lib/obj/uart_board.obj
                UserModul     2DEC     2DEC      14E    2C82     0
lib/obj/uart_boardint.obj
                UserModul     2F3A     2F3A        2    2C82     0
lib/obj/uart_sensor.obj
                UserModul     2F3C     2F3C      14E    2C82     0
lib/obj/uart_sensorint.obj
                UserModul     308A     308A        2    2C82     0

D:/Cypress/PSOCDE~1/5.4/Common/CY110F~1/tools/lib/CY8C22045/cms.lib

COMMON          fnauto          61       61       1C       0     1

TOTAL           Name          Link     Load   Length  Space
        CLASS   CODE           
                vectors          0        0        3     0
                maintext      3C51     3C51      1AF     0
                text          308C     308C      BC5     0
                PD_startu     3F3B     3F3B       5A     0
                init          3F95     3F95       30     0

        CLASS   BANKROM        
                romdata0        65       65        7     0

        CLASS   ROM            
                cdata         3E00     3E00       14     0
                strings       3F00     3F00       3B     0
                UserModul     2C82     2C82      40A     0
                TOP              4        4       61     0
                psoc_conf     2AEC     2AEC       64     0
                lit           2B50     2B50      132     0
                psoc_conf     3E14     3E14       A5     0

        CLASS   RAM            
                ramdata0        5A       5A        7     1
                fnauto          61       61       1C     1
                SSCParmBl       F8       F8        8     1
                bss0             0        0       5A     1



SEGMENTS        Name           Load    Length   Top     Selector    Space Class

                bss0            000000  00007D  00007D         0       1  RAM     
                vectors         000000  000003  000003         0       0  CODE    
                romdata0        000065  000007  00006C        65       0  BANKROM 
                psoc_config     002AEC  000064  002B50      2AEC       0  ROM     
                lit             002B50  000132  002C82      2B50       0  ROM     
                UserModules     002C82  00040A  00308C      2C82       0  CODE    
                text            00308C  000BC5  003C51      308C       0  CODE    
                maintext        003C51  0001AF  003E00      3C51       0  CODE    
                cdata           003E00  0000B9  003EB9        3E       0  ROM     
                strings         003F00  00003B  003F3B        3F       0  ROM     
                PD_startup      003F3B  00008A  003FC5      3F3B       0  CODE    


UNUSED ADDRESS RANGES

        BANKROM          0003-0003
                         006C-2AEB
                         3EB9-3EFF
                         3FC5-3FFF
        CODE             0003-0003
                         006C-2AEB
                         3EB9-3EFF
                         3FC5-3FFF
        RAM              007D-00F7
                         0100-03FF
        ROM              0003-0003
                         006C-2AEB
                         3EB9-3EFF
                         3FC5-3FFF

                                  Symbol Table

??_Ack_I2c                         fnauto          006B
??_BoardUART                       fnauto          007A
??_DisplayPMxx                     fnauto          0064
??_FrameCheck                      fnauto          0063
??_IRcvBytes                       fnauto          0066
??_ISendByte                       fnauto          0066
??_LCDOuputAll                     fnauto          0063
??_LeftRotate                      fnauto          0063
??_RcvByte                         fnauto          006B
??_SendBit_1621                    fnauto          0068
??_SendByte                        fnauto          006B
??_SendCmd                         fnauto          0063
??_SendDataBit_1621                fnauto          0068
??_SensorUART                      fnauto          007A
??_ShowHumiTemp                    fnauto          0064
??_ShowLife                        fnauto          0064
??_Si7020CalcRH                    fnauto          0063
??_Si7020CalcTemp                  fnauto          0063
??_Si7020Init                      fnauto          0063
??_Si7020Read_RH_NHM               fnauto          0063
??_Si7020Read_Temp_after_RHM       fnauto          0063
??_Si7020SendCommand               fnauto          0065
??_WriteAll_1621                   fnauto          0065
??___awdiv                         fnauto          006B
??___awmod                         fnauto          006B
??___lbdiv                         fnauto          0067
??___lbmod                         fnauto          0067
??___lmul                          fnauto          0076
??___lwdiv                         fnauto          006D
??___lwmod                         fnauto          006D
??___wmul                          fnauto          0070
??_abs                             fnauto          0069
??_delay_us                        fnauto          006E
??_main                            fnauto          0061
?_IRcvBytes                        fnauto          0065
?_WriteAll_1621                    fnauto          0064
?___awdiv                          fnauto          0069
?___awmod                          fnauto          0069
?___lmul                           fnauto          006E
?___lwdiv                          fnauto          006B
?___lwmod                          fnauto          006B
?___wmul                           fnauto          006E
Ack_I2c@a                          fnauto          006B
BoardUART@rxdata                   fnauto          007A
DisplayPMxx@index                  fnauto          0068
DisplayPMxx@k                      fnauto          006A
DisplayPMxx@pm                     fnauto          0064
DisplayPMxx@temp                   fnauto          0066
FrameCheck@checksum                fnauto          0063
FrameCheck@i                       fnauto          0065
IRcvBytes@i                        fnauto          0068
IRcvBytes@no                       fnauto          0065
IRcvBytes@s                        fnauto          0066
IRcvBytes@sla                      fnauto          0067
ISendByte@c                        fnauto          0066
ISendByte@sla                      fnauto          0067
LCDOuputAll@k                      fnauto          0063
LeftRotate@k                       fnauto          0063
LoadConfigInit                     psoc_config     2AEC
LoadConfigTBL_led_display_Bank0    lit             2B50
LoadConfigTBL_led_display_Bank1    lit             2BE7
LoadConfigTBL_led_display_Ordered  psoc_config     3E14
LoadConfig_led_display             psoc_config     2AF3
NO_SHADOW                          InterruptRAM    007D
PWM8_BL_DisableInt                 UserModules     2C86
PWM8_BL_EnableInt                  UserModules     2C82
PWM8_BL_Start                      UserModules     2C8A
PWM8_BL_Stop                       UserModules     2C8E
PWM8_BL_WritePeriod                UserModules     2C92
PWM8_BL_WritePulseWidth            UserModules     2C95
PWM8_BL_bReadCounter               UserModules     2C9B
PWM8_BL_bReadPulseWidth            UserModules     2C98
RcvByte@BitCnt                     fnauto          006C
RcvByte@retc                       fnauto          006B
SAR10_DisableInt                   UserModules     2CCF
SAR10_EnableAutoTrigger            UserModules     2D41
SAR10_EnableInt                    UserModules     2CCB
SAR10_SetADCChannel                UserModules     2D11
SAR10_SetClk                       UserModules     2D59
SAR10_SetRunMode                   UserModules     2D71
SAR10_SetTriggerSrc                UserModules     2D29
SAR10_Start                        UserModules     2CD3
SAR10_Stop                         UserModules     2CDB
SAR10_Trigger                      UserModules     2CE3
SAR10_bGetData                     UserModules     2D0E
SAR10_fIsDataAvailable             UserModules     2CEB
SAR10_iGetData                     UserModules     2CF4
SendBit_1621@cnt                   fnauto          0068
SendBit_1621@data                  fnauto          0069
SendBit_1621@i                     fnauto          006A
SendByte@BitCnt                    fnauto          006C
SendByte@c                         fnauto          006B
SendCmd@command                    fnauto          0063
SendDataBit_1621@cnt               fnauto          0068
SendDataBit_1621@data              fnauto          0069
SendDataBit_1621@i                 fnauto          006A
SensorUART@rxdata                  fnauto          007A
ShowHumiTemp@index                 fnauto          0066
ShowHumiTemp@temp                  fnauto          0065
ShowHumiTemp@value                 fnauto          0064
ShowLife@index                     fnauto          0065
ShowLife@life                      fnauto          0064
ShowLife@temp                      fnauto          0066
Si7020CalcRH@data                  fnauto          0063
Si7020CalcRH@result                fnauto          0069
Si7020CalcRH@temp                  fnauto          0065
Si7020CalcTemp@data                fnauto          0063
Si7020CalcTemp@result              fnauto          0069
Si7020CalcTemp@temp                fnauto          0065
Si7020Init@my_data                 fnauto          0063
Si7020Read_RH_NHM@buffer           fnauto          0063
Si7020Read_RH_NHM@ret              fnauto          0064
Si7020Read_Temp_after_RHM@buffer   fnauto          0063
Si7020Read_Temp_after_RHM@ret      fnauto          0064
Si7020SendCommand@cmd              fnauto          0065
Timer16_DisableInt                 UserModules     2D8E
Timer16_EnableInt                  UserModules     2D8A
Timer16_Start                      UserModules     2D92
Timer16_Stop                       UserModules     2D96
Timer16_WriteCompareValue          UserModules     2DA0
Timer16_WritePeriod                UserModules     2D9A
Timer16_wReadCompareValue          UserModules     2DA6
Timer16_wReadTimer                 UserModules     2DE4
Timer16_wReadTimerSaveCV           UserModules     2DAC
UART_Board_CPutString              UserModules     2F1F
UART_Board_CWrite                  UserModules     2EF1
UART_Board_DisableInt              UserModules     2DF3
UART_Board_EnableInt               UserModules     2DEC
UART_Board_IntCntl                 UserModules     2E39
UART_Board_PutCRLF                 UserModules     2F31
UART_Board_PutChar                 UserModules     2E7E
UART_Board_PutSHexByte             UserModules     2E64
UART_Board_PutSHexInt              UserModules     2E77
UART_Board_PutString               UserModules     2EBB
UART_Board_SendData                UserModules     2E1A
UART_Board_SetTxIntMode            UserModules     2DFA
UART_Board_Start                   UserModules     2E0C
UART_Board_Stop                    UserModules     2E13
UART_Board_TxIntMode               UserModules     2E26
UART_Board_Write                   UserModules     2ECB
UART_Board_bReadRxData             UserModules     2E20
UART_Board_bReadRxStatus           UserModules     2E23
UART_Board_bReadTxStatus           UserModules     2E1D
UART_Board_cGetChar                UserModules     2E86
UART_Board_cReadChar               UserModules     2E8E
UART_Board_iReadChar               UserModules     2EA5
UART_Sensor_CPutString             UserModules     306F
UART_Sensor_CWrite                 UserModules     3041
UART_Sensor_DisableInt             UserModules     2F43
UART_Sensor_EnableInt              UserModules     2F3C
UART_Sensor_IntCntl                UserModules     2F89
UART_Sensor_PutCRLF                UserModules     3081
UART_Sensor_PutChar                UserModules     2FCE
UART_Sensor_PutSHexByte            UserModules     2FB4
UART_Sensor_PutSHexInt             UserModules     2FC7
UART_Sensor_PutString              UserModules     300B
UART_Sensor_SendData               UserModules     2F6A
UART_Sensor_SetTxIntMode           UserModules     2F4A
UART_Sensor_Start                  UserModules     2F5C
UART_Sensor_Stop                   UserModules     2F63
UART_Sensor_TxIntMode              UserModules     2F76
UART_Sensor_Write                  UserModules     301B
UART_Sensor_bReadRxData            UserModules     2F70
UART_Sensor_bReadRxStatus          UserModules     2F73
UART_Sensor_bReadTxStatus          UserModules     2F6D
UART_Sensor_cGetChar               UserModules     2FD6
UART_Sensor_cReadChar              UserModules     2FDE
UART_Sensor_iReadChar              UserModules     2FF5
WriteAll_1621@addr                 fnauto          0066
WriteAll_1621@cnt                  fnauto          0064
WriteAll_1621@i                    fnauto          0067
WriteAll_1621@p                    fnauto          0065
_Ack_I2c                           text            3998
_BoardUART                         text            3B8A
_CRC8Check                         text            3121
_CarbonLife                        bss0            0031
_ChangeToOD                        text            3B5D
_ChangeToRead                      text            3B4C
_DataPtr                           bss0            0032
_DigitSeg                          cdata           3E00
_DigitSegSwap                      cdata           3E0A
_DisplayBuf                        bss0            0049
_DisplayNum                        bss0            0028
_DisplayPMxx                       text            355D
_FanFlag                           bss0            0033
_FanUpdateTimeReload               bss0            0034
_FanUpdateTimer                    ramdata0        005A
_FrameCheck                        text            308C
_HT1621B_Init                      text            3467
_HeadFlag                          bss0            0035
_HeapLife                          bss0            0036
_Humidity                          bss0            0037
_IICTimeOutTimer                   bss0            0038
_IRcvBytes                         text            3716
_ISendByte                         text            3A56
_Init_IIC                          text            3456
_LCDOuputAll                       text            32A3
_LCD_Init                          text            30D9
_LcdUpdateTimer                    ramdata0        005B
_LeftRotate                        text            34BD
_LeftRotate$3386                   fnauto          0064
_LifeFlag                          bss0            0039
_LoadConfigInit                    psoc_config     2AEC
_LoadConfig_led_display            psoc_config     2AF3
_LockStatus                        bss0            003A
_MyPMSUnion                        bss0            0000
_NO_SHADOW                         InterruptRAM    007D
_Odor                              bss0            003B
_PMSFrameFlag                      bss0            003C
_PM_Flag                           bss0            003D
_PWM8_BL_DisableInt                UserModules     2C86
_PWM8_BL_EnableInt                 UserModules     2C82
_PWM8_BL_ISR                       UserModules     2CCA
_PWM8_BL_Start                     UserModules     2C8A
_PWM8_BL_Stop                      UserModules     2C8E
_PWM8_BL_WritePeriod               UserModules     2C92
_PWM8_BL_WritePulseWidth           UserModules     2C95
_PWM8_BL_bReadCounter              UserModules     2C9B
_PWM8_BL_bReadPulseWidth           UserModules     2C98
_Plasma                            bss0            003E
_PlasmaFlag                        bss0            003F
_PlasmaTimer                       ramdata0        005C
_RHSampleStep                      bss0            0040
_RH_T_Flag                         bss0            0041
_RcvByte                           text            39C4
_RecBuf                            bss0            0055
_RecTimeoutTimer                   bss0            0042
_SAR10_DisableInt                  UserModules     2CCF
_SAR10_EnableAutoTrigger           UserModules     2D41
_SAR10_EnableInt                   UserModules     2CCB
_SAR10_ISR                         UserModules     2D89
_SAR10_SetADCChannel               UserModules     2D11
_SAR10_SetClk                      UserModules     2D59
_SAR10_SetRunMode                  UserModules     2D71
_SAR10_SetTriggerSrc               UserModules     2D29
_SAR10_Start                       UserModules     2CD3
_SAR10_Stop                        UserModules     2CDB
_SAR10_Trigger                     UserModules     2CE3
_SAR10_bGetData                    UserModules     2D0E
_SAR10_fIsDataAvailable            UserModules     2CEB
_SAR10_iGetData                    UserModules     2CF4
_SendBit_1621                      text            3786
_SendByte                          text            3AD2
_SendCmd                           text            36EC
_SendDataBit_1621                  text            382D
_SensorUART                        text            3BD3
_ShowHumiTemp                      text            3614
_ShowLife                          text            36AC
_Si7020CalcRH                      text            314B
_Si7020CalcTemp                    text            31FF
_Si7020Data                        bss0            002B
_Si7020Init                        text            30F8
_Si7020Read_RH_NHM                 text            3105
_Si7020Read_Temp_after_RHM         text            31DE
_Si7020SendCommand                 text            370D
_SpeedLvl                          bss0            0043
_Start_I2c                         text            3AAD
_Stop_I2c                          text            3A8B
_Temperature                       bss0            0044
_Timer                             bss0            0045
_Timer16ISR                        text            3BA3
_Timer16_DisableInt                UserModules     2D8E
_Timer16_EnableInt                 UserModules     2D8A
_Timer16_Start                     UserModules     2D92
_Timer16_Stop                      UserModules     2D96
_Timer16_WriteCompareValue         UserModules     2DA0
_Timer16_WritePeriod               UserModules     2D9A
_Timer16_wReadCompareValue         UserModules     2DA6
_Timer16_wReadTimer                UserModules     2DE4
_Timer16_wReadTimerSaveCV          UserModules     2DAC
_UART_Board_CPutString             UserModules     2F1F
_UART_Board_CWrite                 UserModules     2EF1
_UART_Board_DisableInt             UserModules     2DF3
_UART_Board_EnableInt              UserModules     2DEC
_UART_Board_IntCntl                UserModules     2E39
_UART_Board_PutCRLF                UserModules     2F31
_UART_Board_PutChar                UserModules     2E7E
_UART_Board_PutSHexByte            UserModules     2E64
_UART_Board_PutSHexInt             UserModules     2E77
_UART_Board_PutString              UserModules     2EBB
_UART_Board_RX_ISR                 UserModules     2F3B
_UART_Board_SendData               UserModules     2E1A
_UART_Board_SetTxIntMode           UserModules     2DFA
_UART_Board_Start                  UserModules     2E0C
_UART_Board_Stop                   UserModules     2E13
_UART_Board_TX_ISR                 UserModules     2F3A
_UART_Board_TxIntMode              UserModules     2E26
_UART_Board_Write                  UserModules     2ECB
_UART_Board_bReadRxData            UserModules     2E20
_UART_Board_bReadRxStatus          UserModules     2E23
_UART_Board_bReadTxStatus          UserModules     2E1D
_UART_Board_cGetChar               UserModules     2E86
_UART_Board_cReadChar              UserModules     2E8E
_UART_Board_iReadChar              UserModules     2EA5
_UART_Sensor_CPutString            UserModules     306F
_UART_Sensor_CWrite                UserModules     3041
_UART_Sensor_DisableInt            UserModules     2F43
_UART_Sensor_EnableInt             UserModules     2F3C
_UART_Sensor_IntCntl               UserModules     2F89
_UART_Sensor_PutCRLF               UserModules     3081
_UART_Sensor_PutChar               UserModules     2FCE
_UART_Sensor_PutSHexByte           UserModules     2FB4
_UART_Sensor_PutSHexInt            UserModules     2FC7
_UART_Sensor_PutString             UserModules     300B
_UART_Sensor_RX_ISR                UserModules     308B
_UART_Sensor_SendData              UserModules     2F6A
_UART_Sensor_SetTxIntMode          UserModules     2F4A
_UART_Sensor_Start                 UserModules     2F5C
_UART_Sensor_Stop                  UserModules     2F63
_UART_Sensor_TX_ISR                UserModules     308A
_UART_Sensor_TxIntMode             UserModules     2F76
_UART_Sensor_Write                 UserModules     301B
_UART_Sensor_bReadRxData           UserModules     2F70
_UART_Sensor_bReadRxStatus         UserModules     2F73
_UART_Sensor_bReadTxStatus         UserModules     2F6D
_UART_Sensor_cGetChar              UserModules     2FD6
_UART_Sensor_cReadChar             UserModules     2FDE
_UART_Sensor_iReadChar             UserModules     2FF5
_WriteAll_1621                     text            347A
__Bnvbit0                          nvbit0          0061
__Bnvbit1                          nvbit1          0100
__Bnvbit2                          nvbit2          0200
__Bnvbit3                          nvbit3          0300
__Brbit0                           rbit0           005A
__Brbit1                           rbit1           0100
__Brbit2                           rbit2           0200
__Brbit3                           rbit3           0300
__Bstackps                         stackps         0300
__HInterruptRAM                    InterruptRAM    0300
__HPD_startup                      PD_startup      3F95
__HSSCParmBlk                      SSCParmBlk      0100
__HTOP                             TOP             0065
__HUserModules                     UserModules     308C
__Hbss                             bss             0300
__Hbss0                            bss0            005A
__Hbss1                            bss1            0100
__Hbss2                            bss2            0200
__Hbss3                            bss3            0300
__Hcdata                           cdata           3E14
__Hend_init                        end_init        0003
__Hfnauto                          fnauto          007D
__Hinit                            init            3FC5
__Hintrtext                        intrtext        0003
__Hled_display_RAM                 led_display_RAM 0300
__Hlit                             lit             0300
__Hmaintext                        maintext        3E00
__Hnvbit0                          nvbit0          0308
__Hnvbit1                          nvbit1          0800
__Hnvbit2                          nvbit2          1000
__Hnvbit3                          nvbit3          1800
__Hnvram0                          nvram0          0061
__Hnvram1                          nvram1          0100
__Hnvram2                          nvram2          0200
__Hnvram3                          nvram3          0300
__Hpowerup                         powerup         0003
__Hpsoc_config                     psoc_config     0300
__Hramdata0                        ramdata0        0061
__Hramdata1                        ramdata1        0100
__Hramdata2                        ramdata2        0200
__Hramdata3                        ramdata3        0300
__Hrbit0                           rbit0           02D0
__Hrbit1                           rbit1           0800
__Hrbit2                           rbit2           1000
__Hrbit3                           rbit3           1800
__Hromdata0                        romdata0        006C
__Hromdata1                        romdata1        0003
__Hromdata2                        romdata2        0003
__Hromdata3                        romdata3        0003
__Hstackps                         stackps         0300
__Hstrings                         strings         3F3B
__Htext                            text            3C51
__Hvectors                         vectors         0003
__LInterruptRAM                    InterruptRAM    0300
__LPD_startup                      PD_startup      3F3B
__LSSCParmBlk                      SSCParmBlk      0000
__LTOP                             TOP             0000
__LUserModules                     UserModules     2C82
__Lbss                             bss             0300
__Lbss0                            bss0            0000
__Lbss1                            bss1            0100
__Lbss2                            bss2            0200
__Lbss3                            bss3            0300
__Lcdata                           cdata           3E00
__Lend_init                        end_init        0003
__Lfnauto                          fnauto          0061
__Linit                            init            3F95
__Lintrtext                        intrtext        0003
__Lled_display_RAM                 led_display_RAM 0300
__Llit                             lit             0300
__Lmaintext                        maintext        3C51
__Lnvbit0                          nvbit0          0308
__Lnvbit1                          nvbit1          0800
__Lnvbit2                          nvbit2          1000
__Lnvbit3                          nvbit3          1800
__Lnvram0                          nvram0          0061
__Lnvram1                          nvram1          0100
__Lnvram2                          nvram2          0200
__Lnvram3                          nvram3          0300
__Lpowerup                         powerup         0003
__Lpsoc_config                     psoc_config     0300
__Lramdata0                        ramdata0        005A
__Lramdata1                        ramdata1        0100
__Lramdata2                        ramdata2        0200
__Lramdata3                        ramdata3        0300
__Lrbit0                           rbit0           02D0
__Lrbit1                           rbit1           0800
__Lrbit2                           rbit2           1000
__Lrbit3                           rbit3           1800
__Lromdata0                        romdata0        0065
__Lromdata1                        romdata1        0003
__Lromdata2                        romdata2        0003
__Lromdata3                        romdata3        0003
__Lstackps                         stackps         0300
__Lstrings                         strings         3F00
__Ltext                            text            308C
__Lvectors                         vectors         0000
__S0                               (abs)           3FC5
__S1                               (abs)           007D
__Start                            PD_startup      3F3B
___awdiv                           text            3883
___awdiv@counter                   fnauto          0070
___awdiv@dividend                  fnauto          006B
___awdiv@divisor                   fnauto          0069
___awdiv@quotient                  fnauto          006D
___awdiv@sign                      fnauto          006F
___awmod                           text            3925
___awmod@counter                   fnauto          006E
___awmod@dividend                  fnauto          006B
___awmod@divisor                   fnauto          0069
___awmod@sign                      fnauto          006D
___end_of_c_program_code           text            3C51
___lbdiv                           text            37C1
___lbdiv@counter                   fnauto          006A
___lbdiv@dividend                  fnauto          0068
___lbdiv@divisor                   fnauto          0067
___lbdiv@quotient                  fnauto          0069
___lbmod                           text            3901
___lbmod@counter                   fnauto          006A
___lbmod@dividend                  fnauto          0068
___lbmod@divisor                   fnauto          0067
___lbmod@rem                       fnauto          0069
___lmul                            text            34E9
___lmul@multiplicand               fnauto          0072
___lmul@multiplier                 fnauto          006E
___lmul@product                    fnauto          0076
___lwdiv                           text            3A0C
___lwdiv@counter                   fnauto          0071
___lwdiv@dividend                  fnauto          006D
___lwdiv@divisor                   fnauto          006B
___lwdiv@quotient                  fnauto          006F
___lwmod                           text            37F1
___lwmod@counter                   fnauto          006F
___lwmod@dividend                  fnauto          006D
___lwmod@divisor                   fnauto          006B
___start_of_c_program_code         text            308C
___wmul                            text            3531
___wmul@multiplicand               fnauto          006E
___wmul@multiplier                 fnauto          0070
___wmul@product                    fnauto          0072
__end_of_Ack_I2c                   text            39C4
__end_of_BoardUART                 text            3BA3
__end_of_CRC8Check                 text            314B
__end_of_ChangeToOD                text            3B6C
__end_of_ChangeToRead              text            3B5D
__end_of_DisplayPMxx               text            3614
__end_of_FrameCheck                text            30D9
__end_of_HT1621B_Init              text            347A
__end_of_IRcvBytes                 text            3786
__end_of_ISendByte                 text            3A8B
__end_of_Init_IIC                  text            3467
__end_of_LCDOuputAll               text            3456
__end_of_LCD_Init                  text            30F8
__end_of_LeftRotate                text            34E9
__end_of_RcvByte                   text            3A0C
__end_of_SendBit_1621              text            37C1
__end_of_SendByte                  text            3B4C
__end_of_SendCmd                   text            370D
__end_of_SendDataBit_1621          text            386A
__end_of_SensorUART                text            3C51
__end_of_ShowHumiTemp              text            36AC
__end_of_ShowLife                  text            36EC
__end_of_Si7020CalcRH              text            31DE
__end_of_Si7020CalcTemp            text            32A3
__end_of_Si7020Init                text            3105
__end_of_Si7020Read_RH_NHM         text            3121
__end_of_Si7020Read_Temp_after_RHM text            31FF
__end_of_Si7020SendCommand         text            3716
__end_of_Start_I2c                 text            3AD2
__end_of_Stop_I2c                  text            3AAD
__end_of_Timer16ISR                text            3BD3
__end_of_WriteAll_1621             text            34BD
__end_of___awdiv                   text            3901
__end_of___awmod                   text            3998
__end_of___lbdiv                   text            37F1
__end_of___lbmod                   text            3925
__end_of___lmul                    text            3531
__end_of___lwdiv                   text            3A56
__end_of___lwmod                   text            382D
__end_of___wmul                    text            355D
__end_of_abs                       text            3883
__end_of_delay_us                  text            3B8A
__end_of_main                      maintext        3E00
__stack_start__                    stackps         0300
_abs                               text            386A
_ack                               bss0            0046
_bGetPowerSetting                  PD_startup      3F92
_bPWM8_BL_ReadCounter              UserModules     2C9B
_bPWM8_BL_ReadPulseWidth           UserModules     2C98
_bUART_Board_ReadRxData            UserModules     2E20
_bUART_Board_ReadRxStatus          UserModules     2E23
_bUART_Board_ReadTxStatus          UserModules     2E1D
_bUART_Sensor_ReadRxData           UserModules     2F70
_bUART_Sensor_ReadRxStatus         UserModules     2F73
_bUART_Sensor_ReadTxStatus         UserModules     2F6D
_data_length                       bss0            0047
_data_pm1_0                        bss0            002D
_data_pm2_5                        bss0            002F
_delay_us                          text            3B6C
_main                              maintext        3C51
_mode                              bss0            0048
_one_sec_timer                     ramdata0        005D
_poly_h                            ramdata0        005E
_poly_l                            ramdata0        005F
_rh_sample_timer                   ramdata0        0060
_wTimer16_CaptureCounter           UserModules     2DE4
_wTimer16_ReadCompareValue         UserModules     2DA6
_wTimer16_ReadCounter              UserModules     2DAC
_wTimer16_ReadTimer                UserModules     2DE4
_wTimer16_ReadTimerSaveCV          UserModules     2DAC
abs@a                              fnauto          0069
bGetPowerSetting                   PD_startup      3F92
bPWM8_BL_ReadCounter               UserModules     2C9B
bPWM8_BL_ReadPulseWidth            UserModules     2C98
bUART_Board_ReadRxData             UserModules     2E20
bUART_Board_ReadRxStatus           UserModules     2E23
bUART_Board_ReadTxStatus           UserModules     2E1D
bUART_Sensor_ReadRxData            UserModules     2F70
bUART_Sensor_ReadRxStatus          UserModules     2F73
bUART_Sensor_ReadTxStatus          UserModules     2F6D
delay_us@us                        fnauto          006E
intlevel0                          romdata3        0003
intlevel1                          romdata3        0003
intlevel2                          romdata3        0003
main@ret                           fnauto          0061
reset_vec                          vectors         0000
start                              vectors         0000
startup                            init            3F95
wTimer16_CaptureCounter            UserModules     2DE4
wTimer16_ReadCompareValue          UserModules     2DA6
wTimer16_ReadCounter               UserModules     2DAC
wTimer16_ReadTimer                 UserModules     2DE4
wTimer16_ReadTimerSaveCV           UserModules     2DAC
