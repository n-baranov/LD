CoDeSys+                   BC and KL6301 @       1.00 @   2.3.10.0   RV @w   Demoproject for receive EIB Data
BC9000
KL6301
KL9010 @                                     ]р1] >   C:\TWINCAT\PLC\LIB\ @      ЭЭЭЭЭЭЭЭ             РФC        ђ%  @
   n   C:\TWINCAT\PLC\LIB\TcpIp.lib @                                                                                          F_GETVERSIONTCPIP               nVersionElement           §џ                 F_GetVersionTcpIp                                     жN     џџџџ           FB_SOCKETACCEPT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_ACCEPT )              	   T_AmsPort                           ADSRDWRT `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              response                ST_TcIpConnSvrResponse `§џ              request                ST_SockAddr `§џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system	   hListener              	   T_HSOCKET  §џ       x    Listener handle identifying a socket that has been placed in a listening state with the FB_SocketListen function block    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.    	   bAccepted            §џ
       ;    TRUE = new connection is made. FALSE = no new connection.    bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET  §џ       V   This returned value is a handle for the socket on which the actual connection is made.            жN     џџџџ           FB_SOCKETCLOSE        
   fbAdsWrite       V    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CLOSEBYHDL, SRCADDR := 0, LEN := 0 )              	   T_AmsPort                              ADSWRITE `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  §џ       4    Local or remote client or listener socket to close.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       жN     џџџџ           FB_SOCKETCLOSEALL        
   fbAdsWrite       y    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CLOSEALL, SRCADDR := 0, LEN := 0 )              	   T_AmsPort                                 ADSWRITE `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ	              bError            §џ
              nErrId           §џ                       жN     џџџџ           FB_SOCKETCONNECT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CONNECT )              	   T_AmsPort                           ADSRDWRT `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              request                ST_SockAddr `§џ              response                ST_TcIpConnSvrResponse `§џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   sRemoteHost               §џ       X    Remote (server) address. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       .    Remote (server) Internet Protocol (IP) port.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ШЏ     §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET  §џ       V   This returned value is a handle for the socket on which the actual connection is made.            жN     џџџџ           FB_SOCKETLISTEN        
   fbAdsRdWrt       ]    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_LISTEN )              	   T_AmsPort                           ADSRDWRT `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              request                ST_SockAddr `§џ              response                ST_TcIpConnSvrResponse `§џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               §џ       W    Local (server) address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ       -    Local (server) Internet Protocol (IP) port.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ           	   hListener              	   T_HSOCKET  §џ       _   This returned value is a handle for the listener socket on which the actual connection is made.            жN     џџџџ           FB_SOCKETRECEIVE           fbAdsReadEx       <    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVBYHDL )              	   T_AmsPort                    	   ADSREADEX `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       3    Contains the max. number of bytes to be received.    pDest           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ           	   nRecBytes           §џ       2    Contains the number of bytes currently received.             жN     џџџџ           FB_SOCKETSEND        
   fbAdsWrite       >    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDBYHDL )              	   T_AmsPort                      ADSWRITE `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       *    Contains the number of bytes to be send.    pSrc           §џ       D    Contains the address of the buffer containing the data to be send.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       жN     џџџџ           FB_SOCKETUDPCREATE        
   fbAdsRdWrt       ^    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_UDPBIND )              	   T_AmsPort                           ADSRDWRT `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              request                ST_SockAddr `§џ              response                ST_TcIpConnSvrResponse `§џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               §џ       N    Local address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ	       $    Local Internet Protocol (IP) port.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET  §џ       ?   This returned value is a handle for the bind (reserved) socket.            жN     џџџџ           FB_SOCKETUDPRECEIVEFROM           fbAdsReadEx       @    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVFROMBYHDL )              	   T_AmsPort                    	   ADSREADEX `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              buffer                ST_TcIpConnSvrUdpBuffer `§џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       3    Contains the max. number of bytes to be received.    pDest           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              sRemoteHost               §џ       p    Remote address from which the data was received. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       G    Remote Internet Protocol (IP) port  from which the data was received. 	   nRecBytes           §џ       2    Contains the number of bytes currently received.             жN     џџџџ           FB_SOCKETUDPSENDTO        
   fbAdsWrite       @    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDTOBYHDL )              	   T_AmsPort                      ADSWRITE `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              buffer                ST_TcIpConnSvrUdpBuffer `§џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  §џ       ?    Handle for the socket on which the actual connection is made.    sRemoteHost               §џ       d    Remote address of the target socket. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       :    Remote Internet Protocol (IP) port of the target socket.    cbLen           §џ       *    Contains the number of bytes to be send.    pSrc           §џ	       D    Contains the address of the buffer containing the data to be send.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       жN     џџџџ    t   C:\TWINCAT\PLC\LIB\TcUtilities.lib @                                                                                о       
   BCD_TO_DEC        
   RisingEdge                 R_TRIG `§џ                 START            §џ              BIN           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ	              DOUT           §џ
       П   
	Error codes:
		0x00		: No Errors
		0x0F	: Parameter value NOT correct. Wrong BCD input value in Low Nibble.
		0xF0	: Parameter value NOT correct. Wrong BCD input value in High Nibble.
            Ъ"pK     џџџџ           BE128_TO_HOST               in                T_UHUGE_INTEGER  §џ                 BE128_TO_HOST                T_UHUGE_INTEGER                            Ъ"pK     џџџџ           BE16_TO_HOST               in           §џ                 BE16_TO_HOST                                     Ъ"pK     џџџџ           BE32_TO_HOST           parr    	                            ` §џ                 in           §џ                 BE32_TO_HOST                                     Ъ"pK     џџџџ           BE64_TO_HOST               in                T_ULARGE_INTEGER  §џ                 BE64_TO_HOST                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           BYTEARR_TO_MAXSTRING               in   	  џ                       §џ                 BYTEARR_TO_MAXSTRING               T_MaxString                            Ъ"pK     џџџџ           DATA_TO_HEXSTR           iCase         ` §џ              pCells    	  џ                          ` §џ              idx         ` §џ                 pData           §џ           Pointer to data buffer    cbData             U              §џ           Byte size of data buffer    bLoCase            §џ       9    Default: use "ABCDEF", if TRUE use "abcdef" characters.       DATA_TO_HEXSTR               T_MaxString                            Ъ"pK     џџџџ        
   DCF77_TIME     "      DataBits   	  <                         §џ              BitNo            §џ              dtCurr            §џ              dtNext            §џ              tziCurr               E_TimeZoneID   §џ       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID   §џ       8    Time zone information extracted from previous telegram    tDiff            §џ           Two telegram time difference    bCheck             §џ              Step         ` §џ!           	   StartEdge                 R_TRIG `§џ"              RisingPulse                 R_TRIG `§џ$              FallingPulse                 F_TRIG `§џ%           	   LongPulse                    TON `§џ&           
   ShortPulse                    TON `§џ'           
   DetectSync                    TOF `§џ(              NoDCFSignal                    TON `§џ)              DCFCycleLen                    TON `§џ*           	   bIsRising          ` §џ,           
   bIsFalling          ` §џ-              bIsLong          ` §џ.              bIsShort          ` §џ/              Working          ` §џ0           	   DataValid          ` §џ2           
   ParitySum1         ` §џ3           
   ParitySum2         ` §џ4           
   ParitySum3         ` §џ5              i         ` §џ7           	   DummyByte         ` §џ8              DummyString    Q       Q  ` §џ9              Hour         ` §џ;              Minute         ` §џ<              Year         ` §џ=              Month         ` §џ>              Day         ` §џ?              	   DCF_PULSE            §џ           DCF77 pulse: 101010101...    RUN            §џ       *    Enable/disable function block execution.       BUSY            §џ           TRUE = Decoding in progress    ERR            §џ	       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           §џ
           Error code    ERRCNT           §џ           Error counter    READY            §џ       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           §џ           date and time information             Ъ"pK     џџџџ           DCF77_TIME_EX     #      DataBits   	  <                         §џ           Decoded data bits    BitNo            §џ           Decoded bit number    dtCurr            §џ       %    Time extracted from latest telegram    dtNext            §џ            Supposed next time    tziCurr               E_TimeZoneID   §џ!       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID   §џ"       8    Time zone information extracted from previous telegram    tDiff            §џ#       )    Time difference of two latest telegrams    bCheck             §џ$       H    TRUE = Plausibility check over two telegrams enabled, FALSE = disabled    Step         ` §џ&           	   StartEdge                 R_TRIG `§џ'              RisingPulse                 R_TRIG `§џ)              FallingPulse                 F_TRIG `§џ*           	   LongPulse                    TON `§џ+           
   ShortPulse                    TON `§џ,           
   DetectSync                    TOF `§џ-              NoDCFSignal                    TON `§џ.              DCFCycleLen                    TON `§џ/           	   bIsRising          ` §џ1           
   bIsFalling          ` §џ2              bIsLong          ` §џ3              bIsShort          ` §џ4              Working          ` §џ5           	   DataValid          ` §џ7           
   ParitySum1         ` §џ8           
   ParitySum2         ` §џ9           
   ParitySum3         ` §џ:              i         ` §џ<           	   DummyByte         ` §џ=              DummyString    Q       Q  ` §џ>              Hour         ` §џ@              Minute         ` §џA              Year         ` §џB              Month         ` §џC              Day         ` §џD           	   DayOfWeek         ` §џE              	   DCF_PULSE            §џ           DCF77 pulse: 101010101...    RUN            §џ       *    Enable/disable function block execution.    TLP          §џ           Short/long pulse split point       BUSY            §џ	           TRUE = Decoding in progress    ERR            §џ
       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           §џ           Error code    ERRCNT           §џ           Error counter    READY            §џ       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           §џ           date and time information    DOW                         §џ       0     ISO 8601 day of week: 1 = Monday.. 7 = Sunday    TZI               E_TimeZoneID  §џ           time zone information    ADVTZI            §џ       1    MEZ->MESZ or MESZ->MEZ time change notification    LEAPSEC            §џ           TRUE = Leap second    RAWDT   	  <                        §џ           Raw decoded data bits             Ъ"pK     џџџџ        
   DEC_TO_BCD        
   RisingEdge                 R_TRIG `§џ                 START            §џ              DIN           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ	              BOUT           §џ
       h   
	Error codes:
		0x00		: No errors
		0xFF	: Parameter value NOT correct. Wrong DECIMAL input value.
            Ъ"pK     џџџџ        
   DEG_TO_RAD               ANGLE                        §џ              
   DEG_TO_RAD                                                  Ъ"pK     џџџџ           DINT_TO_DECSTR               in           §џ           
   iPrecision           §џ	                 DINT_TO_DECSTR               T_MaxString                            Ъ"pK     џџџџ           DT_TO_FILETIME           ui64                T_ULARGE_INTEGER `§џ                 DTIN           §џ                 DT_TO_FILETIME             
   T_FILETIME                            Ъ"pK     џџџџ           DT_TO_SYSTEMTIME           sDT             ` §џ              nDay         ` §џ              b   	                 
    24(16#30)      0    ` §џ              TS                   
   TIMESTRUCT `§џ           	   Index7001                            DTIN           §џ                 DT_TO_SYSTEMTIME                   
   TIMESTRUCT                            Ъ"pK     џџџџ           DWORD_TO_BINSTR           bit   	                        ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant bits    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_BINSTR               T_MaxString                            Ъ"pK     џџџџ           DWORD_TO_DECSTR           dec   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ              divider     Ъ; ` §џ              number         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_DECSTR               T_MaxString                            Ъ"pK     џџџџ           DWORD_TO_HEXSTR           hex   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ              bLoCase            §џ	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       DWORD_TO_HEXSTR               T_MaxString                            Ъ"pK     џџџџ           DWORD_TO_OCTSTR           oct   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_OCTSTR               T_MaxString                            Ъ"pK     џџџџ           F_ARGCMP               typeSafe            §џ              arg1                 T_Arg  §џ              arg2                 T_Arg  §џ                 F_ARGCMP                                     Ъ"pK     џџџџ           F_ARGCPY               typeSafe            §џ                 F_ARGCPY                               dest                  T_Arg §џ
              src                  T_Arg §џ                   Ъ"pK     џџџџ           F_ARGISZERO               arg                 T_Arg  §џ                 F_ARGIsZero                                      Ъ"pK     џџџџ        	   F_BIGTYPE               pData           §џ            Address pointer of data buffer    cbLen           §џ           Byte length of data buffer    	   F_BIGTYPE                 T_Arg                            Ъ"pK     џџџџ           F_BOOL                   F_BOOL                 T_Arg                      in            §џ                   Ъ"pK     џџџџ           F_BYTE                   F_BYTE                 T_Arg                      in           §џ                   Ъ"pK     џџџџ           F_BYTE_TO_CRC16_CCITT               value           §џ           Data value    crc           §џ       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_BYTE_TO_CRC16_CCITT                                     Ъ"pK     џџџџ           F_CHECKSUM16        	   wChkSum_I         ` §џ	       %    internal ChkSum                        dataWord         ` §џ
       %    current data byte                      iIdx         ` §џ       %    current data buffer index              ptrData               ` §џ       %    pointer to current data byte           	   dwSrcAddr           §џ       %    address of data buffer                 cbLen           §џ       %    length of data buffer                  wChkSum           §џ       %    init value (16#0000) or last ChkSum       F_CheckSum16                                     Ъ"pK     џџџџ           F_CRC16_CCITT           wCRC_I         ` §џ
       $    internal CRC                          dataWord         ` §џ       $    current data byte                     iIdx         ` §џ       $    current data buffer index             ptrData               ` §џ       $    pointer to current data byte          	   dwSrcAddr           §џ       $    address of data buffer                cbLen           §џ       $    length of data buffer                 wLastCRC           §џ       $    init value (16#FFFF) or last CRC16       F_CRC16_CCITT                                     Ъ"pK     џџџџ           F_CREATEHASHTABLEHND           p                     T_HashTableEntry      `§џ              i         ` §џ                 pEntries                     T_HashTableEntry       §џ       C    Pointer to the first entry of hash table database (element array) 	   cbEntries           §џ       ;    Byte size (length) of hash table database (element array)       F_CreateHashTableHnd                                hTable         	               T_HHASHTABLE §џ           Hash table handle         Ъ"pK     џџџџ           F_CREATELINKEDLISTHND           p                   T_LinkedListEntry      `§џ           Temp. previous node    n                   T_LinkedListEntry      `§џ           Temp. next node    i         ` §џ           loop iterator       pEntries                   T_LinkedListEntry       §џ       @    Pointer to the first linked list node database (element array) 	   cbEntries           §џ       <    Byte size (length) of linked list database (element array)       F_CreateLinkedListHnd                                hList         	               T_HLINKEDLIST §џ           Linked list handle         Ъ"pK     џџџџ           F_DATA_TO_CRC16_CCITT           i         ` §џ                 pData           §џ           Pointer to data    cbData           §џ           Length of data    crc           §џ       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_DATA_TO_CRC16_CCITT                                     Ъ"pK     џџџџ           F_DINT                   F_DINT                 T_Arg                      in           §џ                   Ъ"pK     џџџџ           F_DWORD                   F_DWORD                 T_Arg                      in           §џ                   Ъ"pK     џџџџ           F_FORMATARGTOSTR     	      pOut               ` §џ              longword         ` §џ              double                      ` §џ              single          ` §џ              short         ` §џ              small         ` §џ              longint         ` §џ              iPaddingLen         ` §џ              iCurrLen         ` §џ           
      bSign            §џ           Sign prefix flag    bBlank            §џ           Blank prefix flag    bNull            §џ           Null prefix flag    bHash            §џ           Hash prefix flag    bLAlign            §џ       4    FALSE => Right align (default), TRUE => Left align    bWidth            §џ       C    FALSE => no width padding, TRUE => blank or zeros padding enabled    iWidth           §џ	           Width length parameter 
   iPrecision           §џ
           Precision length parameter    eFmtType               E_TypeFieldParam  §џ           Format type field parameter    arg                 T_Arg  §џ           Format argument       F_FormatArgToStr                               sOut                 T_MaxString §џ                   Ъ"pK     џџџџ           F_GETDAYOFWEEK           sysTime                   
   TIMESTRUCT `§џ	                 in           §џ                 F_GetDayOfWeek                                     Ъ"pK     џџџџ           F_GETDOYOFYEARMONTHDAY           bLY          ` §џ
                 wYear           §џ           Year: 0..2xxx    wMonth           §џ           Month 1..12    wDay           §џ           Day: 1..31       F_GetDOYOfYearMonthDay                                     Ъ"pK     џџџџ           F_GETFLOATREC     
   	   ptrDouble    	                               §џ              fValue                         §џ
              fBegin                         §џ              nBegin            §џ              fDiv                         §џ              nDig            §џ              nDigit            §џ              fMaxPrecision                         §џ              i            §џ              nLastDecDigit            §џ                 fVal                        §џ           
   iPrecision           §џ              bRound            §џ                 F_GetFloatRec              
   T_FloatRec                            Ъ"pK     џџџџ           F_GETMAXMONTHDAYS               wYear           §џ	              wMonth           §џ
                 F_GetMaxMonthDays                                     Ъ"pK     џџџџ           F_GETMONTHOFDOY           bLY          ` §џ	              wMonth         ` §џ
                 wYear           §џ           Year: 0..2xxx    wDOY           §џ           Year's day number: 1..366       F_GetMonthOfDOY                                     Ъ"pK     џџџџ           F_GETVERSIONTCUTILITIES               nVersionElement           §џ       d   
	Possible nVersionElement parameter:
	1	:	major number
	2	:	minor number
	3	:	revision number
      F_GetVersionTcUtilities                                     Ъ"pK     џџџџ           F_GETWEEKOFTHEYEAR           date_sec         ` §џ           date seconds    dow         ` §џ	           day of week    year         ` §џ
              KWStart         ` §џ              first    yG ` §џ              ff                      ` §џ                 in           §џ                 F_GetWeekOfTheYear                                     Ъ"pK     џџџџ           F_HUGE                   F_HUGE                 T_Arg                      in                 T_HUGE_INTEGER §џ                   Ъ"pK     џџџџ           F_INT                   F_INT                 T_Arg                      in           §џ                   Ъ"pK     џџџџ           F_LARGE                   F_LARGE                 T_Arg                      in                 T_LARGE_INTEGER §џ                   Ъ"pK     џџџџ           F_LREAL                   F_LREAL                 T_Arg                      in                        §џ                   Ъ"pK     џџџџ           F_LTRIM           pChar               ` §џ              pStr                 T_MaxString      `§џ	                 in               T_MaxString  §џ                 F_LTrim               T_MaxString                            Ъ"pK     џџџџ           F_REAL                   F_REAL                 T_Arg                      in            §џ                   Ъ"pK     џџџџ           F_RTRIM           n         ` §џ              pChar               ` §џ	                 in               T_MaxString  §џ                 F_RTrim               T_MaxString                            Ъ"pK     џџџџ           F_SINT                   F_SINT                 T_Arg                      in           §џ                   Ъ"pK     џџџџ           F_STRING                   F_STRING                 T_Arg                      in                 T_MaxString §џ                   Ъ"pK     џџџџ        
   F_SWAPREAL           pReal    	                               §џ              pResult    	                               §џ                 fVal            §џ              
   F_SwapReal                                      Ъ"pK     џџџџ           F_SWAPREALEX           pIN    	                            ` §џ              wSave         ` §џ	                     F_SwapRealEx                                fVal            §џ                   Ъ"pK     џџџџ        	   F_TOLCASE           pDest               ` §џ              idx                 MIN_SBCS_TABLE   MAX_SBCS_TABLE ` §џ	                 in               T_MaxString  §џ              	   F_ToLCase               T_MaxString                            Ъ"pK     џџџџ        	   F_TOUCASE           pDest               ` §џ              idx                 MIN_SBCS_TABLE   MAX_SBCS_TABLE ` §џ	                 in               T_MaxString  §џ              	   F_ToUCase               T_MaxString                            Ъ"pK     џџџџ           F_UDINT                   F_UDINT                 T_Arg                      in           §џ                   Ъ"pK     џџџџ           F_UHUGE                   F_UHUGE                 T_Arg                      in                 T_UHUGE_INTEGER §џ                   Ъ"pK     џџџџ           F_UINT                   F_UINT                 T_Arg                      in           §џ                   Ъ"pK     џџџџ           F_ULARGE                   F_ULARGE                 T_Arg                      in                 T_ULARGE_INTEGER §џ                   Ъ"pK     џџџџ           F_USINT                   F_USINT                 T_Arg                      in           §џ                   Ъ"pK     џџџџ           F_WORD                   F_WORD                 T_Arg                      in           §џ                   Ъ"pK     џџџџ           F_YEARISLEAPYEAR               wYear           §џ                 F_YearIsLeapYear                                      Ъ"pK     џџџџ           FB_ADDROUTEENTRY        
   fbAdsWrite                          ADSWRITE `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ           	   dataEntry                ST_AmsRouteSystemEntry `§џ                 sNetID            
   T_AmsNetID  §џ       &    TwinCAT network address (ams net id)    stRoute                    ST_AmsRouteEntry  §џ       !    Structure with route parameters    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrID           §џ                       Ъ"pK     џџџџ           FB_AMSLOGGER        
   RisingEdge                 R_TRIG `§џ           
   fbAdsWrite                          ADSWRITE `§џ              stReq                ST_AmsLoggerReq `§џ              nLen         ` §џ                 sNetId           ''    
   T_AmsNetId  §џ              eMode           AMSLOGGER_RUN       E_AmsLoggerMode  §џ              sCfgFilePath           ''       T_MaxString  §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       Ъ"pK     џџџџ           FB_BASICPID           fE               0.0            §џ            error input					   fE_1               0.0            §џ!           error input z^(-1)				   fY               0.0            §џ"           control output				   fY_1               0.0            §џ#           control output  z^(-1)			   fYP               0.0            §џ$           P-part						   fYI               0.0            §џ%           I-part						   fYI_1               0.0            §џ&           I-part  z^(-1)					   fYD               0.0            §џ'           D-T1-part					   fYD_1               0.0            §џ(           D-T1-part  z^(-1)				   bInit            §џ*       %    initialization flag for first cycle	   bIsIPart             §џ+           I-part active ?				   bIsDPart             §џ,           D-part active ?				   fDi               0.0            §џ.           internal I param				   fDd               0.0            §џ/           internal D param				   fCd               0.0            §џ0           internal D param				   fCtrlCycleTimeOld               0.0            §џ2              fKpOld               0.0            §џ3              fTnOld               0.0            §џ4              fTvOld               0.0            §џ5              fTdOld               0.0            §џ6                 fSetpointValue                        §џ           setpoint value							   fActualValue                        §џ           actual value							   bReset            §џ           controller values    fCtrlCycleTime                        §џ	       (    controller cycle time in seconds [s]			   fKp                        §џ           proportional gain Kp	(P)					   fTn                        §џ           integral gain Tn (I) [s]						   fTv                        §џ       "    derivative gain Tv (D-T1) [s]				   fTd                        §џ       (    derivative damping time Td (D-T1) [s]		      fCtrlOutput                        §џ           controller output command				   nErrorStatus           §џ       1    controller error output (0: no error; >0:error)	              nERR_NOERROR          §џ           no error						   nERR_INVALIDPARAM         §џ           invalid parameter				   nERR_INVALIDCYCLETIME         §џ           invalid cycle time				Ъ"pK     џџџџ           FB_BUFFEREDTEXTFILEWRITER           fbFile                               FB_TextFileRingBuffer `§џ           
   closeTimer                    TON `§џ           auto close timer    bRemove          ` §џ              nStep         ` §џ                 sNetId           ''    
   T_AmsNetId `§џ           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString `§џ	       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath `§џ
           default: Open generic file    bAppend         ` §џ       )    TRUE = append lines, FALSE = not append 
   tAutoClose       ` §џ              tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ                 fbBuffer                 FB_StringRingBuffer`§џ           string ring buffer         Ъ"pK     џџџџ           FB_CONNECTSCOPESERVER           stRecordDesc       d    (nRunMode:=0, nSopMode:=0, bStoreOnDisk:=FALSE, bUseLocalServer:=FALSE, bStartServerFromFile:=TRUE)                                #   ST_ScopeServerRecordModeDescription   §џ              nState            §џ              nErrorState            §џ           
   fbAdsWrite                          ADSWRITE   §џ              fbQueryRegistry                                 FB_RegQueryValue   §џ              sScopeServerDir                §џ              sScopeServerPath                §џ              fbStartServer                              NT_StartProcess   §џ              fbWait                    TON   §џ               bTriggerServerStart            §џ!              nDwellTimeCounter            §џ"              nPort           27110    	   T_AmsPort  §џ%                 sNetId           ''    
   T_AmsNetId  §џ              bExecute            §џ              sConfigFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ              bError            §џ              nErrorId           §џ                         Connect_IdxGrp     u    §џ&          0x7500Ъ"pK     џџџџ           FB_DBGOUTPUTCTRL           fbFormat                                     FB_FormatString `§џ              fbBuffer        	               FB_StringRingBuffer `§џ              fbFile       +    (ePath := PATH_BOOTPATH, bAppend := TRUE )                 PATH_GENERIC    
   E_OpenPath                      FB_BufferedTextFileWriter `§џ              buffer   	  '                   ` §џ              state         ` §џ              nItems         ` §џ              k         ` §џ               bInit         ` §џ!           Hex logging    i         ` §џ$              cells   	                               ` §џ%              pCells                 T_MaxString      `§џ&              cbL1         ` §џ'              cbL2         ` §џ'              idx         ` §џ'              pSrc1               ` §џ(              pSrc2               ` §џ(                 dwCtrl         ` §џ       &    Debug message target: DBG_OUTPUT_LOG    sFormat           ''       T_MaxString `§џ           Debug message format string    arg1                 T_Arg `§џ           Format string argument    arg2                 T_Arg `§џ              arg3                 T_Arg `§џ	              arg4                 T_Arg `§џ
              arg5                 T_Arg `§џ              arg6                 T_Arg `§џ              arg7                 T_Arg `§џ              arg8                 T_Arg `§џ              arg9                 T_Arg `§џ              arg10                 T_Arg `§џ              sFilter           ''       T_MaxString `§џ                 bError          ` §џ              nError         ` §џ           	   nOverflow         ` §џ                       Ъ"pK     џџџџ           FB_DISCONNECTSCOPESERVER        
   fbAdsWrite                          ADSWRITE   §џ              nState            §џ                 sNetId            
   T_AmsNetId  §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       Ъ"pK     џџџџ           FB_ENUMFINDFILEENTRY           fbRTrig                 R_TRIG `§џ              nStep         ` §џ           
   fbAdsRdWrt       B    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_FFILEFIND )              	   T_AmsPort                         ADSRDWRT `§џ           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_CLOSEHANDLE )              	   T_AmsPort         o              ADSWRITE `§џ           	   dataEntry                            ST_FindFileSystemEntry `§џ              eFindCmd               E_EnumCmdType `§џ                 sNetId            
   T_AmsNetId  §џ           	   sPathName               T_MaxString  §џ       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType  §џ           Enumerator navigation command    bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrID           §џ              bEOE            §џ           End of enumeration 
   stFindFile                     ST_FindFileEntry  §џ           Find file entry             Ъ"pK     џџџџ           FB_ENUMFINDFILELIST           fbRTrig                 R_TRIG `§џ              nStep         ` §џ              fbEnum                              FB_EnumFindFileEntry `§џ              cbEntry         ` §џ              nEntries         ` §џ              pEntry                      ST_FindFileEntry      `§џ                 sNetId            
   T_AmsNetId  §џ           	   sPathName               T_MaxString  §џ       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType  §џ           Enumerator navigation command 	   pFindList           §џ       &    POINTER TO ARRAY OF ST_FindFileEntry 
   cbFindList           §џ       (    Byte size of ARRAY OF ST_FindFileEntry    bExecute            §џ	              tTimeout         §џ
                 bBusy            §џ              bError            §џ              nErrID           §џ              bEOE            §џ           End of enumeration 
   nFindFiles           §џ           Number of find files             Ъ"pK     џџџџ           FB_ENUMROUTEENTRY        	   fbAdsRead                          ADSREAD `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              index    џџџџ ` §џ           	   dataEntry                ST_AmsRouteSystemEntry `§џ                 sNetID            
   T_AmsNetID  §џ       '    TwinCAT network address (ams net id )    eCmd           eEnumCmd_First       E_EnumCmdType  §џ           Enumerator navigation command    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrID           §џ              bEOE            §џ       l    End of enumeration. This value is TRUE after the first read that attempts to read next non existing entry.    stRoute                    ST_AmsRouteEntry  §џ       !    Structure with route parameters             Ъ"pK     џџџџ           FB_ENUMSTRINGNUMBERS           pSrc               ` §џ              pDest               ` §џ              pNext               ` §џ              char         ` §џ              state         ` §џ              bEat          ` §џ                 sSearch               T_MaxString  §џ           Source string    eCmd           eEnumCmd_First       E_EnumCmdType  §џ           Enumerator navigation command    eType           eNumGroup_Float       E_NumGroupTypes  §џ           String number format type       sNumber               T_MaxString  §џ           Found string number    nPos           §џ	       )    <> 0 => Next scan/search start position    bEOS            §џ
           TRUE = End of string             Ъ"pK     џџџџ           FB_FILERINGBUFFER           fbOpen                             FB_FileOpen `§џ              fbClose                      FB_FileClose `§џ              fbWrite                           FB_FileWrite `§џ              fbRead                            FB_FileRead `§џ               fbSeek                         FB_FileSeek `§џ!              nStep         ` §џ"       X    0=idle, 1=init, 10,11=open, 20,21=seek, 30,31=read, 40,41=write, 50,51=close, 100=exit    bInit          ` §џ#       5    TRUE=reading length chunk, FALSE=reading data chunk    bExit          ` §џ$       O    FALSE=repeat reading/writing, TRUE=abort reading/writing, go to the exit step    bReopen          ` §џ%       t    Open mode: TRUE=try to open existing file, FALSE=create new file, if open fails => try to create and open new file    bOpen          ` §џ&       %    TRUE=file opened, FALSE=file closed    bGet          ` §џ'       $    TRUE=get entry, FALSE=remove entry    bOW          ` §џ(       b    TRUE=removing oldest entry (bOverwrite=TRUE), FALSE=don't remove oldest entry (bOverwrite=FALSE)    cbOW         ` §џ)       /    Temp length of ovwerwritten length/data chunk    cbMoved         ` §џ*       =    Number of successfully read/written length/data chunk bytes    ptrSaved         ` §џ+       M    Seek pointer previous position (used by A_GetHead or read buffer underflow)    ptrMax         ` §џ,       D    Seek pointer max. position = SIZEOF(ring buffer header) + cbBuffer    eCmd           eFileRBuffer_None       E_FileRBufferCmd `§џ-              eOldCmd           eFileRBuffer_None       E_FileRBufferCmd `§џ.                 sNetId           ''    
   T_AmsNetId  §џ           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString  §џ       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath  §џ           default: Open generic file    nID           §џ           user defined version ID    cbBuffer          §џ           max. file buffer byte size 
   bOverwrite            §џ	       :    FALSE = don't overwrite, TRUE = overwrite oldest entries 
   pWriteBuff           §џ
       "    pointer to external write buffer 
   cbWriteLen           §џ       $    byte size of external write buffer 	   pReadBuff           §џ       !    pointer to external read buffer 	   cbReadLen           §џ       #    byte size of external read buffer    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrID           §џ       х    ADS or function specific error codes:
	16#8000	= (File) buffer empty or overflow 
	16#8001 = (Application) buffer underflow (cbReadLen to small),  	
	16#8002	= Buffer is not opened  
	16#8003	= Invalid input parameter value    cbReturn           §џ       !    number of recend read data bytes   stHeader                          ST_FileRBufferHead  §џ           buffer status             Ъ"pK     џџџџ           FB_FORMATSTRING     	      pFormat               ` §џ           pointer to the format string    pOut               ` §џ           pointer to the result string 
   nRemOutLen         ` §џ       $    Max remaining length of sOut buffer   bValid          ` §џ       8    if set, the string character is valid format parameter    stFmt                              ST_FormatParameters `§џ           
   nArrayElem         ` §џ           	   nArgument         ` §џ              parArgs   	  
                     T_Arg              `§џ              sArgStr               T_MaxString `§џ                 sFormat               T_MaxString  §џ              arg1                 T_Arg  §џ              arg2                 T_Arg  §џ              arg3                 T_Arg  §џ              arg4                 T_Arg  §џ              arg5                 T_Arg  §џ              arg6                 T_Arg  §џ	              arg7                 T_Arg  §џ
              arg8                 T_Arg  §џ              arg9                 T_Arg  §џ              arg10                 T_Arg  §џ                 bError            §џ              nErrId           §џ              sOut               T_MaxString  §џ                       Ъ"pK     џџџџ           FB_GETADAPTERSINFO        	   fbAdsRead                          ADSREAD `§џ           
   fbRegQuery                                 FB_RegQueryValue `§џ           	   fbTrigger                 R_TRIG `§џ              nState         ` §џ              cbInfo         ` §џ              idx         ` §џ              info   	                                      ST_IP_ADAPTER_INFO         `§џ           	   sDefaultA               T_MaxString `§џ                 sNetID            
   T_AmsNetId  §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrID           §џ              arrAdapters   	                                    ST_IpAdapterInfo          §џ              nCount           §џ           Max. number of found adapters    nGet           §џ       %    Number of read adapter info entries             Ъ"pK     џџџџ           FB_GETHOSTADDRBYNAME           fbAdsRW                          
   ADSRDWRTEX `§џ           	   fbTrigger                 R_TRIG `§џ              nState         ` §џ                 sNetID            
   T_AmsNetId  §џ           	   sHostName           ''       T_MaxString  §џ       1    String containing host name. E.g. 'DataServer1'    bExecute            §џ              tTimeout    ШЏ     §џ                 bBusy            §џ
              bError            §џ              nErrID           §џ              sAddr           ''    
   T_IPv4Addr  §џ       S    String containing an (Ipv4) Internet Protocol dotted address. E.g. '172.16.7.199'    arrAddr           0, 0, 0, 0       T_IPv4AddrArr  §џ       C    Byte array containing an (Ipv4) Internet Protocol dotted address.             Ъ"pK     џџџџ           FB_GETHOSTNAME        	   fbAdsRead                          ADSREAD `§џ           	   fbTrigger                 R_TRIG `§џ              nState         ` §џ                 sNetID            
   T_AmsNetId  §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrID           §џ           	   sHostName               T_MaxString  §џ           The local host name             Ъ"pK     џџџџ           FB_GETLOCALAMSNETID        
   RisingEdge                 R_TRIG `§џ              FallingEdge                 F_TRIG `§џ              fbRegQueryValue                                 FB_RegQueryValue `§џ              tmpBytes               T_AmsNetIdArr `§џ                 bExecute            §џ              tTimeOut         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ	           
   AddrString           '0.0.0.0.0.0'    
   T_AmsNetId  §џ
           	   AddrBytes           0,0,0,0,0,0       T_AmsNetIdArr  §џ                       Ъ"pK     џџџџ           FB_GETROUTERSTATUSINFO        
   risingEdge                 R_TRIG `§џ              state         ` §џ              adsRes   	                       ` §џ           	   fbAdsRead                          ADSREAD `§џ                 sNetId           ''    
   T_AmsNetID  §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              nErrID           §џ
              info                   ST_TcRouterStatusInfo  §џ                       Ъ"pK     џџџџ           FB_GETTIMEZONEINFORMATION        	   fbAdsRead                          ADSREAD `§џ              bOldTrig          ` §џ              state         ` §џ              res                ST_AmsGetTimeZoneInformation `§џ                 sNetID           ''    
   T_AmsNetID  §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              nErrID           §џ
              tzID               E_TimeZoneID  §џ              tzInfo                     ST_TimeZoneInformation  §џ                       Ъ"pK     џџџџ           FB_HASHTABLECTRL           p                     T_HashTableEntry      `§џ              n                     T_HashTableEntry      `§џ              nHash         ` §џ                 key           §џ       d    Entry key: used by A_Lookup, A_Remove method, the key.lookup variable is also used by A_Add method    putValue           §џ           Entry value 	   putPosPtr                     T_HashTableEntry       §џ	                 bOk            §џ           TRUE = success, FALSE = error    getValue           §џ           	   getPosPtr                     T_HashTableEntry       §џ       R    returned by A_GetFirstEntry, A_GetNextEntry, A_Add, A_Lookup and A_Remove method       hTable         	               T_HHASHTABLE §џ           Hash table handle variable         Ъ"pK     џџџџ           FB_LINKEDLISTCTRL           p                   T_LinkedListEntry      `§џ           Temp. previous node    n                   T_LinkedListEntry      `§џ           Temp. next node       putValue           §џ           Linked list node value 	   putPosPtr                   T_LinkedListEntry       §џ           Linked list node pointer       bOk            §џ           TRUE = success, FALSE = error    getValue           §џ           Linked list node value 	   getPosPtr                   T_LinkedListEntry       §џ           Linked list node pointer       hList         	               T_HLINKEDLIST §џ           Linked list table handle         Ъ"pK     џџџџ           FB_LOCALSYSTEMTIME     	      rtrig                 R_TRIG `§џ              state         ` §џ              fbNT        	            
   NT_GetTime `§џ              fbTZ                          FB_GetTimeZoneInformation `§џ              fbSET                           NT_SetTimeToRTCTime `§џ              fbRTC                             RTC_EX2 `§џ              timer                    TON `§џ              nSync         ` §џ              bNotSup          ` §џ                 sNetID           ''    
   T_AmsNetID  §џ       +    The target TwinCAT system network address    bEnable            §џ       `    Enable/start cyclic time synchronisation (output is synchronized to Local Windows System Time)    dwCycle           Q            §џ       &    Time synchronisation cycle (seconds)    dwOpt          §џ       R    Additional option flags: If bit 0 is set => Synchronize Windows Time to RTC time    tTimeout         §џ       J    Max. ADS function block execution time (internal communication timeout).       bValid            §џ       \    TRUE => The systemTime and tzID output is valid, FALSE => systemTime and tzID is not valid 
   systemTime                   
   TIMESTRUCT  §џ       "    Local Windows System Time struct    tzID           eTimeZoneID_Invalid       E_TimeZoneID  §џ       )    Daylight/standard time zone information             Ъ"pK     џџџџ           FB_MEMBUFFERMERGE           pDest         ` §џ              cbDest         ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType  §џ              pBuffer           §џ           Pointer to destination buffer    cbBuffer           §џ       &    Max. byte size of destination buffer    pSegment           §џ       .    Pointer to data segment (optional, may be 0) 	   cbSegment           §џ       -    Number of data segments (optional, may be 0)      bOk            §џ       M    TRUE => Successfull, FALSE => End of enumeration or invalid input parameter    cbSize           §џ           Data buffer fill state             Ъ"pK     џџџџ           FB_MEMBUFFERSPLIT           pSrc         ` §џ              cbSrc         ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType  §џ              pBuffer           §џ           Pointer to source data buffer    cbBuffer           §џ       !    Byte size of source data buffer    cbSize           §џ           Max. segment byte size       bOk            §џ
       N    TRUE => Successfull, FALSE => End of segmentation or invalid input parameter    pSegment           §џ           Pointer to data segment 	   cbSegment           §џ           Byte size of data segment    bEOS            §џ       7    TRUE = End/last segment, FALSE = Next segment follows             Ъ"pK     џџџџ           FB_MEMRINGBUFFER           idxLast         ` §џ            byte index of last buffer byte    idxFirst         ` §џ       "    byte buffer of first buffer byte    idxGet         ` §џ              pTmp         ` §џ              cbTmp         ` §џ              cbCopied         ` §џ                 pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pRead           §џ	           pointer to read data buffer    cbRead           §џ
           byte size of read data buffer    pBuffer           §џ       #    pointer to ring buffer data bytes    cbBuffer           §џ           max. ring buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    nCount           §џ           number of fifo entries    cbSize           §џ       "    current byte length of fifo data    cbReturn           §џ       О    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             Ъ"pK     џџџџ           FB_MEMRINGBUFFEREX           idxLast         ` §џ       *    byte index of last (newest) buffer entry    idxFirst         ` §џ       +    byte index of first (oldest) buffer entry    idxGet         ` §џ           temporary index    idxEnd         ` §џ       "    index of unused/free end segment    cbEnd         ` §џ       &    byte size of unused/free end segment    cbAdd         ` §џ!                 pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pBuffer           §џ       #    pointer to ring buffer data bytes    cbBuffer           §џ           max. ring buffer byte size       bOk            §џ       W    TRUE = new entry added or get, freed succesfully, FALSE = fifo overflow or fifo empty    pRead           §џ       (    A_GetHead returns pointer to read data    cbRead           §џ       *    A_GetHead returns byte size of read data    nCount           §џ           number of fifo entries    cbSize           §џ       "    current byte length of fifo data    cbFree           §џ            biggest available free segment             Ъ"pK     џџџџ           FB_REGQUERYVALUE           fbAdsRdWrtEx                          
   ADSRDWRTEX `§џ              bExecOld          ` §џ              bBusyOld          ` §џ              s1Len         ` §џ              s2Len         ` §џ              ptr         ` §џ              cbBuff         ` §џ              tmpBuff                ST_HKeySrvRead `§џ                 sNetId            
   T_AmsNetId  §џ           ams net id    sSubKey               T_MaxString  §џ           sub key name    sValName               T_MaxString  §џ           value name    cbData           §џ           number of data bytes to read    pData           §џ       $    points to registry key data buffer    bExecute            §џ           control input    tTimeOut         §џ	                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ       '    number of succesfully read data bytes             Ъ"pK     џџџџ           FB_REGSETVALUE        
   fbAdsWrite                          ADSWRITE `§џ              bExecOld          ` §џ              bBusyOld          ` §џ              s1Len         ` §џ              s2Len         ` §џ              s3Len         ` §џ              ptr         ` §џ              nType         ` §џ              cbBuff         ` §џ              cbRealWrite         ` §џ              tmpBuff                  ST_HKeySrvWrite `§џ                 sNetId            
   T_AmsNetId  §џ           ams net id    sSubKey               T_MaxString  §џ              sValName               T_MaxString  §џ           value name    eValType               E_RegValueType  §џ              cbData           §џ           size of value data in bytes    pData           §џ           pointer to value data buffer   bExecute            §џ	           control input    tTimeOut         §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ              cbWrite           §џ                       Ъ"pK     џџџџ           FB_REMOVEROUTEENTRY        
   fbAdsWrite                          ADSWRITE `§џ                 sNetID            
   T_AmsNetID  §џ       '    TwinCAT network address (ams net id )    sName                 §џ           Route name as string    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrID           §џ                       Ъ"pK     џџџџ           FB_RESETSCOPESERVERCONTROL        
   fbAdsWrite                          ADSWRITE   §џ              nState            §џ                 sNetId            
   T_AmsNetId  §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       Ъ"pK     џџџџ           FB_SAVESCOPESERVERDATA           nState            §џ           
   fbAdsWrite                          ADSWRITE   §џ                 sNetId            
   T_AmsNetId  §џ              bExecute            §џ           	   sSaveFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ	              bDone            §џ
              bError            §џ              nErrorId           §џ                       Ъ"pK     џџџџ           FB_SCOPESERVERCONTROL           eCurrentState           SCOPE_SERVER_IDLE       E_ScopeServerState   §џ           	   fbConnect                                  FB_ConnectScopeServer   §џ              fbStart        
                FB_StartScopeServer   §џ              fbStop        
                FB_StopScopeServer   §џ              fbSave        
                FB_SaveScopeServerData   §џ              fbDisconnect        	               FB_DisconnectScopeServer   §џ              fbReset        	               FB_ResetScopeServerControl   §џ                  sNetId            
   T_AmsNetId  §џ           	   eReqState               E_ScopeServerState  §џ              sConfigFile    Q       Q    §џ           	   sSaveFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ              bError            §џ              nErrorId           §џ                       Ъ"pK     џџџџ           FB_SETTIMEZONEINFORMATION        
   fbAdsWrite                          ADSWRITE `§џ              bOldTrig          ` §џ              state         ` §џ              req                ST_AmsGetTimeZoneInformation `§џ                 sNetID           ''    
   T_AmsNetID  §џ              tzInfo       ]   ( (*West Euoropa Standard Time *)
					bias:=-60,
					standardName:='W. Europe Standard Time',
					standardDate:=(wYear:=0, wMonth:=10, wDayOfWeek:=0, wDay:=5, wHour:=3),
					standardBias:=0,
					daylightName:='W. Europe Daylight Time',
					daylightDate:=(wYear:=0, wMonth:=3, wDayOfWeek:=0, wDay:=5, wHour:=2),
					daylightBias:=-60 )    Фџџџ        W. Europe Standard Time                
   TIMESTRUCT             
                                W. Europe Daylight Time                
   TIMESTRUCT                                 Фџџџ   ST_TimeZoneInformation  §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrID           §џ                       Ъ"pK     џџџџ           FB_STARTSCOPESERVER           nState            §џ           
   fbAdsWrite                          ADSWRITE   §џ              nDummy   	                    0,0                     §џ                 sNetId            
   T_AmsNetId  §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       Ъ"pK     џџџџ           FB_STOPSCOPESERVER           nState            §џ           
   fbAdsWrite                          ADSWRITE   §џ              nDummy   	                    0,0                     §џ                 sNetId            
   T_AmsNetId  §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       Ъ"pK     џџџџ           FB_STRINGRINGBUFFER           fbBuffer                              FB_MemRingBuffer `§џ       4    Internal (low level) buffer control function block    
   bOverwrite            §џ       8    TRUE = overwrite oldest entry, FALSE = don't overwrite    putValue           ''       T_MaxString  §џ       %    String to add (write) to the buffer    pBuffer           §џ	       #    Pointer to ring buffer data bytes    cbBuffer           §џ
           Max. ring buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    getValue           ''       T_MaxString  §џ       #    String removed (read) from buffer    nCount           §џ           Number of fifo entries    cbSize           §џ       "    Current byte length of fifo data             Ъ"pK     џџџџ           FB_TEXTFILERINGBUFFER           fbOpen                             FB_FileOpen `§џ              fbClose                      FB_FileClose `§џ              fbPuts                         FB_FilePuts `§џ              nStep         ` §џ       @    0=idle, 1=init, 10,11=open, 40,41=write, 50,51=close, 100=exit    eCmd           eFileRBuffer_None       E_FileRBufferCmd `§џ                 sNetId           ''    
   T_AmsNetId `§џ           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString `§џ       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath `§џ           default: Open generic file    bAppend         ` §џ       #    TRUE = append, FALSE = not append    putLine           ''       T_MaxString `§џ	              cbBuffer        ` §џ
       5    max. file buffer byte size(RESERVED for future use)    tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ              bOpened          ` §џ       )    TRUE = file opened, FALSE = file closed    getLine           ''       T_MaxString `§џ                       Ъ"pK     џџџџ           FB_WRITEPERSISTENTDATA        
   ADSWRTCTL1                       	   ADSWRTCTL `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              PORT           §џ              START            §џ              TMOUT         §џ              MODE               E_PersistentMode  §џ       D    =SPDM_2PASS: optimized boost; =SPDM_VAR_BOOST: boost per variable;       BUSY            §џ
              ERR            §џ              ERRID           §џ                       Ъ"pK     џџџџ           FILETIME_TO_DT           ui64                T_ULARGE_INTEGER `§џ	                 fileTime             
   T_FILETIME  §џ           Windows file time.       FILETIME_TO_DT                                     Ъ"pK     џџџџ           FILETIME_TO_SYSTEMTIME     	      D         ` §џ              M         ` §џ              Y         ` §џ           
   uiPastDays                T_ULARGE_INTEGER `§џ	              uiPastYears                T_ULARGE_INTEGER `§џ
              uiRemainder                T_ULARGE_INTEGER `§џ           
   dwPastDays         ` §џ              dwPastYears         ` §џ           
   dwYearDays         ` §џ                 fileTime             
   T_FILETIME  §џ                 FILETIME_TO_SYSTEMTIME                   
   TIMESTRUCT                            Ъ"pK     џџџџ           FIX16_TO_LREAL               in                 T_FIX16  §џ                 FIX16_TO_LREAL                                                  Ъ"pK     џџџџ           FIX16_TO_WORD               in                 T_FIX16  §џ           16 bit fixed point number       FIX16_TO_WORD                                     Ъ"pK     џџџџ           FIX16ADD               augend                 T_FIX16  §џ              addend                 T_FIX16  §џ                 FIX16Add                 T_FIX16                            Ъ"pK     џџџџ        
   FIX16ALIGN               in                 T_FIX16  §џ       #    16 bit signed fixed point number.    n                           §џ       ,    Number of fractional bits (decimal places)    
   FIX16Align                 T_FIX16                            Ъ"pK     џџџџ           FIX16DIV           tmpA         ` §џ	                 dividend                 T_FIX16  §џ              divisor                 T_FIX16  §џ                 FIX16Div                 T_FIX16                            Ъ"pK     џџџџ           FIX16MUL           tmp         ` §џ	                 multiA                 T_FIX16  §џ              multiB                 T_FIX16  §џ                 FIX16Mul                 T_FIX16                            Ъ"pK     џџџџ           FIX16SUB               minuend                 T_FIX16  §џ           
   subtrahend                 T_FIX16  §џ                 FIX16Sub                 T_FIX16                            Ъ"pK     џџџџ           GETREMOTEPCINFO           ADSREAD1                          ADSREAD `§џ           
   RisingEdge                 R_TRIG `§џ              FallingEdge                 F_TRIG `§џ           
   RouterInfo   	  c            
                ROUTERINFOSTRUCT         `§џ              iIndex         ` §џ              tmpNetId            
   T_AmsNetId `§џ              idx         ` §џ                 NETID            
   T_AmsNetId  §џ       D    Target NetID, usually left as empty string for reading local infos    START            §џ           Rising edge starts the FB   TMOUT         §џ       1    Set Timeout according to local or remote access       BUSY            §џ	       
    Ads busy    ERR            §џ
           Ads error    ERRID           §џ           Ads Error    RemotePCInfo               REMOTEPCINFOSTRUCT  §џ       N    field with all NetIDДs and PC names found in router, ordered as router gives             Ъ"pK     џџџџ           HEXSTR_TO_DATA           pSrc               ` §џ
              pDest               ` §џ              ascii         ` §џ              nibble         ` §џ              bAdd          ` §џ              bLN          ` §џ           hi/lo nibble       sHex               T_MaxString  §џ           Hex string to convert    pData           §џ           Pointer to destination buffer    cbData           §џ       !    Byte size of destination buffer       HEXSTR_TO_DATA                                     Ъ"pK     џџџџ           HOST_TO_BE128               in                T_UHUGE_INTEGER  §џ                 HOST_TO_BE128                T_UHUGE_INTEGER                            Ъ"pK     џџџџ           HOST_TO_BE16               in           §џ                 HOST_TO_BE16                                     Ъ"pK     џџџџ           HOST_TO_BE32           parr    	                            ` §џ                 in           §џ                 HOST_TO_BE32                                     Ъ"pK     џџџџ           HOST_TO_BE64               in                T_ULARGE_INTEGER  §џ                 HOST_TO_BE64                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           INT64_TO_LREAL               in                T_LARGE_INTEGER  §џ                 INT64_TO_LREAL                                                  Ъ"pK     џџџџ        
   INT64ADD64           bOV          ` §џ	                 i64a                T_LARGE_INTEGER  §џ              i64b                T_LARGE_INTEGER  §џ              
   Int64Add64                T_LARGE_INTEGER                            Ъ"pK     џџџџ           INT64ADD64EX               augend                T_LARGE_INTEGER  §џ              addend                T_LARGE_INTEGER  §џ                 Int64Add64Ex                T_LARGE_INTEGER                      bOV            §џ       3    TRUE => arithmetic overflow, FALSE => no overflow         Ъ"pK     џџџџ        
   INT64CMP64               i64a                T_LARGE_INTEGER  §џ              i64b                T_LARGE_INTEGER  §џ	              
   Int64Cmp64                                     Ъ"pK     џџџџ           INT64DIV64EX           bIsNegative          ` §џ           
   sRemainder                T_ULARGE_INTEGER `§џ                 dividend                T_LARGE_INTEGER  §џ              divisor                T_LARGE_INTEGER  §џ                 Int64Div64Ex                T_LARGE_INTEGER                   	   remainder                 T_LARGE_INTEGER §џ                   Ъ"pK     џџџџ           INT64ISZERO               i64                T_LARGE_INTEGER  §џ                 Int64IsZero                                      Ъ"pK     џџџџ           INT64NEGATE               i64                T_LARGE_INTEGER  §џ                 Int64Negate                T_LARGE_INTEGER                            Ъ"pK     џџџџ           INT64NOT               i64                T_LARGE_INTEGER  §џ                 Int64Not                T_LARGE_INTEGER                            Ъ"pK     џџџџ        
   INT64SUB64               i64a                T_LARGE_INTEGER  §џ       	    minuend    i64b                T_LARGE_INTEGER  §џ           substrahend    
   Int64Sub64                T_LARGE_INTEGER                            Ъ"pK     џџџџ           ISFINITE        	   ptrDouble    	                            ` §џ           	   ptrSingle               ` §џ	                 x                 T_ARG  §џ                 IsFinite                                      Ъ"pK     џџџџ           LARGE_INTEGER            
   dwHighPart           §џ           	   dwLowPart           §џ                 LARGE_INTEGER                T_LARGE_INTEGER                            Ъ"pK     џџџџ           LARGE_TO_ULARGE               in                T_LARGE_INTEGER  §џ                 LARGE_TO_ULARGE                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           LREAL_TO_FIX16               in                        §џ           LREAL number to convert    n                          §џ       ,    Number of fractional bits (decimal places)       LREAL_TO_FIX16                 T_FIX16                            Ъ"pK     џџџџ           LREAL_TO_FMTSTR           rec              
   T_FloatRec `§џ              pOut               ` §џ              iStart         ` §џ              iEnd         ` §џ              i         ` §џ                 in                        §џ
           
   iPrecision           §џ              bRound            §џ                 LREAL_TO_FMTSTR    џ      џ                             Ъ"pK     џџџџ           LREAL_TO_INT64               in                        §џ                 LREAL_TO_INT64                T_LARGE_INTEGER                            Ъ"pK     џџџџ           LREAL_TO_UINT64           tmp                      ` §џ                 in                        §џ                 LREAL_TO_UINT64                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           NT_ABORTSHUTDOWN        
   ADSWRTCTL1                       	   ADSWRTCTL `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              START            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ	              ERRID           §џ
                       Ъ"pK     џџџџ        
   NT_GETTIME           ADSREAD1                          ADSREAD `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              START            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ	              ERRID           §џ
              TIMESTR                   
   TIMESTRUCT  §џ                       Ъ"pK     џџџџ        	   NT_REBOOT        
   ADSWRTCTL1                       	   ADSWRTCTL `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              DELAY           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       Ъ"pK     џџџџ           NT_SETLOCALTIME        
   fbAdsWrite                          ADSWRITE `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              TIMESTR                   
   TIMESTRUCT  §џ           new local system time    START            §џ       4    rising edge activates the function block execution    TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       Ъ"pK     џџџџ           NT_SETTIMETORTCTIME        
   fbAdsWrite                          ADSWRITE `§џ           
   fbRegQuery                                 FB_RegQueryValue `§џ           
   RisingEdge                 R_TRIG `§џ              bTmp         ` §џ              state         ` §џ              bInit         ` §џ           	   numOfCPUs         ` §џ                 NETID            
   T_AmsNetId  §џ              SET            §џ       3    rising edge on this input starts the fb execution    TMOUT         §џ                 BUSY            §џ              ERR            §џ	              ERRID           §џ
                       Ъ"pK     џџџџ           NT_SHUTDOWN        
   ADSWRTCTL1                       	   ADSWRTCTL `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              DELAY           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       Ъ"pK     џџџџ           NT_STARTPROCESS        	   ADSWRITE1                          ADSWRITE `§џ           
   RisingEdge                 R_TRIG `§џ              FallingEdge                 F_TRIG `§џ              LenPath         ` §џ              LenDir         ` §џ           
   LenComLine         ` §џ              pData                  STARTPROC_BUFFER `§џ           data buffer       NETID            
   T_AmsNetId  §џ              PATHSTR               T_MaxString  §џ              DIRNAME               T_MaxString  §џ           	   COMNDLINE               T_MaxString  §џ              START            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       Ъ"pK     џџџџ           OTSTRUCT_TO_TIME           tmpMilli         ` §џ                 OTIN                    OTSTRUCT  §џ                 OTSTRUCT_TO_TIME                                     Ъ"pK     џџџџ           PBOOL_TO_BOOL               in                  §џ                 PBOOL_TO_BOOL                                      Ъ"pK     џџџџ           PBYTE_TO_BYTE               in                 §џ                 PBYTE_TO_BYTE                                     Ъ"pK     џџџџ           PDATE_TO_DATE               in                 §џ                 PDATE_TO_DATE                                     Ъ"pK     џџџџ           PDINT_TO_DINT               in                 §џ                 PDINT_TO_DINT                                     Ъ"pK     џџџџ        	   PDT_TO_DT               in                 §џ              	   PDT_TO_DT                                     Ъ"pK     џџџџ           PDWORD_TO_DWORD               in                 §џ                 PDWORD_TO_DWORD                                     Ъ"pK     џџџџ           PHUGE_TO_HUGE               in                 T_HUGE_INTEGER       §џ                 PHUGE_TO_HUGE                T_HUGE_INTEGER                            Ъ"pK     џџџџ           PINT_TO_INT               in                 §џ                 PINT_TO_INT                                     Ъ"pK     џџџџ           PLARGE_TO_LARGE               in                 T_LARGE_INTEGER       §џ                 PLARGE_TO_LARGE                T_LARGE_INTEGER                            Ъ"pK     џџџџ           PLC_READSYMINFO           ADSREAD1                          ADSREAD `§џ           
   RisingEdge                 R_TRIG `§џ              SymInfoStruct   	                       ` §џ                 NETID            
   T_AmsNetId  §џ              PORT           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              SYMCOUNT           §џ              SYMSIZE           §џ                       Ъ"pK     џџџџ           PLC_READSYMINFOBYNAME        	   ADSRDWRT1                            ADSRDWRT `§џ           
   RisingEdge                 R_TRIG `§џ              FallingEdge                 F_TRIG `§џ              symInfoBuffer                           SYMINFO_BUFFER `§џ           
   nameLength         ` §џ           
   typeLength         ` §џ              commentLength         ` §џ                 NETID            
   T_AmsNetId  §џ              PORT           §џ              SYMNAME               T_MaxString  §џ              START            §џ              TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ              SymInfo                     SYMINFOSTRUCT  §џ                       Ъ"pK     џџџџ        	   PLC_RESET        
   ADSWRTCTL1                       	   ADSWRTCTL `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              PORT           §џ              RESET            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       Ъ"pK     џџџџ        	   PLC_START        
   ADSWRTCTL1                       	   ADSWRTCTL `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              PORT           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       Ъ"pK     џџџџ           PLC_STOP        
   ADSWRTCTL1                       	   ADSWRTCTL `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              PORT           §џ              STOP            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       Ъ"pK     џџџџ           PLREAL_TO_LREAL               in                              §џ                 PLREAL_TO_LREAL                                                  Ъ"pK     џџџџ           PMAXSTRING_TO_MAXSTRING               in                 T_MaxString       §џ                 PMAXSTRING_TO_MAXSTRING               T_MaxString                            Ъ"pK     џџџџ           PREAL_TO_REAL               in                  §џ                 PREAL_TO_REAL                                      Ъ"pK     џџџџ           PROFILER     	      RisingEdgeStart                 R_TRIG `§џ              RisingEdgeReset                 R_TRIG `§џ              FallingEdgeStart                 F_TRIG `§џ              GETCPUACCOUNT1                GETCPUACCOUNT `§џ              OldCpuCntDW         ` §џ              MeasureData   	  d                     ` §џ              TimeSum         ` §џ              MaxData        ` §џ              idx         ` §џ                 START            §џ       0   rising edge starts measurement and falling stops   RESET            §џ                 BUSY            §џ              DATA                   PROFILERSTRUCT  §џ                         MAX_DATABUFF_SIZE    d   @ §џ           Ъ"pK     џџџџ           PSINT_TO_SINT               in                 §џ                 PSINT_TO_SINT                                     Ъ"pK     џџџџ           PSTRING_TO_STRING               in     Q       Q         §џ                 PSTRING_TO_STRING    Q       Q                              Ъ"pK     џџџџ           PTIME_TO_TIME               in                 §џ                 PTIME_TO_TIME                                     Ъ"pK     џџџџ           PTOD_TO_TOD               in                 §џ                 PTOD_TO_TOD                                     Ъ"pK     џџџџ           PUDINT_TO_UDINT               in                 §џ                 PUDINT_TO_UDINT                                     Ъ"pK     џџџџ           PUHUGE_TO_UHUGE               in                 T_UHUGE_INTEGER       §џ                 PUHUGE_TO_UHUGE                T_UHUGE_INTEGER                            Ъ"pK     џџџџ           PUINT64_TO_UINT64               in                 T_ULARGE_INTEGER       §џ                 PUINT64_TO_UINT64                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           PUINT_TO_UINT               in                 §џ                 PUINT_TO_UINT                                     Ъ"pK     џџџџ           PULARGE_TO_ULARGE               in                 T_ULARGE_INTEGER       §џ                 PULARGE_TO_ULARGE                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           PUSINT_TO_USINT               in                 §џ                 PUSINT_TO_USINT                                     Ъ"pK     џџџџ           PWORD_TO_WORD               in                 §џ                 PWORD_TO_WORD                                     Ъ"pK     џџџџ        
   RAD_TO_DEG               ANGLE                        §џ              
   RAD_TO_DEG                                                  Ъ"pK     џџџџ           ROUTETRANSPORT_TO_STRING               eType               E_RouteTransportType  §џ                 ROUTETRANSPORT_TO_STRING    Q       Q                              Ъ"pK     џџџџ           RTC           fbGetCpuCounter                 GETCPUCOUNTER `§џ           
   risingEdge                 R_TRIG `§џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              init         ` §џ                 EN            §џ              PDT           §џ                 Q            §џ              CDT           §џ	                       Ъ"pK     џџџџ           RTC_EX           fbGetCpuCounter                 GETCPUCOUNTER `§џ           
   risingEdge                 R_TRIG `§џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              init         ` §џ                 EN            §џ              PDT           §џ              PMSEK           §џ                 Q            §џ	              CDT           §џ
              CMSEK           §џ                       Ъ"pK     џџџџ           RTC_EX2     	      fbGetCpuCounter                 GETCPUCOUNTER `§џ           
   risingEdge                 R_TRIG `§џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              dateTime         ` §џ              init         ` §џ                 EN            §џ              PDT                   
   TIMESTRUCT  §џ              PMICRO           §џ                 Q            §џ	              CDT       ;    ( wYear := 1970, wMonth := 1, wDay := 1, wDayOfWeek := 4 )    В                  
   TIMESTRUCT  §џ
              CMICRO           §џ                       Ъ"pK     џџџџ           SCOPEASCIIEXPORT        
   fbAdsWrite                          ADSWRITE   §џ                 bExecute            §џ           	   sFilePath               T_MaxString  §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       Ъ"pK     џџџџ        	   SCOPEEXIT        
   fbAdsWrite                          ADSWRITE   §џ           
   RisingEdge                 R_TRIG   §џ              step            §џ              fbDelay                    TON   §џ                 bExecute            §џ       -    Rising edge starts function block execution    tTimeOut         §џ       >    Maximum time allowed for the execution of the function block       bBusy            §џ              bError            §џ              iErrorId           §џ	                       Ъ"pK     џџџџ           SCOPEGETRECORDLEN        	   fbAdsRead                          ADSREAD   §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ           
   fRecordLen                        §џ	                       Ъ"pK     џџџџ           SCOPEGETSTATE        	   fbAdsRead                          ADSREAD   §џ              State            §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ              bOnline            §џ	                       Ъ"pK     џџџџ           SCOPELOADFILE        
   fbAdsWrite                          ADSWRITE   §џ                 bExecute            §џ           	   sFilePath               T_MaxString  §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       Ъ"pK     џџџџ           SCOPEMANUALTRIGGER        
   fbAdsWrite                          ADSWRITE   §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       Ъ"pK     џџџџ           SCOPESAVEAS        
   RisingEdge                 R_TRIG   §џ           
   fbAdsWrite                          ADSWRITE   §џ              step            §џ                 bExecute            §џ       -    Rising edge starts function block execution 	   sFilePath               T_MaxString  §џ           e.g. c:\Axis1.scp   tTimeout         §џ       >    Maximum time allowed for the execution of the function block       bBusy            §џ              bError            §џ	              iErrorId           §џ
                       Ъ"pK     џџџџ           SCOPESETOFFLINE        
   fbAdsWrite                          ADSWRITE   §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       Ъ"pK     џџџџ           SCOPESETONLINE        
   fbAdsWrite                          ADSWRITE   §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       Ъ"pK     џџџџ           SCOPESETRECORDLEN        
   fbAdsWrite                          ADSWRITE   §џ                 bExecute            §џ           
   fRecordLen                        §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ	                       Ъ"pK     џџџџ           SCOPEVIEWEXPORT        
   fbAdsWrite                          ADSWRITE   §џ                 bExecute            §џ           	   sFilePath               T_MaxString  §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       Ъ"pK     џџџџ           STRING_TO_SYSTEMTIME           b   	                    16#31, 16#36, 16#30, 16#31, 	(* year 1601 *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* month *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* day *)
								16#2D(*-*), 16#30, 16#30(*00*),	(* hour *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* minute *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* second *)
								16#2E(*.*), 16#30, 16#30, 16#30(*000*), (* milliseconds *)
								16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` §џ           null delimiter    ts       *    ( wYear := 1601, wMonth := 1, wDay := 1 )    A               
   TIMESTRUCT `§џ              n         ` §џ              bFmt          ` §џ              dwYears         ` §џ              dwDays         ` §џ           	   Index7001                            in               §џ       1    Input string, format: '2007-03-05-17:35:09.223'       STRING_TO_SYSTEMTIME                   
   TIMESTRUCT                            Ъ"pK     џџџџ           STRING_TO_UINT64           ptr               ` §џ              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER `§џ	                 in               §џ                 STRING_TO_UINT64                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           SYSTEMTIME_TO_DT           b   	                 ќ    16#44, 16#54, 16#23(*DT#*),
										16#31, 16#39, 16#37, 16#30(*1970*),
										16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#00      D      T      #      1      9      7      0      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0           ` §џ              str             ` §џ
              nSeconds         ` §џ           	   Index7001                            TIMESTR                   
   TIMESTRUCT  §џ                 SYSTEMTIME_TO_DT                                     Ъ"pK     џџџџ           SYSTEMTIME_TO_FILETIME           tmp1                T_ULARGE_INTEGER `§џ	              tmp2                T_ULARGE_INTEGER `§џ
              pastDays         ` §џ              i         ` §џ              
   systemTime                   
   TIMESTRUCT  §џ                 SYSTEMTIME_TO_FILETIME             
   T_FILETIME                            Ъ"pK     џџџџ           SYSTEMTIME_TO_STRING           b   	                 Љ   16#31, 16#36, 16#30, 16#31(*1601*),		(* year *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* month *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* day *)
										16#2D(*-*), 16#30, 16#30(*00*),				(* hour *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* minute *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* second *)
										16#2E(*.*), 16#30, 16#30, 16#30(*000*),		(* milliseconds *)
										16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` §џ           	   Index7001                            in                   
   TIMESTRUCT  §џ                 SYSTEMTIME_TO_STRING                                         Ъ"pK     џџџџ        	   TC_CONFIG        
   ADSWRTCTL1                       	   ADSWRTCTL `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              SET            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ	              ERRID           §џ
                       Ъ"pK     џџџџ           TC_CPUUSAGE           ADSREAD1                          ADSREAD `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              START            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ	              ERRID           §џ
              USAGE           §џ          in %            Ъ"pK     џџџџ        
   TC_RESTART        
   ADSWRTCTL1                       	   ADSWRTCTL `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              RESTART            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ	              ERRID           §џ
                       Ъ"pK     џџџџ           TC_STOP        
   ADSWRTCTL1                       	   ADSWRTCTL `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              STOP            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ	              ERRID           §џ
                       Ъ"pK     џџџџ           TC_SYSLATENCY           ADSREAD1                          ADSREAD `§џ           
   RisingEdge                 R_TRIG `§џ              FallingEdge                 F_TRIG `§џ              tmpData   	                      ` §џ                 NETID            
   T_AmsNetId  §џ           Ams net id    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ	              ERRID           §џ
              ACTUAL           §џ           Actual latency in Еs    MAXIMUM           §џ           Maximum latency in Еs             Ъ"pK     џџџџ           TIME_TO_OTSTRUCT           tmpMilli         ` §џ                 TIN           §џ                 TIME_TO_OTSTRUCT                    OTSTRUCT                            Ъ"pK     џџџџ           UINT32X32TO64           Tmp1         ` §џ	              Tmp2         ` §џ
              Tmp3         ` §џ              Tmp4         ` §џ              DW1         ` §џ              DW2         ` §џ              DW3         ` §џ              DW4         ` §џ                 ui32a           §џ              ui32b           §џ                 UInt32x32To64                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           UINT64_TO_LREAL               in                T_ULARGE_INTEGER  §џ                 UINT64_TO_LREAL                                                  Ъ"pK     џџџџ           UINT64_TO_STRING        	   remainder                T_ULARGE_INTEGER `§џ              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER `§џ	                 in                T_ULARGE_INTEGER  §џ                 UINT64_TO_STRING                                         Ъ"pK     џџџџ           UINT64ADD64           bOV          ` §џ	                 ui64a                T_ULARGE_INTEGER  §џ              ui64b                T_ULARGE_INTEGER  §џ                 UInt64Add64                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           UINT64ADD64EX               augend                T_ULARGE_INTEGER  §џ              addend                T_ULARGE_INTEGER  §џ                 UInt64Add64Ex                T_ULARGE_INTEGER                      bOV            §џ       3    TRUE => arithmetic overflow, FALSE => no overflow         Ъ"pK     џџџџ        	   UINT64AND               ui64a                T_ULARGE_INTEGER  §џ              ui64b                T_ULARGE_INTEGER  §џ              	   UInt64And                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           UINT64CMP64               ui64a                T_ULARGE_INTEGER  §џ              ui64b                T_ULARGE_INTEGER  §џ	                 UInt64Cmp64                                     Ъ"pK     џџџџ           UINT64DIV16EX        	   pDividend    	                            ` §џ              pResult    	                            ` §џ              rest         ` §џ                 dividend                T_ULARGE_INTEGER  §џ              divisor           §џ                 UInt64Div16Ex                T_ULARGE_INTEGER                   	   remainder                 T_ULARGE_INTEGER §џ                   Ъ"pK     џџџџ           UINT64DIV64        	   remainder                T_ULARGE_INTEGER `§џ	                 dividend                T_ULARGE_INTEGER  §џ              divisor                T_ULARGE_INTEGER  §џ                 UInt64Div64                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           UINT64DIV64EX           msBit       /    ( dwHighPart := 16#80000000, 	dwLowPart := 0 )               T_ULARGE_INTEGER `§џ              bitShift         ` §џ              cmp         ` §џ              in   	                      T_ULARGE_INTEGER         `§џ              out   	                      T_ULARGE_INTEGER         `§џ           
   cbReturned         ` §џ           	   Index7001                            dividend                T_ULARGE_INTEGER  §џ              divisor                T_ULARGE_INTEGER  §џ                 UInt64Div64Ex                T_ULARGE_INTEGER                   	   remainder                 T_ULARGE_INTEGER §џ                   Ъ"pK     џџџџ           UINT64ISZERO               ui64                T_ULARGE_INTEGER  §џ                 UInt64isZero                                      Ъ"pK     џџџџ           UINT64LIMIT               ui64min                T_ULARGE_INTEGER  §џ              ui64in                T_ULARGE_INTEGER  §џ              ui64max                T_ULARGE_INTEGER  §џ                 UInt64Limit                T_ULARGE_INTEGER                            Ъ"pK     џџџџ        	   UINT64MAX               ui64a                T_ULARGE_INTEGER  §џ              ui64b                T_ULARGE_INTEGER  §џ              	   UInt64Max                T_ULARGE_INTEGER                            Ъ"pK     џџџџ        	   UINT64MIN               ui64a                T_ULARGE_INTEGER  §џ              ui64b                T_ULARGE_INTEGER  §џ              	   UInt64Min                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           UINT64MOD64               dividend                T_ULARGE_INTEGER  §џ              divisor                T_ULARGE_INTEGER  §џ                 UInt64Mod64                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           UINT64MUL64           bOV          ` §џ	                 multiplicand                T_ULARGE_INTEGER  §џ           
   multiplier                T_ULARGE_INTEGER  §џ                 UInt64Mul64                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           UINT64MUL64EX           bCarry          ` §џ           	   bSumCarry          ` §џ              n         ` §џ              m         ` §џ                 multiplicand                T_ULARGE_INTEGER  §џ           
   multiplier                T_ULARGE_INTEGER  §џ                 UInt64Mul64Ex                T_ULARGE_INTEGER                      bOV            §џ       3    TRUE => Arithmetic overflow, FALSE => no overflow         Ъ"pK     џџџџ        	   UINT64NOT               ui64                T_ULARGE_INTEGER  §џ              	   UInt64Not                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           UINT64OR               ui64a                T_ULARGE_INTEGER  §џ              ui64b                T_ULARGE_INTEGER  §џ                 UInt64Or                T_ULARGE_INTEGER                            Ъ"pK     џџџџ        	   UINT64ROL           bMSB          ` §џ	                 ui64                T_ULARGE_INTEGER  §џ              n           §џ              	   UInt64Rol                T_ULARGE_INTEGER                            Ъ"pK     џџџџ        	   UINT64ROR           bLSB          ` §џ	                 ui64                T_ULARGE_INTEGER  §џ              n           §џ              	   UInt64Ror                T_ULARGE_INTEGER                            Ъ"pK     џџџџ        	   UINT64SHL               ui64                T_ULARGE_INTEGER  §џ              n           §џ              	   UInt64Shl                T_ULARGE_INTEGER                            Ъ"pK     џџџџ        	   UINT64SHR               ui64                T_ULARGE_INTEGER  §џ              n           §џ              	   UInt64Shr                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           UINT64SUB64               ui64a                T_ULARGE_INTEGER  §џ              ui64b                T_ULARGE_INTEGER  §џ                 UInt64Sub64                T_ULARGE_INTEGER                            Ъ"pK     џџџџ        	   UINT64XOR               ui64a                T_ULARGE_INTEGER  §џ              ui64b                T_ULARGE_INTEGER  §џ              	   UInt64Xor                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           ULARGE_INTEGER            
   dwHighPart           §џ           	   dwLowPart           §џ                 ULARGE_INTEGER                T_ULARGE_INTEGER                            Ъ"pK     џџџџ           ULARGE_TO_LARGE               in                T_ULARGE_INTEGER  §џ                 ULARGE_TO_LARGE                T_LARGE_INTEGER                            Ъ"pK     џџџџ           WORD_TO_FIX16               in           §џ           16 bit fixed point number    n                           §џ           number of fractional bits       WORD_TO_FIX16                 T_FIX16                            Ъ"pK     џџџџ           WRITEPERSISTENTDATA        
   ADSWRTCTL1                       	   ADSWRTCTL `§џ           
   RisingEdge                 R_TRIG `§џ                 NETID            
   T_AmsNetId  §џ              PORT           §џ              START            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       Ъ"pK     џџџџ    w   C:\TWINCAT\PLC\LIB\TcSocketHelper.lib @                                                                                          F_CREATESERVERHND            	   sSrvNetID           ''    
   T_AmsNetID  §џ       Z    The network address of the TcpIpServer.exe. If empty string=>server runs on local system 
   sLocalHost               §џ	       W    Local (server) address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ
       -    Local (server) Internet Protocol (IP) port.    nMode          §џ           Listen mode flags    bEnable           §џ       -    TRUE opens and FALSE closes listener socket       F_CreateServerHnd                                hServer                           	   T_HSERVER §џ           TCP/IP plc server handle         @џJ     џџџџ           F_GETVERSIONTCSOCKETHELPER               nVersionElement           §џ                 F_GetVersionTcSocketHelper                                     @џJ     џџџџ           FB_CLIENTSERVERCONNECTION           eStep               E_ConnEstablishState `§џ           Internal state 	   fbConnect                            FB_SocketConnect `§џ              fbClose        
                FB_SocketClose `§џ              timer           ( PT := T#0s )                TON `§џ       [    This timer specifies when open is retried. At the first time open is retried immediatelly.   fallingEdge                 F_TRIG `§џ           
   bConnected          ` §џ           Internal flag    sHSocket    Q       Q  ` §џ              	   sSrvNetID           ''    
   T_AmsNetID  §џ       Z    The network address of the TcpIpServer.exe. If empty string=>server runs on local system    nMode           §џ           OR CONNECT_MODE_ENABLEDBG    sRemoteHost               §џ       X    Remote (server) address. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       .    Remote (server) Internet Protocol (IP) port.    bEnable            §џ       4    TRUE = connect, FALSE = disconnect or don't connect
   tReconnect    ШЏ     §џ	       /    This timer specifies when connect is retried.       bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET  §џ           Socket handle    eState           eSOCKET_DISCONNECTED       E_SocketConnectionState  §џ           Connection state             @џJ     џџџџ           FB_SERVERCLIENTCONNECTION     	   
   risingEdge                 R_TRIG `§џ              fallingEdge                 F_TRIG `§џ              timer                    TON `§џ       -    This timer specifies when accept is retried    timer2                    TON `§џ       -    This timer specifies when listen is retried 
   bConnected          ` §џ       7    Internal flag, TRUE = Connection successfull accepted 
   bListening          ` §џ       T    Internal flat, TRUE = Listener socket is opened, FALSE = Listener socket is closed    eStep               E_ConnEstablishState `§џ           Internal state    pLocked         ` §џ              sHSocket    Q       Q  ` §џ                 eMode           eACCEPT_ALL       E_SocketAcceptMode  §џ           Connection accept flags    sRemoteHost               §џ       X    Remote (client) address. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ	       .    Remote (client) Internet Protocol (IP) port.    bEnable            §џ
       $    TRUE = connect, FALSE = disconnect.
   tReconnect    ш     §џ       .    This timer specifies when accept is retried.       bBusy            §џ              bError            §џ              nErrID           §џ              hSocket              	   T_HSOCKET  §џ           Socket handle    eState           eSOCKET_DISCONNECTED       E_SocketConnectionState  §џ           Connection state       hServer                           	   T_HSERVER §џ           TCP/IP plc server handle         @џJ     џџџџ           FB_SOCKETLISTENEX           nStep         ` §џ           
   fbAdsRdWrt                            ADSRDWRT `§џ           
   RisingEdge                 R_TRIG `§џ              request                ST_SockAddr `§џ              response                ST_TcIpConnSvrResponse `§џ           
   fbCloseAll        	               FB_SocketCloseAll `§џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpServer.exe. If empty string=>server runs on local system
   sLocalHost               §џ       W    Local (server) address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ       -    Local (server) Internet Protocol (IP) port.    nMode          §џ              bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ           	   hListener              	   T_HSOCKET  §џ       _   This returned value is a handle for the listener socket on which the actual connection is made.              TCPADSCONLST_IOF_GETHNDLBYADDR        `§џ           @џJ     џџџџ           FB_SOCKETRECEIVEEX        	   fbReceive                           FB_SocketReceive `§џ           
   RisingEdge                 R_TRIG `§џ              timer                    FB_ThrottleTimer `§џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcIpConnSvr.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       3    Contains the max. number of bytes to be received.    pDest           §џ       ;    Contains the address OF the buffer FOR the received data.    bExecute            §џ       F    FUNCTION block execution is triggered BY a rising edge AT this input.   tTimeout         §џ	       3    States the time before the function is cancelled.    throttleTimes       f    T#0s, T#10ms, T#20ms, T#40ms, T#60ms, T#80ms, T#100ms, T#200ms, T#400ms, T#600ms, T#800ms, T#1s, T#2s       T_ThrottleTimes  §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ           	   nRecBytes           §џ       2    Contains the number of bytes currently received.             @џJ     џџџџ           FB_THROTTLETIMER           timer                    TON `§џ              selector         ` §џ                 bIn            §џ       ?    Starts timer with rising edge, resets timer with falling edge    tT               T_ThrottleTimes  §џ                 bOut            §џ              tElapsed           §џ	                       @џJ     џџџџ           HSOCKET_TO_STRING               hSocket              	   T_HSOCKET  §џ                 HSOCKET_TO_STRING    Q       Q                              @џJ     џџџџ    o   C:\TWINCAT\PLC\LIB\TcBase.lib @                                                                                          FW_ADSCLEAREVENTS           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ           
   READ_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              bClear            §џ              nMode           §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ                       ррJ     џџџџ           FW_ADSLOGDINT            	   nCtrlMask           §џ              sMsgFmt               §џ              nArg           §џ                 FW_AdsLogDINT                                     ррJ     џџџџ           FW_ADSLOGEVENT        
   STAMPREQ_I            §џ           
   STAMPRES_I            §џ           
   STAMPSIG_I            §џ           
   STAMPCON_I            §џ              ACCESSCNT_I            §џ           	   AMSADDR_I   	                         §џ              EVENT_I                      
   FW_TcEvent   §џ              pTCEVENTSTREAM_I            §џ              CBEVENTSTREAM_I            §џ              nSTATE_I            §џ              nSTATEREQ_I            §џ              nSTATERES_I            §џ              nSTATESIG_I            §џ               nSTATECON_I            §џ!              ERR_I             §џ"              ERRID_I            §џ#              bEVENT_SAV_I             §џ$              bEVENTQUIT_SAV_I             §џ%              TICKSTART_I            §џ&           	      sNetId               §џ              nPort           §џ              bEvent            §џ           
   bEventQuit            §џ              stEventConfigData                      
   FW_TcEvent  §џ              pEventDataAddress           §џ       	    pointer    cbEventDataLength           §џ	           
   bFbCleanup            §џ
              tTimeout           §џ                 nEventState           §џ              bError            §џ              nErrId           §џ              bQuit            §џ                       ррJ     џџџџ           FW_ADSLOGLREAL            	   nCtrlMask           §џ              sMsgFmt               §џ              fArg                        §џ                 FW_AdsLogLREAL                                     ррJ     џџџџ           FW_ADSLOGSTR            	   nCtrlMask           §џ              sMsgFmt               §џ              sArg               §џ                 FW_AdsLogSTR                                     ррJ     џџџџ           FW_ADSRDWRT           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRTRD_SAV_I             §џ              PDESTADDR_I            §џ              TICKSTART_I            §џ           
      sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           
   cbWriteLen           §џ           	   cbReadLen           §џ           
   pWriteBuff           §џ	           	   pReadBuff           §џ
              bExecute            §џ              tTimeout           §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read             ррJ     џџџџ           FW_ADSRDWRTIND           CLEAR_I             §џ                 bClear            §џ           	      bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           	   cbReadLen           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ                       ррJ     џџџџ           FW_ADSRDWRTRES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bRespond            §џ	                           ррJ     џџџџ        
   FW_ADSREAD           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ           
   READ_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read             ррJ     џџџџ           FW_ADSREADDEVICEINFO           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              RDINFO_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              bExecute            §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              sDevName               §џ              nDevVersion           §џ                       ррJ     џџџџ           FW_ADSREADIND           CLEAR_I             §џ                 bClear            §џ                 bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           	   cbReadLen           §џ                       ррJ     џџџџ           FW_ADSREADRES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bRespond            §џ	                           ррJ     џџџџ           FW_ADSREADSTATE           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              RDSTATE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              bExecute            §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ           	   nAdsState           §џ           	   nDevState           §џ                       ррJ     џџџџ           FW_ADSWRITE           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRITE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       ррJ     џџџџ           FW_ADSWRITECONTROL           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRITE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ           	   nAdsState           §џ           	   nDevState           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       ррJ     џџџџ           FW_ADSWRITEIND           CLEAR_I             §џ                 bClear            §џ                 bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ                       ррJ     џџџџ           FW_ADSWRITERES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ              bRespond            §џ                           ррJ     џџџџ           FW_DRAND           FirstCall_i             §џ	           
   HoldRand_i            §џ
              R250_Buffer_i   	  љ                        §џ           
   R250_Index            §џ                 nSeed           §џ                 fRndNum                        §џ                       ррJ     џџџџ           FW_GETCPUACCOUNT                   dwCpuAccount           §џ                       ррJ     џџџџ           FW_GETCPUCOUNTER                
   dwCpuCntLo           §џ           
   dwCpuCntHi           §џ                       ррJ     џџџџ           FW_GETCURTASKINDEX                   nIndex           §џ                       ррJ     џџџџ           FW_GETSYSTEMTIME                   dwTimeLo           §џ              dwTimeHi           §џ                       ррJ     џџџџ           FW_GETVERSIONTCBASE               nVersionElement           §џ                 FW_GetVersionTcBase                                     ррJ     џџџџ           FW_LPTSIGNAL            	   nPortAddr           §џ              nPinNo           §џ              bOnOff            §џ	                 FW_LptSignal                                      ррJ     џџџџ        	   FW_MEMCMP               pBuf1           §џ           First buffer    pBuf2           §џ           Second buffer    cbLen           §џ           Number of characters    	   FW_MemCmp                                     ррJ     џџџџ        	   FW_MEMCPY               pDest           §џ           New buffer    pSrc           §џ           Buffer to copy from    cbLen           §џ           Number of characters to copy    	   FW_MemCpy                                     ррJ     џџџџ        
   FW_MEMMOVE               pDest           §џ           New buffer    pSrc           §џ           Buffer to copy from    cbLen           §џ           Number of characters to copy    
   FW_MemMove                                     ррJ     џџџџ        	   FW_MEMSET               pDest           §џ           Pointer to destination 	   nFillByte           §џ           Character to set    cbLen           §џ           Number of characters    	   FW_MemSet                                     ррJ     џџџџ           FW_PORTREAD            	   nPortAddr           §џ           	   eNoOfByte               FW_NoOfByte  §џ                 FW_PortRead                                     ррJ     џџџџ           FW_PORTWRITE            	   nPortAddr           §џ           	   eNoOfByte               FW_NoOfByte  §џ              nValue           §џ                 FW_PortWrite                                      ррJ     џџџџ    q   C:\TWINCAT\PLC\LIB\standard.lib @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         Фн66     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             Фн66     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             Фн66     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             Фн66     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         Фн66     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             Фн66     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     Фн66     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         Фн66     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         Фн66     џџџџ           LEN               STR               §џ                 LEN                                     Фн66     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         Фн66     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             Фн66     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         Фн66     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         Фн66     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       Фн66     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       Фн66     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       Фн66     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             Фн66     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             Фн66     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             Фн66     џџџџ    v   C:\TWINCAT\PLC\LIB\ClientStrSock.lib @                                                                                
          F_ADSLOGERROR               sPrefix               §џ       O    Debug message prefix string (allows the identification of log message source)    nErrID           §џ           Error code       F_ADSLOGERROR                                     GkP     џџџџ           F_ADSLOGSTRING               sPrefix               §џ       O    Debug message prefix string (allows the identification of log message source)    sMsg               T_MaxString  §џ           Message string       F_ADSLOGSTRING                                     GkP     џџџџ        
   F_DATAPREP           i            §џ              j            §џ              str           ''       T_MaxString   §џ              str2                §џ              str3          10     §џ              value            §џ              	   msgheader               §џ           
   msgMsgType               §џ              msgSystemType               §џ              msgDeviceType               §џ           	   msgDevNum               §џ              msgDataType               §џ              msgDevision               §џ	           	   msgSubDev               §џ
              msgReserved_1               §џ              msgReserved_2               §џ           
   dataheader               §џ              data1dig   	                         §џ              data3dig   	                          §џ              data3dig_Htr    џ      §џ              data3dig_Ltr           §џ              data4dig   	                          §џ              data8dig   	                         §џ              dataS               §џ              
   F_DataPrep               T_MaxString                            GkP     џџџџ        
   F_VALSCALE           v            §џ                 value           §џ              trs_H           §џ              trs_L           §џ              
   F_ValScale                                     GkP     џџџџ        
   F_VALTOSTR           i            §џ              val            §џ              dig            §џ	              str1    Q       Q     §џ
              str2    Q       Q     §џ              str3          000     §џ                 value           §џ       0    чэрїхэшх, ъюђю№юх эхюсѕюфшью ях№хтхёђш т ёђ№юъѓ   digit           §џ       g    ъюышїхёђтю №рч№џфют, ъюђю№юх фюыцэю сћђќ т ёђ№юїэюь я№хфёђртыхэшш. Тёх "яѓёђћх" №рч№џфћ чряюыэџўђёџ 0    
   F_ValToStr    Q       Q                              GkP     џџџџ           FB_CLIENTAPPLICATION     
      lengthS1            §џ              lengthS2            §џ           	   sToServer           ''       T_MaxString   §џ              sFromServer           ''       T_MaxString   §џ               fbClient                                         FB_LocalClient   §џ!       -    Client data exchange control function block    tx        	               FB_FrameStringFifo   §џ"       	    Tx fifo    rx        	               FB_FrameStringFifo   §џ#       	    Rx fifo    errors                      FB_ProtErrorFifo   §џ$           Error fifo    sndTimer                    TON   §џ%              rcvTimer                    TON   §џ&       $   	state		: BYTE;(* application state       bDbg           §џ       /    TRUE => Enable debug output, FALSE => Disable    sRemoteHost       	   127.0.0.1    §џ              nRemotePort    '     §џ              bEnable            §џ              bRequest            §џ              msgToServer           ''       T_MaxString  §џ              state           §џ              send_status_reset            §џ                 eState           eSOCKET_DISCONNECTED       E_SocketConnectionState  §џ           TCP/IP connection state    answer           ''       T_MaxString  §џ           
   bDataReady            §џ           
   receive_ok            §џ              send_ok            §џ                       GkP     џџџџ           FB_FRAMESTRINGFIFO           buffer   	  ш  §џџџ                 §џ           Internal buffer memory    fbBuffer           (bOverwrite := FALSE)	                    FB_StringRingBuffer   §џ       :    Basic (lower level) string buffer control function block       sDesc          Unknown    §џ       T    Debug message description string (allows the identification of log message source)    bDbg            §џ       /    TRUE => Enable debug output, FALSE => Disable    putValue           ''       T_MaxString  §џ       %    String to add (write) to the buffer       bOk            §џ	       T    TRUE = New entry added or removed succesfully, FALSE = Fifo overflow or fifo empty    getValue           ''       T_MaxString  §џ
       #    String removed (read) from buffer    nCount           §џ           Number of fifo entries    cbFree           §џ           Free buffer space             GkP     џџџџ           FB_LOCALCLIENT        	   fbConnect           ( tReconnect := T#45s )                ШЏ          FB_ClientServerConnection   §џ-       "    create/release TCP/IP connection    fbSend                          FB_SocketSend   §џ.           send TCP/IP data 	   fbReceive                           FB_SocketReceive   §џ/           receive TCP/IP data    state            §џ0           global state    tx_state            §џ1       
    tx state    rx_state            §џ2       
    rx state    bDisconnect             §џ3       3    disconnect flag, if set the socket will be closed 	   pollTimer                    TON   §џ4           
   cbReceived            §џ5           count of received data bytes    cbRx            §џ6            byte length of received string    rxFrame               T_MaxString   §џ7              txFrame               T_MaxString   §џ8              buffer   	  ш                       §џ9           Temp. RX buffer    i            §џ:              bAbort             §џ;              sID                §џ<              bWaitForAnswer             §џ>                 bDbg           §џ        <    TRUE => Enable debug output, FALSE => Disable debug output    sRemoteHost          192.168.3.229    §џ!           IP address of remote server    nRemotePort    И"     §џ"           Remote server port    bEnable            §џ#       5    TRUE => Enable/connect, FALSE => Disable/disconnect 
   tReconnect    ШЏ     §џ$       "    Try to reconnect after this time       eState           eSOCKET_DISCONNECTED       E_SocketConnectionState  §џ(           TCP/IP connection state    received_string               T_MaxString  §џ)          	bDataReady: BOOL:=FALSE;      tx         	               FB_FrameStringFifo §џ       	    TX fifo    rx         	               FB_FrameStringFifo §џ       	    RX fifo    errors                 FB_ProtErrorFifo §џ           Error message fifo         GkP     џџџџ           FB_PROTERRORFIFO           buffer   	     §џџџ                 §џ           Internal buffer memory    fbBuffer                              FB_MemRingBuffer   §џ       3    Basic (lower level) buffer control function block       sDesc          Unknown    §џ       P    Debug message description string (allows the identification of message source)    bDbg            §џ       /    TRUE => Enable debug output, FALSE => Disable    putError           §џ       '    Error code to add (write) to the fifo       bOk            §џ	       T    TRUE = New entry added or removed succesfully, FALSE = Fifo overflow or fifo empty    getError           §џ
       )    Error code get/removed (read) from fifo    nCount           §џ           Number of fifo entries             GkP     џџџџ        
   SCODE_CODE               sc           §џ              
   SCODE_CODE                                     GkP     џџџџ    q   C:\TWINCAT\PLC\LIB\TcSystem.lib @                                                                                L          ADSCLEAREVENTS           fbAdsClearEvents                            FW_AdsClearEvents   §џ                 NetID            
   T_AmsNetId  §џ              bClear            §џ              iMode           §џ              tTimeout         §џ                 bBusy            §џ	              bErr            §џ
              iErrId           §џ                       
K     џџџџ        
   ADSLOGDINT               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString  §џ              dintArg           §џ              
   ADSLOGDINT                                     
K     џџџџ           ADSLOGEVENT           fbAdsLogEvent                                               FW_AdsLogEvent   §џ           	      NETID            
   T_AmsNetId  §џ              PORT           §џ              Event            §џ           	   EventQuit            §џ              EventConfigData               TcEvent  §џ              EventDataAddress           §џ       	    pointer    EventDataLength           §џ	           	   FbCleanup            §џ
              TMOUT         §џ              
   EventState           §џ              Err            §џ              ErrId           §џ              Quit            §џ                       
K     џџџџ           ADSLOGLREAL               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString  §џ              lrealArg                        §џ                 ADSLOGLREAL                                     
K     џџџџ        	   ADSLOGSTR               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString  §џ              strArg               T_MaxString  §џ              	   ADSLOGSTR                                     
K     џџџџ           ADSRDDEVINFO           fbAdsReadDeviceInfo                              FW_AdsReadDeviceInfo   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              RDINFO            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              DEVNAME               §џ              DEVVER           §џ                       
K     џџџџ        
   ADSRDSTATE           fbAdsReadState                              FW_AdsReadState   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              RDSTATE            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              ADSSTATE           §џ              DEVSTATE           §џ                       
K     џџџџ           ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ           
      NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ	              DESTADDR           §џ
              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       
K     џџџџ        
   ADSRDWRTEX        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ           
      NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ	              DESTADDR           §џ
              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             
K     џџџџ           ADSRDWRTIND           fbAdsRdWrtInd                         FW_AdsRdWrtInd   §џ                 CLEAR            §џ           	      VALID            §џ              NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              RDLENGTH           §џ           	   WRTLENGTH           §џ              DATAADDR           §џ                       
K     џџџџ           ADSRDWRTRES           fbAdsRdWrtRes                      FW_AdsRdWrtRes   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              INVOKEID           §џ              RESULT           §џ              LEN           §џ              DATAADDR           §џ              RESPOND            §џ	                           
K     џџџџ           ADSREAD        	   fbAdsRead                              
   FW_AdsRead   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       
K     џџџџ        	   ADSREADEX        	   fbAdsRead                              
   FW_AdsRead   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             
K     џџџџ        
   ADSREADIND           fbAdsReadInd        	               FW_AdsReadInd   §џ                 CLEAR            §џ                 VALID            §џ              NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              LENGTH           §џ                       
K     џџџџ        
   ADSREADRES           fbAdsReadRes                      FW_AdsReadRes   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              INVOKEID           §џ              RESULT           §џ              LEN           §џ              DATAADDR           §џ              RESPOND            §џ	                           
K     џџџџ           ADSWRITE        
   fbAdsWrite                                FW_AdsWrite   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       
K     џџџџ           ADSWRITEIND           fbAdsWriteInd        
                FW_AdsWriteInd   §џ                 CLEAR            §џ                 VALID            §џ              NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              LENGTH           §џ              DATAADDR           §џ                       
K     џџџџ           ADSWRITERES           fbAdsWriteRes                    FW_AdsWriteRes   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              INVOKEID           §џ              RESULT           §џ              RESPOND            §џ                           
K     џџџџ        	   ADSWRTCTL           fbAdsWriteControl                                FW_AdsWriteControl   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              ADSSTATE           §џ              DEVSTATE           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       
K     џџџџ           ANALYZEEXPRESSION               InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ           	   OutString               §џ                       
K     џџџџ           ANALYZEEXPRESSIONCOMBINED           Index            §џ                 InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ              OutTable   	                        ExpressionResult          §џ           	   OutString               §џ	                       
K     џџџџ           ANALYZEEXPRESSIONTABLE           Index            §џ                 InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ              OutTable   	                        ExpressionResult          §џ                       
K     џџџџ           APPENDERRORSTRING               strOld               §џ              strNew               §џ                 AppendErrorString                                         
K     џџџџ        
   CLEARBIT32           dwConst           §џ                 inVal32           §џ              bitNo           §џ              
   CLEARBIT32                                     
K     џџџџ        	   CSETBIT32           dwConst           §џ                 inVal32           §џ              bitNo           §џ              bitVal            §џ       &    value to which the bit should be set    	   CSETBIT32                                     
K     џџџџ           DRAND           fbDRand                    FW_DRand   §џ	                 Seed           §џ                 Num                        §џ                       
K     џџџџ           F_COMPAREFWVERSION               major         ` §џ           requiered major version    minor         ` §џ	           requiered minor version    revision         ` §џ
       )    requiered revision/service pack version    patch         ` §џ       0    required patch version (reserved, default = 0 )      F_CompareFwVersion                                      
K     џџџџ           F_CREATEAMSNETID           idx         ` §џ                 nIds               T_AmsNetIdArr  §џ           Ams Net ID as array of bytes.       F_CreateAmsNetId            
   T_AmsNetId                            
K     џџџџ           F_CREATEIPV4ADDR           idx         ` §џ                 nIds               T_IPv4AddrArr  §џ       <    Internet Protocol dotted address (ipv4) as array of bytes.       F_CreateIPv4Addr            
   T_IPv4Addr                            
K     џџџџ           F_GETVERSIONTCSYSTEM               nVersionElement           §џ                 F_GetVersionTcSystem                                     
K     џџџџ           F_IOPORTREAD               nAddr           §џ           Port address    eSize               E_IOAccessSize  §џ           Number of bytes to read       F_IOPortRead                                     
K     џџџџ           F_IOPORTWRITE               nAddr           §џ           Port address    eSize               E_IOAccessSize  §џ           Number of bytes to write    nValue           §џ           Value to write       F_IOPortWrite                                      
K     џџџџ           F_SCANAMSNETIDS           pNetID               ` §џ              b               T_AmsNetIdArr `§џ              w         ` §џ	              id         ` §џ
           	   Index7001                            sNetID            
   T_AmsNetID  §џ       :    String containing the Ams Net ID. E.g. '127.16.17.3.1.1'       F_ScanAmsNetIds               T_AmsNetIdArr                            
K     џџџџ           F_SCANIPV4ADDRIDS           b               T_AmsNetIdArr `§џ           	   Index7001                            sIPv4            
   T_IPv4Addr  §џ       M    String containing the Internet Protocol dotted address. E.g. '172.16.7.199'       F_ScanIPv4AddrIds               T_IPv4AddrArr                            
K     џџџџ           F_SPLITPATHNAME           pPath                  §џ              pSlash                  §џ              pDot                  §џ              p                  §џ              length            §џ              	   sPathName               T_MaxString  §џ                 F_SplitPathName                                sDrive               §џ              sDir                T_MaxString §џ           	   sFileName                T_MaxString §џ              sExt                T_MaxString §џ	                   
K     џџџџ           F_TOASC           pChar                  §џ                 str    Q       Q    §џ                 F_ToASC                                     
K     џџџџ           F_TOCHR           pChar    	                               §џ                 c           §џ                 F_ToCHR    Q       Q                              
K     џџџџ           FB_CREATEDIR        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ                 sNetId            
   T_AmsNetId  §џ           ams net id 	   sPathName               T_MaxString  §џ           max directory length = 255    ePath           PATH_GENERIC    
   E_OpenPath  §џ       +    Default: Create directory at generic path    bExecute            §џ       %    rising edge start command execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       
K     џџџџ           FB_EOF        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ              nEOF            §џ           
   RisingEdge                 R_TRIG   §џ              FallingEdge                 F_TRIG   §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              bEOF            §џ                       
K     џџџџ           FB_FILECLOSE        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ       %    file handle obtained through 'open'    bExecute            §џ           close control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ                       
K     џџџџ           FB_FILEDELETE        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ              tmpOpenMode            §џ                 sNetId            
   T_AmsNetId  §џ           ams net id 	   sPathName               T_MaxString  §џ           file path and name    ePath           PATH_GENERIC    
   E_OpenPath  §џ           Default: Open generic file    bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       
K     џџџџ           FB_FILEGETS        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ           
   RisingEdge                 R_TRIG   §џ              FallingEdge                 F_TRIG   §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              sLine               T_MaxString  §џ              bEOF            §џ                       
K     џџџџ           FB_FILEOPEN        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ              tmpOpenMode            §џ              tmpHndl            §џ           
   RisingEdge                 R_TRIG   §џ              FallingEdge                 F_TRIG   §џ                 sNetId            
   T_AmsNetId  §џ           ams net id 	   sPathName               T_MaxString  §џ           max filename length = 255    nMode           §џ           open mode flags    ePath           PATH_GENERIC    
   E_OpenPath  §џ           Default: Open generic file    bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              hFile           §џ           file handle             
K     џџџџ           FB_FILEPUTS        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ           
   RisingEdge                 R_TRIG   §џ              FallingEdge                 F_TRIG   §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ           file handle    sLine               T_MaxString  §џ           string to write    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       
K     џџџџ           FB_FILEREAD        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ           
   RisingEdge                 R_TRIG   §џ              FallingEdge                 F_TRIG   §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ           file handle 	   pReadBuff           §џ           buffer address for read 	   cbReadLen           §џ           count of bytes for read    bExecute            §џ           read control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read    bEOF            §џ                       
K     џџџџ           FB_FILERENAME        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ              tmpOpenMode            §џ           
   sBothNames   	                    T_MaxString           §џ           = SIZEOF( T_MaxString ) * 2    nOldLen            §џ              nNewLen            §џ           
   RisingEdge                 R_TRIG   §џ              FallingEdge                 F_TRIG   §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    sOldName               T_MaxString  §џ           max filename length = 255    sNewName               T_MaxString  §џ           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath  §џ           Default: generic file path   bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       
K     џџџџ           FB_FILESEEK        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ           
   tmpSeekPos   	                          §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ	           file handle    nSeekPos           §џ
           new seek pointer position    eOrigin       	    SEEK_SET       E_SeekOrigin  §џ              bExecute            §џ           seek control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       
K     џџџџ           FB_FILETELL        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              nSeekPos           §џ          	On error, nSEEKPOS returns -1             
K     џџџџ           FB_FILEWRITE        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ           
   RisingEdge                 R_TRIG   §џ              FallingEdge                 F_TRIG   §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ           file handle 
   pWriteBuff           §џ           buffer address for write 
   cbWriteLen           §џ           count of bytes for write    bExecute            §џ           write control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbWrite           §џ       !    count of bytes actually written             
K     џџџџ           FB_PCWATCHDOG           bRetVal             §џ              iTime            §џ              iIdx            §џ              iPortArr   	                 >    16#2E, 16#2E, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E	      .      .      .      /      .      /      .      /      .      §џ              iArrEn   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#05, 16#30, 16#01, 16#AA	                              і            0            Њ      §џ              iArrDis   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#00, 16#30, 16#00, 16#AA	                              і             0             Њ      §џ                 tTimeOut           §џ       ;    Watchdog TimeOut Time 1s..255s, disabled if tTimeOut < 1s    bEnable            §џ           Enable / Disable Watchdog       bEnabled            §џ       2    TRUE: Watchdog Enabled; FALSE: Watchdog Disabled    bBusy            §џ           FB still busy    bError            §џ	           FB has error     nErrId           §џ
           FB error ID               
K     џџџџ           FB_REMOVEDIR        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ                 sNetId            
   T_AmsNetId  §џ           ams net id 	   sPathName               T_MaxString  §џ           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath  §џ       +    Default: Delete directory at generic path    bExecute            §џ       &    rising edge starts command execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       
K     џџџџ           FB_SIMPLEADSLOGEVENT           fbEvent                            ADSLOGEVENT   §џ              cfgEvent               TcEvent   §џ              bInit            §џ                 SourceID           §џ              EventID           §џ           	   bSetEvent           §џ              bQuit            §џ                 ErrId           §џ	              Error            §џ
                       
K     џџџџ        	   FILECLOSE        
   fbAdsWrite                                FW_AdsWrite   §џ                 NETID            
   T_AmsNetId  §џ           ams net id    HFILE           §џ       )    file handle obtained through 'FILEOPEN'    CLOSE            §џ           close control input    TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       
K     џџџџ           FILEOPEN        
   fbAdsWrite                                FW_AdsWrite   §џ           
   RisingEdge                 R_TRIG   §џ              FallingEdge                 F_TRIG   §џ                 NETID            
   T_AmsNetId  §џ           ams net id 	   FPATHNAME               T_MaxString  §џ       #    default max filename length = 255    OPENMODE           §џ           open mode flags    OPEN            §џ           open control input    TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ              HFILE           §џ           file handle             
K     џџџџ           FILEREAD        	   fbAdsRead                              
   FW_AdsRead   §џ                 NETID            
   T_AmsNetId  §џ           ams net id    HFILE           §џ           file handle    BUFADDR           §џ           buffer address for read    COUNT           §џ           count of bytes for read    READ            §џ           read control input    TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             
K     џџџџ           FILESEEK        
   fbAdsWrite                                FW_AdsWrite   §џ                 NETID            
   T_AmsNetId  §џ           ams net id    HFILE           §џ           file handle    SEEKPOS           §џ           new seek pointer position    SEEK            §џ           seek control input    TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ                       
K     џџџџ        	   FILEWRITE        
   fbAdsWrite                                FW_AdsWrite   §џ           
   RisingEdge                 R_TRIG   §џ              FallingEdge                 F_TRIG   §џ              tmpCount            §џ                 NETID            
   T_AmsNetId  §џ           ams net id    HFILE           §џ           file handle    BUFADDR           §џ           buffer address for write    COUNT           §џ           count of bytes for write    WRITE            §џ           write control input    TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_W           §џ       !    count of bytes actually written             
K     џџџџ           FW_CALLGENERICFB           fbCall       w    ( 	sNetID := '', nPort := 16#1234,
								bExecute := FALSE, tTimeout := T#0s,
								ACCESSCNT_I := 16#0000BEC1 )     СО                 4                          FW_AdsRdWrt `§џ                 funGrp         ` §џ       #    Function block group (identifier)    funNum         ` §џ       $    Function block number (identifier)    pWrite         ` §џ       +    Byte length of output parameter structure    cbWrite         ` §џ       *    Byte length of input parameter structure    pRead         ` §џ	           Points ot output buffer    cbRead         ` §џ
           Points to input buffer       nErrID         ` §џ           0 => no error, <> 0 => error
   cbReturned         ` §џ       ,    Number of successfully returned data bytes             
K     џџџџ           FW_CALLGENERICFUN           fbCall       y    ( 	sNetID := '', nPort := 16#1234,
									bExecute := FALSE, tTimeout := T#0s,
									ACCESSCNT_I := 16#0000BEC2 )     ТО                 4                          FW_AdsRdWrt `§џ           don't use it!        funGrp         ` §џ           Function group (identifier)    funNum         ` §џ       $    Function block number (identifier)    pWrite         ` §џ       +    Byte length of output parameter structure    cbWrite         ` §џ	       *    Byte length of input parameter structure    pRead         ` §џ
           Points ot output buffer    cbRead         ` §џ           Points to input buffer    pcbReturned               ` §џ       ,    Number of successfully returned data bytes       FW_CallGenericFun                                     
K     џџџџ           GETBIT32           dwConst           §џ                 inVal32           §џ              bitNo           §џ                 GETBIT32                                      
K     џџџџ           GETCPUACCOUNT           fbGetCpuAccount               FW_GetCpuAccount   §џ                     cpuAccountDW           §џ                       
K     џџџџ           GETCPUCOUNTER           fbGetCpuCounter                FW_GetCpuCounter   §џ	                  
   cpuCntLoDW           §џ           
   cpuCntHiDW           §џ                       
K     џџџџ           GETCURTASKINDEX           fbGetCurTaskIndex               FW_GetCurTaskIndex   §џ                     index           §џ                       
K     џџџџ           GETSYSTEMTIME           fbGetSystemTime                FW_GetSystemTime   §џ	                     timeLoDW           §џ              timeHiDW           §џ                       
K     џџџџ           GETTASKTIME           out   	                       ` §џ	           
   cbReturned         ` §џ
                     timeLoDW           §џ              timeHiDW           §џ                       
K     џџџџ        	   LPTSIGNAL               PortAddr           §џ              PinNo           §џ              OnOff            §џ	              	   LPTSIGNAL                                      
K     џџџџ           MEMCMP               pBuf1           §џ           First buffer    pBuf2           §џ           Second buffer    n           §џ           Number of characters       MEMCMP                                     
K     џџџџ           MEMCPY               destAddr           §џ           New buffer    srcAddr           §џ           Buffer to copy from    n           §џ           Number of characters to copy       MEMCPY                                     
K     џџџџ           MEMMOVE               destAddr           §џ           New buffer    srcAddr           §џ           Buffer to copy from    n           §џ           Number of characters to copy       MEMMOVE                                     
K     џџџџ           MEMSET               destAddr           §џ           Pointer to destination    fillByte           §џ           Character to set    n           §џ           Number of characters       MEMSET                                     
K     џџџџ           ROL32               inVal32           §џ              n           §џ                 ROL32                                     
K     џџџџ           ROR32               inVal32           §џ              n           §џ                 ROR32                                     
K     џџџџ           SETBIT32           dwConst           §џ                 inVal32           §џ              bitNo           §џ                 SETBIT32                                     
K     џџџџ           SFCACTIONCONTROL     
      S_FF                 RS   §џ              L_TMR                    TON   §џ              D_TMR                    TON   §џ              P_TRIG                 R_TRIG   §џ              SD_TMR                    TON   §џ              SD_FF                 RS   §џ              DS_FF                 RS   §џ              DS_TMR                    TON   §џ              SL_FF                 RS   §џ              SL_TMR                    TON   §џ           
      N            §џ              R0            §џ              S0            §џ              L            §џ              D            §џ              P            §џ              SD            §џ	              DS            §џ
              SL            §џ              T           §џ                 Q            §џ                       
K     џџџџ           SHL32               inVal32           §џ              n           §џ                 SHL32                                     
K     џџџџ           SHR32               inVal32           §џ              n           §џ                 SHR32                                     
K     џџџџ    t   C:\TWINCAT\PLC\LIB\TcModbusSrv.lib @                                                                                          F_GETIPADDRFROMSTR           pIp                  §џ              b   	                          §џ              w            §џ              id            §џ	           	   Index7001                            sIPAddr               §џ                 F_GetIPAddrFromStr   	                                                   Ф
!O     џџџџ           F_GETVERSIONTCMODBUSSRV               nVersionElement           §џ                 F_GetVersionTcModbusSrv                                     Ф
!O     џџџџ           FB_MBCLOSEALL           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsWrite       M    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBADS_IGR_CLOSEALL )             
   T_AmsNetId                 	   T_AmsPort                      ADSWRITE `§џ              cbWLen         ` §џ                 bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ	                       Ф
!O     џџџџ           FB_MBDIAGNOSE           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsRDWRT       I    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_DIAGNOSE )             
   T_AmsNetId                 	   T_AmsPort                         ADSRDWRT `§џ              stMBAddr              	   ST_MBAddr `§џ                 sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device    nSubFnc           §џ           
   nWriteData           §џ              bExecute            §џ	       4    Rising edge at this input starts command execution    tTimeout    ш     §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ           	   nReadData           §џ                       Ф
!O     џџџџ           FB_MBREADCOILS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsRDWRT       J    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_READCOILS )             
   T_AmsNetId                 	   T_AmsPort                       
   ADSRDWRTEX `§џ              stMBAddr              	   ST_MBAddr `§џ              cbRLen         ` §џ           	      sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device 	   nQuantity           §џ       %    Number of coils to read (data bits)    nMBAddr           §џ       )    Address of start coil (data bit offset)    cbLength           §џ	       &    Max. byte size of destination buffer 	   pDestAddr           §џ
           Pointer to destination buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ                       Ф
!O     џџџџ           FB_MBREADINPUTREGS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsRDWRT       S    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_READINPUTREGISTERS )             
   T_AmsNetId                 	   T_AmsPort                       
   ADSRDWRTEX `§џ              stMBAddr              	   ST_MBAddr `§џ              cbRLen         ` §џ           	      sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device 	   nQuantity           §џ       0    Number of input registers to read (data words)    nMBAddr           §џ       4    Address of start input register (data word offset)    cbLength           §џ	       &    Max. byte size of destination buffer 	   pDestAddr           §џ
           Pointer to destination buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ                       Ф
!O     џџџџ           FB_MBREADINPUTS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsRDWRT       K    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_READINPUTS )             
   T_AmsNetId                 	   T_AmsPort                       
   ADSRDWRTEX `§џ              stMBAddr              	   ST_MBAddr `§џ              cbRLen         ` §џ           	      sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device 	   nQuantity           §џ       &    Number of inputs to read (data bits)    nMBAddr           §џ       *    Address of start input (data bit offset)    cbLength           §џ	       &    Max. byte size of destination buffer 	   pDestAddr           §џ
           Pointer to destination buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ                       Ф
!O     џџџџ           FB_MBREADREGS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsRDWRT       N    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_READREGISTERS )             
   T_AmsNetId                 	   T_AmsPort                       
   ADSRDWRTEX `§џ              stMBAddr              	   ST_MBAddr `§џ              cbRLen         ` §џ           	      sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device 	   nQuantity           §џ       *    Number of registers to read (data words)    nMBAddr           §џ       .    Address of start register (data word offset)    cbLength           §џ	       &    Max. byte size of destination buffer 	   pDestAddr           §џ
           Pointer to destination buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ                       Ф
!O     џџџџ           FB_MBREADWRITEREGS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsRDWRT       S    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_READWRITEREGISTERS )             
   T_AmsNetId                 	   T_AmsPort                       
   ADSRDWRTEX `§џ              stMBReadWrite                     ST_MBReadWrite `§џ              cbRLen         ` §џ              cbWLen         ` §џ                 sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device    nReadQuantity           §џ       *    Number of registers to read (data words)    nMBReadAddr           §џ       3    Address of start read register (data word offset)    nWriteQuantity           §џ	       +    Number of registers to write (data words)    nMBWriteAddr           §џ
       4    Address of start write register (data word offset)    cbDestLength           §џ       &    Max. byte size of destination buffer 	   pDestAddr           §џ           Pointer to destination buffer    cbSrcLength           §џ       !    Max. byte size of source buffer    pSrcAddr           §џ           Pointer to source buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ                       Ф
!O     џџџџ           FB_MBUDPDIAGNOSE           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsRDWRT       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                      ADSRDWRT `§џ              stMBAddr              	   ST_MBAddr `§џ                 sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device    nSubFnc           §џ           
   nWriteData           §џ              bExecute            §џ	       4    Rising edge at this input starts command execution    tTimeout    ш     §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ           	   nReadData           §џ                       Ф
!O     џџџџ           FB_MBUDPREADCOILS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsRDWRT       .    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV)             
   T_AmsNetId                 	   T_AmsPort                    
   ADSRDWRTEX `§џ              stMBAddr              	   ST_MBAddr `§џ              cbRLen         ` §џ           	      sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device 	   nQuantity           §џ       %    Number of coils to read (data bits)    nMBAddr           §џ       )    Address of start coil (data bit offset)    cbLength           §џ	       &    Max. byte size of destination buffer 	   pDestAddr           §џ
           Pointer to destination buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ                       Ф
!O     џџџџ           FB_MBUDPREADINPUTREGS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsRDWRT       .    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV)             
   T_AmsNetId                 	   T_AmsPort                    
   ADSRDWRTEX `§џ              stMBAddr              	   ST_MBAddr `§џ              cbRLen         ` §џ           	      sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device 	   nQuantity           §џ       0    Number of input registers to read (data words)    nMBAddr           §џ       4    Address of start input register (data word offset)    cbLength           §џ	       &    Max. byte size of destination buffer 	   pDestAddr           §џ
           Pointer to destination buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ                       Ф
!O     џџџџ           FB_MBUDPREADINPUTS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsRDWRT       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                    
   ADSRDWRTEX `§џ              stMBAddr              	   ST_MBAddr `§џ              cbRLen         ` §џ           	      sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device 	   nQuantity           §џ       &    Number of inputs to read (data bits)    nMBAddr           §џ       *    Address of start input (data bit offset)    cbLength           §џ	       &    Max. byte size of destination buffer 	   pDestAddr           §џ
           Pointer to destination buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ                       Ф
!O     џџџџ           FB_MBUDPREADREGS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsRDWRT       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                    
   ADSRDWRTEX `§џ              stMBAddr              	   ST_MBAddr `§џ              cbRLen         ` §џ           	      sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device 	   nQuantity           §џ       *    Number of registers to read (data words)    nMBAddr           §џ       .    Address of start register (data word offset)    cbLength           §џ	       &    Max. byte size of destination buffer 	   pDestAddr           §џ
           Pointer to destination buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ                       Ф
!O     џџџџ           FB_MBUDPREADWRITEREGS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsRDWRT       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                    
   ADSRDWRTEX `§џ              stMBReadWrite                     ST_MBReadWrite `§џ              cbRLen         ` §џ              cbWLen         ` §џ                 sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device    nReadQuantity           §џ       *    Number of registers to read (data words)    nMBReadAddr           §џ       3    Address of start read register (data word offset)    nWriteQuantity           §џ	       +    Number of registers to write (data words)    nMBWriteAddr           §џ
       4    Address of start write register (data word offset)    cbDestLength           §џ       &    Max. byte size of destination buffer 	   pDestAddr           §џ           Pointer to destination buffer    cbSrcLength           §џ       !    Max. byte size of source buffer    pSrcAddr           §џ           Pointer to source buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ                       Ф
!O     џџџџ           FB_MBUDPWRITECOILS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsWrite       .    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV)             
   T_AmsNetId                 	   T_AmsPort                    ADSWRITE `§џ           	   stMBWrite                
   ST_MBWrite `§џ              cbWLen         ` §џ           	      sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device 	   nQuantity           §џ       &    Number of coils to write (data bits)    nMBAddr           §џ       )    Address of start coil (data bit offset)    cbLength           §џ	       !    Max. byte size of source buffer    pSrcAddr           §џ
           Pointer to source buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       Ф
!O     џџџџ           FB_MBUDPWRITEREGS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsWrite       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                    ADSWRITE `§џ           	   stMBWrite                
   ST_MBWrite `§џ              cbWLen         ` §џ           	      sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device 	   nQuantity           §џ       +    Number of registers to write (data words)    nMBAddr           §џ       .    Address of start register (data word offset)    cbLength           §џ	       !    Max. byte size of source buffer    pSrcAddr           §џ
           Pointer to source buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       Ф
!O     џџџџ           FB_MBUDPWRITESINGLECOIL           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsWrite       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                    ADSWRITE `§џ           	   stMBWrite                  ST_MBWriteSingle `§џ                 sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device    nMBAddr           §џ       !    Coil address (data bit offset )    nValue           §џ       J    New coil value (16#FF00 switches the output on, 16#0000 switches it off)    bExecute            §џ	       4    Rising edge at this input starts command execution    tTimeout    ш     §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       Ф
!O     џџџџ           FB_MBUDPWRITESINGLEREG           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsWrite       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                    ADSWRITE `§џ           	   stMBWrite                  ST_MBWriteSingle `§џ                 sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device    nMBAddr           §џ       %    Register address (data word offset)    nValue           §џ           New register value (16 bit)    bExecute            §џ	       4    Rising edge at this input starts command execution    tTimeout    ш     §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       Ф
!O     џџџџ           FB_MBWRITECOILS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsWrite       K    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_WRITECOILS )             
   T_AmsNetId                 	   T_AmsPort                       ADSWRITE `§џ           	   stMBWrite                
   ST_MBWrite `§џ              cbWLen         ` §џ           	      sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device 	   nQuantity           §џ       &    Number of coils to write (data bits)    nMBAddr           §џ       )    Address of start coil (data bit offset)    cbLength           §џ	       !    Max. byte size of source buffer    pSrcAddr           §џ
           Pointer to source buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       Ф
!O     џџџџ           FB_MBWRITEREGS           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsWrite       O    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_WRITEREGISTERS )             
   T_AmsNetId                 	   T_AmsPort                       ADSWRITE `§џ           	   stMBWrite                
   ST_MBWrite `§џ              cbWLen         ` §џ           	      sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device 	   nQuantity           §џ       +    Number of registers to write (data words)    nMBAddr           §џ       .    Address of start register (data word offset)    cbLength           §џ	       !    Max. byte size of source buffer    pSrcAddr           §џ
           Pointer to source buffer    bExecute            §џ       4    Rising edge at this input starts command execution    tTimeout    ш     §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       Ф
!O     џџџџ           FB_MBWRITESINGLECOIL           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsWrite       P    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_WRITESINGLECOIL )             
   T_AmsNetId                 	   T_AmsPort                       ADSWRITE `§џ           	   stMBWrite                  ST_MBWriteSingle `§џ                 sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device    nMBAddr           §џ       !    Coil address (data bit offset )    nValue           §џ       J    New coil value (16#FF00 switches the output on, 16#0000 switches it off)    bExecute            §џ	       4    Rising edge at this input starts command execution    tTimeout    ш     §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       Ф
!O     џџџџ           FB_MBWRITESINGLEREG           state         ` §џ           
   RisingEdge                 R_TRIG `§џ           
   fbAdsWrite       T    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_WRITESINGLEREGISTER )             
   T_AmsNetId                 	   T_AmsPort                       ADSWRITE `§џ           	   stMBWrite                  ST_MBWriteSingle `§џ                 sIPAddr               §џ       #    IPv4 address of the target device    nTCPPort    і     §џ       "    Port number of the target device    nUnitID    џ      §џ       6    Identification number of a serial sub-network device    nMBAddr           §џ       %    Register address (data word offset)    nValue           §џ           New register value (16 bit)    bExecute            §џ	       4    Rising edge at this input starts command execution    tTimeout    ш     §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       Ф
!O     џџџџ    q   C:\TWINCAT\PLC\LIB\TcKL6301.lib @                                                                                0          DINT_TO_EIB_4OCTETSIGN           result            §џ              Data   	                          §џ              DataM            §џ	           	   Index7001                            Value           §џ              pDest           §џ                 DINT_TO_EIB_4OctetSign                                     0nвL     џџџџ           EIB_2OCTET_FLOAT_REC               Group_Address                 EIB_GROUP_ADDR  §џ              strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              rData            §џ                       0nвL     џџџџ           EIB_2OCTET_FLOAT_SEND           Cycle            §џ              str_Send                    EIB_SEND   §џ              i            §џ           
   FirstCycle            §џ              bSend             §џ              fb_Timer                    TON   §џ              fbTimerW                    TOF   §џ              rDataM             §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              rData            §џ              str_Rec                         EIB_REC  §џ                 bError            §џ              iErrorID               EIB_ERROR_CODE  §џ	                       0nвL     џџџџ           EIB_2OCTET_SIGN_REC           iData_            §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              iData           §џ                       0nвL     џџџџ           EIB_2OCTET_SIGN_SEND           Cycle            §џ              str_Send                    EIB_SEND   §џ              i            §џ              bSend             §џ              fb_Timer                    TON   §џ              iDataM            §џ              fbTimerW                    TOF   §џ           
   FirstCycle            §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              iData           §џ              str_Rec                         EIB_REC  §џ                 bError            §џ              iErrorID               EIB_ERROR_CODE  §џ	                       0nвL     џџџџ           EIB_2OCTET_UNSIGN_REC           uiData_            §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              uiData           §џ                       0nвL     џџџџ           EIB_2OCTET_UNSIGN_SEND           Cycle            §џ              str_Send                    EIB_SEND   §џ              i            §џ           
   FirstCycle            §џ              bSend             §џ              fb_Timer                    TON   §џ              uiDataM            §џ              fbTimerW                    TOF   §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              uiData           §џ              str_Rec                         EIB_REC  §џ                 bError            §џ              iErrorID               EIB_ERROR_CODE  §џ	                       0nвL     џџџџ           EIB_3BIT_CONTROL_REC               Group_Address                 EIB_GROUP_ADDR  §џ              strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              bControl            §џ              byRange           §џ	                       0nвL     џџџџ           EIB_3BIT_CONTROL_SEND     	      Cycle            §џ              str_Send                    EIB_SEND   §џ              i            §џ           
   FirstCycle            §џ              bSend             §џ              fb_Timer                    TON   §џ           	   bControlM             §џ              fbTimerW                    TOF   §џ              byRangeM            §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              bControl            §џ              byRange           §џ              str_Rec                         EIB_REC  §џ                 bError            §џ	              iErrorID               EIB_ERROR_CODE  §џ
                       0nвL     џџџџ           EIB_4OCTET_FLOAT_REC               Group_Address                 EIB_GROUP_ADDR  §џ              strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              rData            §џ                       0nвL     џџџџ           EIB_4OCTET_FLOAT_SEND           Cycle            §џ              str_Send                    EIB_SEND   §џ              i            §џ           
   FirstCycle            §џ              bSend             §џ              fb_Timer                    TON   §џ              fbTimerW                    TOF   §џ              rDataM             §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              rData            §џ              str_Rec                         EIB_REC  §џ                 bError            §џ              iErrorID               EIB_ERROR_CODE  §џ	                       0nвL     џџџџ           EIB_4OCTET_SIGN_REC           uiData_1            §џ              uiData_2            §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              uiData           §џ                       0nвL     џџџџ           EIB_4OCTET_SIGN_SEND           Cycle            §џ              str_Send                    EIB_SEND   §џ              i            §џ           
   FirstCycle            §џ              uiDataM            §џ              bSend             §џ              fb_Timer                    TON   §џ              fbTimerW                    TOF   §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              uiData           §џ              str_Rec                         EIB_REC  §џ                 bError            §џ              iErrorID               EIB_ERROR_CODE  §џ	                       0nвL     џџџџ           EIB_4OCTET_UNSIGN_REC           uiData_1            §џ              uiData_2            §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              uiData           §џ                       0nвL     џџџџ           EIB_4OCTET_UNSIGN_SEND           Cycle            §џ              str_Send                    EIB_SEND   §џ              i            §џ           
   FirstCycle            §џ              uiDataM            §џ              bSend             §џ              fb_Timer                    TON   §џ              fbTimerW                    TOF   §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              uiData           §џ              str_Rec                         EIB_REC  §џ                 bError            §џ              iErrorID               EIB_ERROR_CODE  §џ	                       0nвL     џџџџ           EIB_4OCTETSIGN_TO_DINT           result            §џ              Value   	                          §џ              ValueM            §џ           	   Index7001                            pINPUT           §џ                 EIB_4OctetSign_TO_DINT                                     0nвL     џџџџ           EIB_4OCTETUNSIGN_TO_UDINT           result            §џ              Value   	                          §џ              ValueM            §џ           	   Index7001                            pINPUT           §џ                 EIB_4OctetUnsign_TO_UDINT                                     0nвL     џџџџ           EIB_8BIT_SIGN_REC               Group_Address                 EIB_GROUP_ADDR  §џ              Scaling_Mode           §џ       #   0 - 0..100%, 1- 0..360А, 2- 0..255    strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              iData           §џ	                       0nвL     џџџџ           EIB_8BIT_SIGN_SEND           Cycle            §џ              str_Send                    EIB_SEND   §џ              i            §џ              bSend             §џ              fb_Timer                    TON   §џ              iDataM            §џ              fbTimerW                    TOF   §џ              iDataS            §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              iData           §џ              Scaling_Mode           §џ       #   0 - 0..100%, 1- 0..360А, 2- 0..255    str_Rec                         EIB_REC  §џ                 bError            §џ	              iErrorID               EIB_ERROR_CODE  §џ
                       0nвL     џџџџ           EIB_8BIT_SIGN_SEND_EX           str_Send                    EIB_SEND   §џ              i            §џ              bSend             §џ              fb_Timer                    TON   §џ              iDataM            §џ              fbTimerW                    TOF   §џ              iDataS            §џ              fbFlanke                 R_TRIG   §џ                 bStart            §џ           Activate FB    iMode           §џ       !    0-Manuel, 1-polling, 2-OnChange    Group_Address                 EIB_GROUP_ADDR  §џ              iData           §џ              Scaling_Mode           §џ       $    0 - 0..100%, 1- 0..360А, 2- 0..255    str_Rec                         EIB_REC  §џ              CyclePolling    є     §џ	           IF iMode=1, MIN: 200ms    MinSendTime    ш     §џ
                 bBusy            §џ              bError            §џ              iErrorID               EIB_ERROR_CODE  §џ                       0nвL     џџџџ           EIB_8BIT_UNSIGN_REC               Group_Address                 EIB_GROUP_ADDR  §џ              strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              byData           §џ                       0nвL     џџџџ           EIB_8BIT_UNSIGN_SEND           Cycle            §џ              str_Send                    EIB_SEND   §џ              i            §џ              bSend             §џ              fb_Timer                    TON   §џ              fbTimerW                    TOF   §џ              byDataM            §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              byData           §џ              str_Rec                         EIB_REC  §џ                 bError            §џ              iErrorID               EIB_ERROR_CODE  §џ	                       0nвL     џџџџ           EIB_8BIT_UNSIGN_SEND_EX           str_Send                    EIB_SEND   §џ              i            §џ              bSend             §џ              fb_Timer                    TON   §џ              fbTimerW                    TOF   §џ              byDataM            §џ              fbFlanke                 R_TRIG   §џ                 bStart            §џ              iMode           §џ          0-Manuel, 1-polling, 2-OnChange   Group_Address                 EIB_GROUP_ADDR  §џ              byData           §џ              str_Rec                         EIB_REC  §џ              CyclePolling    є     §џ              MinSendTime    ш     §џ	                 bBusy            §џ              bError            §џ              iErrorID               EIB_ERROR_CODE  §џ                       0nвL     џџџџ           EIB_ALL_DATA_TYPES_REC               Group_Address                 EIB_GROUP_ADDR  §џ              strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              EIB_Data_Receive   	                        §џ              EIB_Data_Len           §џ	                       0nвL     џџџџ           EIB_ALL_DATA_TYPES_REC_EX               strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              Group_Address                 EIB_GROUP_ADDR  §џ              EIB_Data_Receive   	                        §џ              EIB_Data_Len           §џ	                       0nвL     џџџџ           EIB_ALL_DATA_TYPES_SEND           str_Send                    EIB_SEND   §џ              i            §џ              bSend             §џ              fb_Timer                    TON   §џ              fbTimerW                    TOF   §џ              DATA_M   	                         §џ              Result            §џ              fbFlanke                 R_TRIG   §џ           	      bStart            §џ              iMode           §џ          0-Manuel, 1-polling, 2-OnChange   Group_Address                 EIB_GROUP_ADDR  §џ              DATA   	                        §џ              EIB_Data_Len          §џ              PRIORITY          EIB_PRIORITY_LOW       EIB_PRIORITY  §џ              CyclePolling    d      §џ	              MinSendTime    ш     §џ
              str_Rec                         EIB_REC  §џ                 bBusy            §џ              bError            §џ              iErrorID               EIB_ERROR_CODE  §џ                       0nвL     џџџџ           EIB_BIT_CONTROL_REC               Group_Address                 EIB_GROUP_ADDR  §џ              strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              bControl            §џ              bValue            §џ	                       0nвL     џџџџ           EIB_BIT_CONTROL_SEND     	      Cycle            §џ              str_Send                    EIB_SEND   §џ              i            §џ           	   bControlM             §џ              bValueM             §џ              bSend             §џ              fb_Timer                    TON   §џ           
   FirstCycle            §џ              fbTimerW                    TOF   §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              bControl            §џ              bValue            §џ              str_Rec                         EIB_REC  §џ                 bError            §џ	              iErrorID               EIB_ERROR_CODE  §џ
                       0nвL     џџџџ           EIB_BIT_REC               Group_Address                 EIB_GROUP_ADDR  §џ              strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              bData            §џ                       0nвL     џџџџ           EIB_BIT_SEND           Cycle            §џ              str_Send                    EIB_SEND   §џ              i            §џ              bDataM             §џ              bSend             §џ              fb_Timer                    TON   §џ           
   FirstCycle            §џ              fbTimerW                    TOF   §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              bData            §џ              str_Rec                         EIB_REC  §џ                 bError            §џ              iErrorID               EIB_ERROR_CODE  §џ	                       0nвL     џџџџ           EIB_BIT_SEND_MANUAL           str_Send                    EIB_SEND   §џ              i            §џ              bSend_M             §џ           	   fb_Flanke                 R_TRIG   §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              bSend            §џ              bData            §џ              str_Rec                         EIB_REC  §џ                 bBusy            §џ	              bError            §џ
              iErrorID               EIB_ERROR_CODE  §џ                       0nвL     џџџџ           EIB_DATE_REC               Group_Address                 EIB_GROUP_ADDR  §џ              strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              wDay           §џ              wMonth           §џ	              wYear           §џ
                       0nвL     џџџџ           EIB_DATE_SEND           Cycle    р     §џ              str_Send                    EIB_SEND   §џ              i            §џ           
   FirstCycle             §џ              bSend             §џ              fb_Timer                    TON   §џ              wYear_            §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              wDay           §џ              wMonth           §џ              wYear           §џ              str_Rec                         EIB_REC  §џ                 bError            §џ
              iErrorID               EIB_ERROR_CODE  §џ                       0nвL     џџџџ           EIB_FLOAT_TO_REAL           result            §џ              Value   	                          §џ              M1            §џ           	   Index7001                            pINPUT           §џ                 EIB_FLOAT_TO_REAL                                      0nвL     џџџџ           EIB_READ_SEND           str_Send                    EIB_SEND   §џ              i            §џ              fbFlanke                 R_TRIG   §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              bRead            §џ              str_Rec                         EIB_REC  §џ                 bError            §џ              iErrorID               EIB_ERROR_CODE  §џ	              bBusy            §џ
                       0nвL     џџџџ           EIB_STRING_TO_STRING           result            §џ                 pINPUT           §џ                 EIB_STRING_TO_STRING                                         0nвL     џџџџ           EIB_TIME_REC               Group_Address                 EIB_GROUP_ADDR  §џ              strData_Rec                         EIB_REC  §џ                 bDataReceive            §џ              wHoure           §џ              wMinute           §џ	              wSecond           §џ
                       0nвL     џџџџ           EIB_TIME_SEND           Cycle    р     §џ              str_Send                    EIB_SEND   §џ              i            §џ           
   FirstCycle             §џ              bSend             §џ              fb_Timer                    TON   §џ                 Group_Address                 EIB_GROUP_ADDR  §џ              wHoure           §џ              wMinute           §џ              wSecond           §џ              str_Rec                         EIB_REC  §џ                 bError            §џ
              iErrorID               EIB_ERROR_CODE  §џ                       0nвL     џџџџ        !   EIB_TWO_OCTET_FLOAT_VALUE_TO_REAL           result            §џ              Value            §џ              Exp_            §џ              Value_            §џ	                 pINPUT           §џ              !   EIB_Two_Octet_Float_Value_TO_REAL                                      0nвL     џџџџ           F_CONV_2GROUP_TO_3GROUP               IN                EIB_GROUP_ADDR_2GROUP  §џ                 F_CONV_2GROUP_TO_3GROUP                 EIB_GROUP_ADDR                            0nвL     џџџџ           F_CONV_3GROUP_TO_2GROUP               IN                 EIB_GROUP_ADDR  §џ                 F_CONV_3GROUP_TO_2GROUP                EIB_GROUP_ADDR_2GROUP                            0nвL     џџџџ           KL6301     $      wWriteGroupAddr                 EIB_GROUP_ADDR   §џ           
   pWriteData            §џ              EIB_PRIORITY          EIB_PRIORITY_LOW       EIB_PRIORITY   §џ              uiLen            §џ           	   pReadData            §џ              bWrite             §џ           Send write    bRead             §џ          -------
   bWriteBusy             §џ!           	   bReadBusy             §џ"              bReceiveData             §џ#              iLenDataRead            §џ$              GroupReceive                 EIB_GROUP_ADDR   §џ%          -------   str_Send                    EIB_SEND   §џ(              i            §џ)              t            §џ*              Result            §џ+           	   fbFlankeW                 R_TRIG   §џ,              Merker            §џ-           	   fbFlankeR                 R_TRIG   §џ.              iLenDataReadM            §џ/              m           §џ0           	   fbTimerTP                    TON   §џ1              w            §џ2              GroupID            §џ3              Read_EIB_Typ               EIB_Read_Typ   §џ4              fbTimerStart                    TON   §џ5              CounterEIB_Rec            §џ6              fbTimer_EIB_REC                    TON   §џ7           
   RecPercent            §џ8              FW            §џ9              Filter           §џ:           
   Filter_len    @       §џ;              i_Filter            §џ<              fbTimerWatchdog                    TON   §џ=              iWarningCnt            §џ>           	   Data_Diag   	                         §џ?              	   bActivate            §џ              idx          §џ              EIB_PHYS_ADDR                 EIB_PHYS_ADDR  §џ           address from the KL6301   EIB_GROUP_FILTER   	                     EIB_GROUP_FILTER          §џ              iMode           §џ       <    "0" Group Filer 4/64, "1" Group Filter 8/32, "100" monitor       bActive            §џ
              bReady            §џ              bError            §џ              iErrorId               EIB_Error_Code  §џ              str_Data_Rec                         EIB_REC  §џ              	   KL6301_IN    	                       §џ           
   KL6301_OUT    	                       §џ                   0nвL     џџџџ           KL6301_PROFESSIONAL           str_Send                    EIB_SEND   §џ!              i            §џ"              t            §џ#              Result            §џ$           	   fbFlankeW                 R_TRIG   §џ%              Merker            §џ&           	   fbFlankeR                 R_TRIG   §џ'              iLenDataReadM            §џ(              m           §џ)           	   fbTimerTP                    TON   §џ*              w            §џ+              GroupID            §џ,              Read_EIB_Typ               EIB_Read_Typ   §џ-              fbTimerStart                    TON   §џ.              CounterEIB_Rec            §џ/              fbTimer_EIB_REC                    TON   §џ0           
   RecPercent            §џ1           
   	   bActivate            §џ              bWrite            §џ           Send write    bRead            §џ           Send read    EIB_PHYS_ADDR                 EIB_PHYS_ADDR  §џ           address from the KL6301   EIB_GROUP_FILTER   	                     EIB_GROUP_FILTER          §џ              wWriteGroupAddr                 EIB_GROUP_ADDR  §џ           
   pWriteData           §џ	              EIB_PRIORITY          EIB_PRIORITY_LOW       EIB_PRIORITY  §џ
              uiLen           §џ           	   pReadData           §џ           
      bActive            §џ           
   bWriteBusy            §џ           	   bReadBusy            §џ              bReceiveData            §џ              bReady            §џ              bError            §џ              iErrorId               EIB_Error_Code  §џ              iLenDataRead           §џ              GroupReceive                 EIB_GROUP_ADDR  §џ              str_Data_Rec                         EIB_REC  §џ              	   KL6301_IN    	                       §џ           
   KL6301_OUT    	                       §џ                   0nвL     џџџџ           KL6301_VERSION                   KL6301_Version    Q       Q                              0nвL     џџџџ           REAL_TO_EIB_FLOAT           result            §џ              Data   	                          §џ              M1            §џ	           	   Index7001                            Value            §џ              pDest           §џ                 REAL_TO_EIB_FLOAT                                     0nвL     џџџџ           REAL_TO_TWO_OCTET_FLOAT_VALUE        	   ValueDINT            §џ              Value_            §џ              result            §џ	              Value_1            §џ
              SetMinus             §џ                 Value            §џ              pDest           §џ                 REAL_TO_Two_Octet_Float_Value                                     0nвL     џџџџ           STRING_TO_EIB_STRING           result            §џ                 Value               §џ              pDest           §џ                 STRING_TO_EIB_STRING                                     0nвL     џџџџ           UDINT_TO_EIB_4OCTETUNSIGN           result            §џ              Data   	                          §џ              DataM            §џ	           	   Index7001                            Value           §џ              pDest           §џ                 UDINT_TO_EIB_4OctetUnsign                                     0nвL     џџџџ    R    @                                                                                       	   AUTORESET           AutoResetCX        	            	   PLC_Reset   л              AutoStartCX        	            	   PLC_Start   л                               YќZ  @   џџџџ        	   CALCPOWER        
   koef_power       ?   0.5    є               koef_voltage    ЭЬЬ=   0.1    є               koef_current    
зЃ;   0.005    є                                Z  @   џџџџ        
   CHECKLIGHT           ADSWRITE                                FW_AdsWrite   ђ               timer                    TON   ђ               ttimer1                    TOF   ђ               timer2                    TON   ђ               AdsWriteLandscape                                FW_AdsWrite   ђ 	              timer2l                    TON   ђ 
              timer22                    TON   ђ               AdsWriteNight                                FW_AdsWrite   ђ               timer23                    TON   ђ               AdsWriteUOG                                FW_AdsWrite   ђ               timer24                    TON   ђ            	   ADSnew222                          ADSWRITE   ђ               _ImpVar_242_312                                             Z  @   џџџџ           FLETCHER_CHECKSUM           Data_massive1   	                             MBє                  %           Data_massive2   	  Ј                          MBж                  %           i                          j                          Sum1                          Sum2                          Sum3            	              Sum4            
                               Z  @   џџџџ           KNX_INIT     V      Group_1_1_1            (MAIN:=1,SUB_MAIN:=1,NUMBER:=1)                  EIB_GROUP_ADDR   ю               Group_1_1_2            (MAIN:=1,SUB_MAIN:=1,NUMBER:=2)                  EIB_GROUP_ADDR   ю               Group_1_1_3            (MAIN:=1,SUB_MAIN:=1,NUMBER:=3)                  EIB_GROUP_ADDR   ю               Group_1_1_4            (MAIN:=1,SUB_MAIN:=1,NUMBER:=4)                  EIB_GROUP_ADDR   ю               Group_1_1_5            (MAIN:=1,SUB_MAIN:=1,NUMBER:=5)                  EIB_GROUP_ADDR   ю 	              Group_1_1_6            (MAIN:=1,SUB_MAIN:=1,NUMBER:=6)                  EIB_GROUP_ADDR   ю 
              Group_1_1_7            (MAIN:=1,SUB_MAIN:=1,NUMBER:=7)                  EIB_GROUP_ADDR   ю               Group_1_1_8            (MAIN:=1,SUB_MAIN:=1,NUMBER:=8)                  EIB_GROUP_ADDR   ю               Group_1_1_9            (MAIN:=1,SUB_MAIN:=1,NUMBER:=9)            	      EIB_GROUP_ADDR   ю               Group_1_1_10       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=10)            
      EIB_GROUP_ADDR   ю               Group_1_1_11       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=11)                  EIB_GROUP_ADDR   ю               Group_1_1_12       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=12)                  EIB_GROUP_ADDR   ю               Group_1_1_13       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=13)                  EIB_GROUP_ADDR   ю               Group_1_1_14       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=14)                  EIB_GROUP_ADDR   ю               Group_1_1_15       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=15)                  EIB_GROUP_ADDR   ю               Group_1_1_16       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=16)                  EIB_GROUP_ADDR   ю               Group_1_1_17       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=17)                  EIB_GROUP_ADDR   ю               Group_1_1_18       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=18)                  EIB_GROUP_ADDR   ю               Group_1_1_19       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=19)                  EIB_GROUP_ADDR   ю               Group_1_1_20       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=20)                  EIB_GROUP_ADDR   ю               Group_1_1_21       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=21)                  EIB_GROUP_ADDR   ю               Group_1_1_22       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=22)                  EIB_GROUP_ADDR   ю               Group_1_1_23       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=23)                  EIB_GROUP_ADDR   ю               Group_1_1_24       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=24)                  EIB_GROUP_ADDR   ю               Group_1_1_25       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=25)                  EIB_GROUP_ADDR   ю               Group_1_1_26       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=26)                  EIB_GROUP_ADDR   ю               Group_1_1_27       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=27)                  EIB_GROUP_ADDR   ю               Group_1_1_28       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=28)                  EIB_GROUP_ADDR   ю                Group_1_1_29       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=29)                  EIB_GROUP_ADDR   ю !              Group_1_1_30       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=30)                  EIB_GROUP_ADDR   ю "              Group_1_1_31       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=31)                  EIB_GROUP_ADDR   ю #              Group_1_1_32       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=32)                   EIB_GROUP_ADDR   ю $              Group_1_1_33       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=33)            !      EIB_GROUP_ADDR   ю %              Group_1_1_34       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=34)            "      EIB_GROUP_ADDR   ю &              Group_1_1_35       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=35)            #      EIB_GROUP_ADDR   ю '              Group_1_1_36       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=36)            $      EIB_GROUP_ADDR   ю (              Group_1_1_37       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=37)            %      EIB_GROUP_ADDR   ю )              Group_1_1_38       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=38)            &      EIB_GROUP_ADDR   ю *              KNXSYSTEM_WEATHERST_BRIGHTNES_L            (MAIN:=5,SUB_MAIN:=1,NUMBER:=2)                  EIB_GROUP_ADDR   ю +              KNXSYSTEM_WEATHERST_BRIGHTNES_C            (MAIN:=5,SUB_MAIN:=1,NUMBER:=3)                  EIB_GROUP_ADDR   ю ,              KNXSYSTEM_WEATHERST_BRIGHTNES_R            (MAIN:=5,SUB_MAIN:=1,NUMBER:=4)                  EIB_GROUP_ADDR   ю -              KNXSYSTEM_WEATHERST_ISDAY            (MAIN:=5,SUB_MAIN:=1,NUMBER:=6)                  EIB_GROUP_ADDR   ю .              KNXSYSTEM_WEATHERST_ISTWILIGHT       !    (MAIN:=5,SUB_MAIN:=1,NUMBER:=40)            (      EIB_GROUP_ADDR   ю /              init1        	               EIB_READ_SEND   ю 1              init2        	               EIB_READ_SEND   ю 2              init4        	               EIB_READ_SEND   ю 3              init3        	               EIB_READ_SEND   ю 4              init5        	               EIB_READ_SEND   ю 5              init6        	               EIB_READ_SEND   ю 6              init7        	               EIB_READ_SEND   ю 7              init8        	               EIB_READ_SEND   ю 8              init9        	               EIB_READ_SEND   ю 9              init10        	               EIB_READ_SEND   ю :              init11        	               EIB_READ_SEND   ю ;              init12        	               EIB_READ_SEND   ю <              init24        	               EIB_READ_SEND   ю =              init23        	               EIB_READ_SEND   ю >              init22        	               EIB_READ_SEND   ю ?              init21        	               EIB_READ_SEND   ю @              init20        	               EIB_READ_SEND   ю A              init19        	               EIB_READ_SEND   ю B              init13        	               EIB_READ_SEND   ю C              init14        	               EIB_READ_SEND   ю D              init15        	               EIB_READ_SEND   ю E              init16        	               EIB_READ_SEND   ю F              init17        	               EIB_READ_SEND   ю G              init18        	               EIB_READ_SEND   ю H              init25        	               EIB_READ_SEND   ю I              init26        	               EIB_READ_SEND   ю J              init27        	               EIB_READ_SEND   ю K              init28        	               EIB_READ_SEND   ю L              init29        	               EIB_READ_SEND   ю M              init30        	               EIB_READ_SEND   ю N              init31        	               EIB_READ_SEND   ю O              init32        	               EIB_READ_SEND   ю P              init33        	               EIB_READ_SEND   ю Q              init34        	               EIB_READ_SEND   ю R              init35        	               EIB_READ_SEND   ю S              init36        	               EIB_READ_SEND   ю T              init37        	               EIB_READ_SEND   ю U              init38        	               EIB_READ_SEND   ю V              init39        	               EIB_READ_SEND   ю W              init40        	               EIB_READ_SEND   ю X              init41        	               EIB_READ_SEND   ю Y              init42        	               EIB_READ_SEND   ю Z              init43        	               EIB_READ_SEND   ю [                               Z  @   џџџџ           MAIN     	      fbReadCoils                                FB_MBReadCoils                
   bReadCoils                             nValue                         CX Controller    fb_KL6301_0        0                                                      KL6301                EIB functonblock    i                         CASE    EIB_DATA_SEND_0                             EIB_SEND_DATA                	   fbTimer_0                    TON                   TimerOn                             FLAG_01                                             Z  @   џџџџ           MAIN_EIB_REC     Z      EIB_BIT_REC_0                  EIB_BIT_REC   R        >  	EIB_BIT_REC_1: EIB_BIT_REC;
	EIB_REAL_REC_0:EIB_2OCTET_FLOAT_REC;
	EIB_REAL_REC_Temp:EIB_2OCTET_FLOAT_REC;
	EIB_8Bit:EIB_8BIT_SIGN_REC;
	EIB_3Bit:EIB_3BIT_CONTROL_REC;
	EIB_3Bit_1:EIB_3BIT_CONTROL_REC;
	EIB_2BYTE_UINT:EIB_2OCTET_UNSIGN_REC;
	EIB_4UDINT:EIB_4OCTET_SIGN_REC;
	EIB_4Float:EIB_4OCTET_FLOAT_REC;     Group_1_1_1            (MAIN:=1,SUB_MAIN:=1,NUMBER:=1)                  EIB_GROUP_ADDR   R               Group_1_1_2            (MAIN:=1,SUB_MAIN:=1,NUMBER:=2)                  EIB_GROUP_ADDR   R               Group_1_1_3            (MAIN:=1,SUB_MAIN:=1,NUMBER:=3)                  EIB_GROUP_ADDR   R               Group_1_1_4            (MAIN:=1,SUB_MAIN:=1,NUMBER:=4)                  EIB_GROUP_ADDR   R               Group_1_1_5            (MAIN:=1,SUB_MAIN:=1,NUMBER:=5)                  EIB_GROUP_ADDR   R               Group_1_1_6            (MAIN:=1,SUB_MAIN:=1,NUMBER:=6)                  EIB_GROUP_ADDR   R               Group_1_1_7            (MAIN:=1,SUB_MAIN:=1,NUMBER:=7)                  EIB_GROUP_ADDR   R               Group_1_1_8            (MAIN:=1,SUB_MAIN:=1,NUMBER:=8)                  EIB_GROUP_ADDR   R               Group_1_1_9            (MAIN:=1,SUB_MAIN:=1,NUMBER:=9)            	      EIB_GROUP_ADDR   R               Group_1_1_10       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=10)            
      EIB_GROUP_ADDR   R               Group_1_1_11       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=11)                  EIB_GROUP_ADDR   R               Group_1_1_12       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=12)                  EIB_GROUP_ADDR   R               Group_1_1_13       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=13)                  EIB_GROUP_ADDR   R               Group_1_1_14       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=14)                  EIB_GROUP_ADDR   R               Group_1_1_15       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=15)                  EIB_GROUP_ADDR   R               Group_1_1_16       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=16)                  EIB_GROUP_ADDR   R               Group_1_1_17       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=17)                  EIB_GROUP_ADDR   R               Group_1_1_18       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=18)                  EIB_GROUP_ADDR   R                Group_1_1_19       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=19)                  EIB_GROUP_ADDR   R !              Group_1_1_20       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=20)                  EIB_GROUP_ADDR   R "              Group_1_1_21       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=21)                  EIB_GROUP_ADDR   R #              Group_1_1_22       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=22)                  EIB_GROUP_ADDR   R $              Group_1_1_23       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=23)                  EIB_GROUP_ADDR   R %              Group_1_1_24       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=24)                  EIB_GROUP_ADDR   R &              Group_1_1_25       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=25)                  EIB_GROUP_ADDR   R '              Group_1_1_26       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=26)                  EIB_GROUP_ADDR   R (              Group_1_1_27       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=27)                  EIB_GROUP_ADDR   R )              Group_1_1_28       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=28)                  EIB_GROUP_ADDR   R *              Group_1_1_29       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=29)                  EIB_GROUP_ADDR   R +       Z   zdes bilo MAIN:=5,SUB_MAIN:=1,NUMBER:=6. Sozdal otdelnuyu peremennuyu s etim adresom nizhe   Group_1_1_30       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=30)                  EIB_GROUP_ADDR   R ,              Group_1_1_31       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=31)                  EIB_GROUP_ADDR   R .              Group_1_1_32       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=32)                   EIB_GROUP_ADDR   R /              Group_1_1_33       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=33)            !      EIB_GROUP_ADDR   R 0              Group_1_1_34       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=34)            "      EIB_GROUP_ADDR   R 1              Group_1_1_35       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=35)            #      EIB_GROUP_ADDR   R 2              Group_1_1_36       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=36)            $      EIB_GROUP_ADDR   R 3              Group_1_1_37       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=37)            %      EIB_GROUP_ADDR   R 4              Group_1_1_38       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=38)            &      EIB_GROUP_ADDR   R 5              KNXSYSTEM_WEATHERST_BRIGHTNES_L            (MAIN:=5,SUB_MAIN:=1,NUMBER:=2)                  EIB_GROUP_ADDR   R 7              KNXSYSTEM_WEATHERST_BRIGHTNES_C            (MAIN:=5,SUB_MAIN:=1,NUMBER:=3)                  EIB_GROUP_ADDR   R 8              KNXSYSTEM_WEATHERST_BRIGHTNES_R            (MAIN:=5,SUB_MAIN:=1,NUMBER:=4)                  EIB_GROUP_ADDR   R 9              KNXSYSTEM_WEATHERST_ISTWILIGHT       !    (MAIN:=5,SUB_MAIN:=1,NUMBER:=40)            (      EIB_GROUP_ADDR   R :              KNXSYSTEM_WEATHERST_ISDAY            (MAIN:=5,SUB_MAIN:=1,NUMBER:=6)                  EIB_GROUP_ADDR   R ;              EIB_BIT_REC_1                  EIB_BIT_REC   R =              EIB_BIT_REC_2                  EIB_BIT_REC   R >              EIB_BIT_REC_3                  EIB_BIT_REC   R ?              EIB_BIT_REC_4                  EIB_BIT_REC   R @              EIB_BIT_REC_5                  EIB_BIT_REC   R A              EIB_BIT_REC_6                  EIB_BIT_REC   R B              EIB_BIT_REC_7                  EIB_BIT_REC   R C              EIB_BIT_REC_8                  EIB_BIT_REC   R D              EIB_BIT_REC_9                  EIB_BIT_REC   R E              EIB_BIT_REC_10                  EIB_BIT_REC   R F              EIB_BIT_REC_11                  EIB_BIT_REC   R G              EIB_BIT_REC_12                  EIB_BIT_REC   R H              EIB_BIT_REC_13                  EIB_BIT_REC   R I              EIB_BIT_REC_14                  EIB_BIT_REC   R J              EIB_BIT_REC_15                  EIB_BIT_REC   R K              EIB_BIT_REC_16                  EIB_BIT_REC   R L              EIB_BIT_REC_17                  EIB_BIT_REC   R M              EIB_BIT_REC_18                  EIB_BIT_REC   R N              EIB_BIT_REC_19                  EIB_BIT_REC   R O              EIB_BIT_REC_20                  EIB_BIT_REC   R P              EIB_BIT_REC_21                  EIB_BIT_REC   R Q              EIB_BIT_REC_22                  EIB_BIT_REC   R R              EIB_BIT_REC_23                  EIB_BIT_REC   R S              EIB_BIT_REC_24                  EIB_BIT_REC   R T              EIB_BIT_REC_25                  EIB_BIT_REC   R U              EIB_BIT_REC_26                  EIB_BIT_REC   R V              EIB_BIT_REC_27                  EIB_BIT_REC   R W              EIB_BIT_REC_28                  EIB_BIT_REC   R X              EIB_BIT_REC_29                  EIB_BIT_REC   R Y              EIB_BIT_REC_30                  EIB_BIT_REC   R Z              EIB_BIT_REC_31                  EIB_BIT_REC   R [              EIB_BIT_REC_32                  EIB_BIT_REC   R \              EIB_BIT_REC_33                  EIB_BIT_REC   R ]              EIB_BIT_REC_34                  EIB_BIT_REC   R ^              EIB_BIT_REC_35                  EIB_BIT_REC   R _              EIB_BIT_REC_36                  EIB_BIT_REC   R `              EIB_BIT_REC_37                  EIB_BIT_REC   R a              EIB_BIT_REC_38                  EIB_BIT_REC   R b              EIB_BIT_REC_39                  EIB_BIT_REC   R c              EIB_BIT_REC_40                  EIB_BIT_REC   R d              EIB_BIT_REC_41                  EIB_BIT_REC   R e              EIB_ALL_DATA_TYPES_REC_40                    EIB_4OCTET_SIGN_REC   R f              EIB_ALL_DATA_TYPES_REC_41                    EIB_4OCTET_SIGN_REC   R g              EIB_ALL_DATA_TYPES_REC_42                    EIB_4OCTET_SIGN_REC   R h              fb_GetTi        	            
   NT_GetTime   R i              Timer1                    TON   R j                               Z  @   џџџџ        
   PEERTOPEER           rHOST_IP          192.168.3.204                
   rHOST_port    	Р                 
   lHOST_port    #Р                    fbSockClAll        	               FB_SocketCloseAll                 fbSockUdpCr                            FB_SocketUdpCreate              	   UdpSocket              	   T_HSocket                 fbSockUdpRecFr                              FB_SocketUdpReceiveFrom   	              fbSockUdpST                             FB_SocketUdpSendTo   
              fbSockUdpSTConf                             FB_SocketUdpSendTo                 Timer1                    TON                 Timer2                    TON                 HandleString    Q       Q                   Timer3                    TON                 _ImpVar_790_29                            _ImpVar_790_76                                             Z  @   џџџџ           POWER_OFF_TEST            init            ё            
   test_power       A   20.0    ё               test_power_new      HB   50    ё               test_power_first      hB   58    ё            
   time_limit      ?   1    ё               my_time           0    ё               flag             ё               start             ё            Central function. All Off Garage   Group_3_1_0            (MAIN:=3,SUB_MAIN:=1,NUMBER:=0)                   EIB_GROUP_ADDR   ё                Group_3_1_1            (MAIN:=3,SUB_MAIN:=1,NUMBER:=1)                  EIB_GROUP_ADDR   ё !              Group_3_1_2            (MAIN:=3,SUB_MAIN:=1,NUMBER:=2)                  EIB_GROUP_ADDR   ё "              Group_3_1_3            (MAIN:=3,SUB_MAIN:=1,NUMBER:=3)                  EIB_GROUP_ADDR   ё #              Group_3_1_4            (MAIN:=3,SUB_MAIN:=1,NUMBER:=4)                  EIB_GROUP_ADDR   ё $              Group_3_1_5            (MAIN:=3,SUB_MAIN:=1,NUMBER:=5)                  EIB_GROUP_ADDR   ё %              Group_3_1_6            (MAIN:=3,SUB_MAIN:=1,NUMBER:=6)                  EIB_GROUP_ADDR   ё &              Group_3_1_7            (MAIN:=3,SUB_MAIN:=1,NUMBER:=7)                  EIB_GROUP_ADDR   ё '              Group_3_1_8            (MAIN:=3,SUB_MAIN:=1,NUMBER:=8)                  EIB_GROUP_ADDR   ё (              Group_3_1_9            (MAIN:=3,SUB_MAIN:=1,NUMBER:=9)            	      EIB_GROUP_ADDR   ё )              Group_3_1_10       !    (MAIN:=3,SUB_MAIN:=1,NUMBER:=10)            
      EIB_GROUP_ADDR   ё *              Group_3_1_11       !    (MAIN:=3,SUB_MAIN:=1,NUMBER:=11)                  EIB_GROUP_ADDR   ё +           	   EIB_SEND1                           EIB_BIT_SEND   ё -           	   EIB_SEND2                           EIB_BIT_SEND   ё .           	   EIB_SEND3                           EIB_BIT_SEND   ё /           	   EIB_SEND4                           EIB_BIT_SEND   ё 0           	   EIB_SEND5                           EIB_BIT_SEND   ё 1           	   EIB_SEND6                           EIB_BIT_SEND   ё 2           	   EIB_SEND7                           EIB_BIT_SEND   ё 3           	   EIB_SEND8                           EIB_BIT_SEND   ё 4           	   EIB_SEND9                           EIB_BIT_SEND   ё 5           
   EIB_SEND10                           EIB_BIT_SEND   ё 6           
   EIB_SEND11                           EIB_BIT_SEND   ё 7              counter            ё 9                               Z  @   џџџџ           READADS           ReadADS                              
   FW_AdsRead   	              timer2                    TON   	              bBusy             	              bError             	              nErrId            	              cbRead            		              bBusy2             	              bError2             	              nErrId2            	              cbRead2            	           
   ReadLights                              
   FW_AdsRead   	              timer3                    TON   	              timer32                    TON   	              bBusy3             	              bError3             	           	   ReadSCHAV                              
   FW_AdsRead   	              SchAV_Muhamed                                FW_AdsWrite   	                               Z  @   џџџџ           UDP_RECEIVE_PACKET_INIT           Checksum_rec                          k                          l                          i                          h                          g                          J            	                               Z  @   џџџџ           UDP_SEND_PACKET_INIT           i                         j                         k                         l                                          Z  @   џџџџ            
 М           ђ     є   R   ѕ   	  ю           ё   л      ( '     K   '    K   '    K   ­'    K   Т'                Я'        +     КЛlocalhost A     3ЋПw$љ        ?? \?        к А>Рw0 Оwџџџџ3ЋПwXУ    $љ iA         XУ?          Ћфа                  cХA    Ез `У  ?ќж hй Lй №љwxєwџџџџ:єw$љ iA        $љ iA     4л фа 4л к фа Д'џџџџ к бЙЯ     ,   ,                                                                @   Zт) /*BECKCONFI3*/
        !РЈн @   @           3               
   NeueTask     d   	PowerCalc     ш  AdsSend     њ   NewTask            	]р1]                       VAR_GLOBAL
END_VAR
                                                                                  "   , V  Т              NeueTask
         MAIN();џџџџ                	PowerCalcd        CalcPower();џџџџ                AdsSendш       CheckLight();џџџџ                NewTaskњ        POWER_OFF_TEST();
ReadADS();џџџџ               ]р1]                 $ћџџџ,   иє                                  Standard 6WїB	6WїB                                       	]р1]      а&&           VAR_CONFIG
END_VAR
                                                                                   '           ѕ   ,  J           Global_Variables_Power ]р1]	]р1]ѕ     Дrџџ             VAR_GLOBAL

	KL3403_ctrl_1 AT%Q* : BYTE;

	KL3403_1_P1 AT%I* : INT;
	KL3403_1_P2 AT%I* : INT;
	KL3403_1_P3 AT%I* : INT;

	KL3403_1_P: REAL;
	KL3403_1_V: REAL;
	KL3403_1_I: REAL;

	KL3403_2_P1 AT%I* : INT;
	KL3403_2_P2 AT%I* : INT;
	KL3403_2_P3 AT%I* : INT;

	KL3403_2_P: REAL;
	KL3403_2_V: REAL;
	KL3403_2_I: REAL;

	KL3403_3_P1 AT%I* : INT;
	KL3403_3_P2 AT%I* : INT;
	KL3403_3_P3 AT%I* : INT;

	KL3403_3_P: REAL;
	KL3403_3_V: REAL;
	KL3403_3_I: REAL;

	KL3403_4_P1 AT%I* : INT;
	KL3403_4_P2 AT%I* : INT;
	KL3403_4_P3 AT%I* : INT;

	KL3403_4_P: REAL;
	KL3403_4_V: REAL;
	KL3403_4_I: REAL;

	KL3403_5_P1 AT%I* : INT;
	KL3403_5_P2 AT%I* : INT;
	KL3403_5_P3 AT%I* : INT;

	KL3403_5_P: REAL;
	KL3403_5_V: REAL;
	KL3403_5_I: REAL;

(*array of powers in VRU*)

(*
1 - schavp1		3
2 - schrd			11
3 - parouvl		2
4 - schnvd		5
5 - schrb			6
6 - schl			9
7 - schrov		1
8 - schss			10
9 - schuf			4
10 - schno		7
11 - hammam		8

7 - schrov		1
3 - parouvl		2
1 - schavp1		3
9 - schuf			4
4 - schnvd		5
5 - schrb			6
10 - schno		7
11 - hammam		8
6 - schl			9
8 - schss			10
2 - schrd			11

*)

	POWER_LIMIT: REAL;
	Current_switch_pos: INT;

	power_VRU_switch:  ARRAY[1..11] OF BOOL;
	(* priority*)
	power_VRU_address:  ARRAY[1..11] OF EIB_GROUP_ADDR;
	power_VRU_value: ARRAY[1..11] OF REAL;


	PowerSystemSwitcher: BOOL := TRUE;

END_VAR

                                                                                               '              , mb <Ф            Globale_Variablen Z	 ќZ                     р  VAR_GLOBAL
    	bCloseAll 					: BOOL := TRUE;
   	bCreateSock					: BOOL := TRUE;

	ModByte			: BYTE;
	ModbusVentili	: BYTE;

	OutLightBytes		: BYTE;
	ControlLights		: BYTE;

	SCHAV			: ARRAY [1..4] OF INT;
	SCHNOG		: ARRAY [1..9] OF BOOL;

	schav_receive_stack AT %MB500 : ARRAY[1..7] OF INT;
	schav_force_stack AT %MB250 : ARRAY[1..7] OF INT;
	schnog_receive_stack AT %MB65 : ARRAY[1..19] OF BOOL;
	schnog_force_stack AT %MB265 : ARRAY[1..19] OF BOOL;
	schszp_receive_stack AT %MB100 : ARRAY[1..116] OF BOOL;
	schszp_force_stack AT %MB4500 : ARRAY[1..116] OF BOOL;
	(*tempMain_udp_packet AT %MB6000 : Udp_Packet;*)
	Main_udp_packet AT %MB2000 : Udp_Packet;
	Force_udp_packet AT %MB3000 : Udp_Packet;
	Temp_of_int AT %MB3006 : ARRAY[1..213] OF INT; (*юсырёђќ ярьџђш ёютярфрхђ ё Force_udp_packet*)
	Confirmation_packet : Udp_Confirm;
	Received_packet AT %MB750 : Udp_Confirm;

	RESET_Edge : BOOL:=FALSE;
	TestWord : WORD;

	rByte : DINT;
	bSendConf : BOOL := FALSE;
	PacketSize: INT;
	Checksum_send : WORD;
	Checksum_incom : WORD;

	value3: INT;
	value2: INT;

	(*бїшђћтрхь чрэїхэшџ тхэђшыџђю№ют*)
	CoolerByte		: BYTE;

	(* EIB terminal KL6301 process data 24 Byte input and 24 Byte output data K-Bus*)
	ShNOG_Garage_OG_22 AT %MB4 : BOOL:=FALSE;  (*Ях№хфртрхьћщ яр№рьхђ№ эр ф№ѓующ ъюэђ№юыых№. бтхђ т ур№рцх - єѓхъішџ эхшёя№ртэюую тћѕюфр ьюфѓыџ ABB KNX*)
	ShAV_Vent_V3 AT %MB5 : BOOL:=FALSE;  (*Ях№хфртрхьћщ яр№рьхђ№ эр ф№ѓующ ъюэђ№юыых№. бтхђ т ђѓрыхђх*)
	LightLandscape	: BOOL:=FALSE;  (*Ях№хфртрхьћщ яр№рьхђ№ эр ф№ѓующ ъюэђ№юыых№. бтхђ ырэфјрєђр*)
	LightNight AT %MB6 : BOOL := FALSE;  (*Ях№хфртрхьћщ яр№рьхђ№ эр ф№ѓующ ъюэђ№юыых№. "Эюїќ"*)
	KNXISDAY : BOOL := FALSE;
	KNXISTWILIGHT : BOOL := FALSE;
	LightNight_Clock AT %MB8 : BOOL := FALSE;

	SystemTime AT %MB4000 : TIMESTRUCT;
(*
	SS_H_AUT : WORD := 17; (*17*)
	SR_H_AUT : WORD := 6;
	SS_M_AUT : WORD := 19; (*19*)
	SR_M_AUT : WORD := 59;
	SS_H_WIN : WORD := 17; (*16*)
	SR_H_WIN : WORD := 8;
	SS_M_WIN : WORD := 19;
	SR_M_WIN : WORD := 29;
	SS_H_SPR : WORD := 19;
	SR_H_SPR : WORD := 5;
	SS_M_SPR : WORD := 19;
	SR_M_SPR : WORD := 29;
	SS_H_SUM : WORD := 21;
	SR_H_SUM : WORD := 4;
	SS_M_SUM : WORD := 01;
	SR_M_SUM : WORD := 01;
*)

	SS_H_JAN : WORD := 16;
	SR_H_JAN : WORD := 9;
	SS_M_JAN : WORD := 8;
	SR_M_JAN : WORD := 0;
	SS_H_FEB : WORD := 17;
	SR_H_FEB : WORD := 8;
	SS_M_FEB : WORD := 3;
	SR_M_FEB : WORD := 25;
	SS_H_MAR : WORD := 18;
	SR_H_MAR : WORD := 7;
	SS_M_MAR : WORD := 4;
	SR_M_MAR : WORD := 23;
	SS_H_APR : WORD := 19;
SR_H_APR : WORD := 6;
	SS_M_APR : WORD := 7;
SR_M_APR : WORD := 2;
	SS_H_MAY : WORD := 20;
SR_H_MAY : WORD := 4;
SS_M_MAY : WORD := 7;
SR_M_MAY : WORD := 48;
SS_H_JUN : WORD := 21;
SR_H_JUN : WORD := 3;
SS_M_JUN : WORD := 3;
SR_M_JUN : WORD := 55;
SS_H_JUL : WORD := 21;
SR_H_JUL : WORD := 3;
SS_M_JUL : WORD := 18;
SR_M_JUL : WORD := 51;
SS_H_AUG : WORD := 20;
SR_H_AUG : WORD := 4;
SS_M_AUG : WORD := 39;
SR_M_AUG : WORD := 35;
SS_H_SEP : WORD := 19;
SR_H_SEP : WORD := 5;
SS_M_SEP : WORD := 27;
SR_M_SEP : WORD := 35;
SS_H_OCT : WORD := 18;
SR_H_OCT : WORD := 6;
SS_M_OCT : WORD := 8;
SR_M_OCT : WORD := 33;
SS_H_NOV : WORD := 16;
SR_H_NOV : WORD := 7;
SS_M_NOV : WORD := 52;
SR_M_NOV : WORD := 36;
SS_H_DEC : WORD := 16;
SR_H_DEC : WORD := 8;
SS_M_DEC : WORD := 4;
SR_M_DEC : WORD := 36;

	JAN : WORD := 1;
	FEB : WORD := 2;
	MAR : WORD := 3;
	APR : WORD := 4;
	MAY : WORD := 5;
	JUN : WORD := 6;
	JUL : WORD := 7;
	AUG : WORD := 8;
	SEP : WORD := 9;
	OCT : WORD := 10;
	NOV : WORD := 11;
	DEC : WORD := 12;

	KNX_BRIGHTNESS_L : DINT;
	KNX_BRIGHTNESS_C : DINT;
	KNX_BRIGHTNESS_R : DINT;

	LightGarageSecurity : BOOL := FALSE;
	LightGatesLight AT %MB7 : BOOL:=FALSE;  (*Ях№хфртрхьћщ яр№рьхђ№ эр ф№ѓующ ъюэђ№юыых№. Тћъыўїрђхыќ ётхђр тю№юђ т ъюьэрђх юѕ№рэћ*)


	ADSSend: BOOL:=FALSE;

	KL6301_IN_0 AT %IB0: ARRAY[1..24] OF BYTE;
	KL6301_OUT_0 AT %QB0: ARRAY[1..24] OF BYTE;
	Taster0_LUX: BOOL;
	Taster1_LUX: BOOL;
	Taster2_LUX: BOOL;
	Taster3_LUX: BOOL;

	AllOff: BOOL;

	KoefV: BOOL:=FALSE;
	KoefI: BOOL:=FALSE;
	KoefP: BOOL:=TRUE;

	garage_OG_1: BOOL;
	garage_OG_2: BOOL;
	garage_OG_3: BOOL;
	garage_OG_4: BOOL;
	garage_OG_5: BOOL;
	garage_OG_6: BOOL;
	garage_OG_7: BOOL;
	garage_OG_8: BOOL;
	garage_OG_9: BOOL;
	garage_OG_10: BOOL;
	garage_OG_11: BOOL;
	garage_OG_12: BOOL;
	garage_OG_13: BOOL;
	garage_OG_14: BOOL;
	garage_OG_15: BOOL;
	garage_OG_16: BOOL;
	garage_OG_17: BOOL;
	garage_OG_18: BOOL;
	garage_OG_19: BOOL;
	garage_OG_20: BOOL;
	garage_OG_21: BOOL;
	garage_OG_22: BOOL;
	garage_OG_23: BOOL;
	garage_OG_24: BOOL;
	garage_OG_25: BOOL;
	garage_OG_26: BOOL;
	garage_OG_27: BOOL;
	garage_OG_28: BOOL;
	garage_OG_29: BOOL;

	SHUF_PRESSED: BOOL:= FALSE;

	DATA_SCALE_H									:INT :=255;
	DATA_SCALE_L									:INT :=0;
	DATA_SCALE_H_FAN								:INT :=32000;
	DATA_SCALE_L_FAN								:INT :=0;


END_VAR

VAR_GLOBAL CONSTANT
        TCPADS_MAXUDP_BUFFSIZE : UDINT :=32000;
END_VAR
                                                                                               '             , Z @ ЦЅ           Globale_Variablen_EIB Z	Z                 Я  VAR_GLOBAL
	EIB_DATA_READ:  ARRAY[1..14] OF BYTE;
	Lux_REAL: REAL;	(* LUX *)
	Switch_0: BOOL;	(* Switch 1/2/1*)
	Switch_1: BOOL;	(* Switch 1/2/2*)
	Taster_0 AT %QX32.0: BOOL;
	Taster_1 AT %QX32.1: BOOL;
	Temp_0_KL3312 AT %IB26:INT;
	Temp_1_KL3312 AT %IB30:INT;
	IN_0_KL1012 AT %IX32.0:BOOL;
	IN_1_KL1012 AT %IX32.1:BOOL;
	str_Send: EIB_SEND;
	EIB_4FachT: BOOL;
	ToggleBit: BOOL;
	Soll_Lamp_Dimmer: INT;

	TurnAllTheLight: BOOL := FALSE;
END_VAR
                                                                                               '           щ   ,   ђї           TwinCAT_Configuration Z	]р1]щ     ДrІ          K  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.KL3403_ctrl_1 AT %QB36 : BYTE;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 2 (KL3403)^Channel 2^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 2 (KL3403)^Channel 3^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 3 (KL3403)^Channel 1^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 3 (KL3403)^Channel 2^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 3 (KL3403)^Channel 3^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 4 (KL3403)^Channel 1^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 4 (KL3403)^Channel 2^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 4 (KL3403)^Channel 3^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 5 (KL3403)^Channel 1^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 5 (KL3403)^Channel 2^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 5 (KL3403)^Channel 3^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 6 (KL3403)^Channel 1^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 6 (KL3403)^Channel 2^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 6 (KL3403)^Channel 3^Ctrl;TIID^Device 3 (CX1100)^CX1100-KB^Term 2 (KL3403)^Channel 1^Ctrl} *)
	.KL3403_1_P1 AT %IB36 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 2 (KL3403)^Channel 1^Data In} *)
	.KL3403_1_P2 AT %IB38 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 2 (KL3403)^Channel 2^Data In} *)
	.KL3403_1_P3 AT %IB40 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 2 (KL3403)^Channel 3^Data In} *)
	.KL3403_2_P1 AT %IB42 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 3 (KL3403)^Channel 1^Data In} *)
	.KL3403_2_P2 AT %IB44 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 3 (KL3403)^Channel 2^Data In} *)
	.KL3403_2_P3 AT %IB46 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 3 (KL3403)^Channel 3^Data In} *)
	.KL3403_3_P1 AT %IB48 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 4 (KL3403)^Channel 1^Data In} *)
	.KL3403_3_P2 AT %IB50 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 4 (KL3403)^Channel 2^Data In} *)
	.KL3403_3_P3 AT %IB52 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 4 (KL3403)^Channel 3^Data In} *)
	.KL3403_4_P1 AT %IB54 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 5 (KL3403)^Channel 1^Data In} *)
	.KL3403_4_P2 AT %IB56 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 5 (KL3403)^Channel 2^Data In} *)
	.KL3403_4_P3 AT %IB58 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 5 (KL3403)^Channel 3^Data In} *)
	.KL3403_5_P1 AT %IB60 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 6 (KL3403)^Channel 1^Data In} *)
	.KL3403_5_P2 AT %IB62 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 6 (KL3403)^Channel 2^Data In} *)
	.KL3403_5_P3 AT %IB64 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (CX1100)^CX1100-KB^Term 6 (KL3403)^Channel 3^Data In} *)
END_VAR                                                                                               '           	   , X t ФЃ           Variable_Configuration Z	Z	                        VAR_CONFIG
END_VAR
                                                                                                 E   |0|0 @;    @   Verdana @                ыџџџ              Ь                Х      џ   џџџ  Ь3 џџџ   џ џџџ                  DEFAULT             System      K   |0|0 @A    @   MS Sans Serif @                ѓџџџ                         hh':'mm':'ss   dd'-'MM'-'yyyy'           c:\images\grsch-bg.jpg   , &m           ST_FifoEntry Z	Z                        TYPE ST_FifoEntry :
STRUCT
	sRemoteHost		: STRING(15);		(* Remote address. String containing an (Ipv4) Internet Protocol dotted address. *)
	nRemotePort		: UDINT;			(* Remote Internet Protocol (IP) port. *)
	msg				: STRING;			(* Udp packet data *)
END_STRUCT
END_TYPE               , m  <b            Udp_Confirm Z	Z      ,	','0,	        ­   TYPE Udp_Confirm :
STRUCT
	title_packet_num : INT;
	title_packet_code : INT;
	title_packet_crc : INT;
	data_pointer : INT;
	data_new_value : INT;
END_STRUCT
END_TYPE               , mФ <&        
   Udp_Packet Z	Z      e.				C         V  TYPE Udp_Packet :
STRUCT
	title_packet_num : INT;
	title_packet_code : INT;
	title_packet_crc : INT;
	grsch_P : ARRAY[1..5] OF INT;
	grsch_V : ARRAY[1..5] OF INT;
	grsch_I : ARRAY[1..5] OF INT;
	grsch_garage_og : ARRAY[1..29] OF INT;
	grsch_power_VRU_value : ARRAY[1..11] OF INT;
	grsch_power_limit : INT;
	grsch_current_switch_pos : INT;
	grsch_power_VRU_switch : ARRAY[1..11] OF INT;
	grsch_SHUF_PRESSED : INT;
	grsch_power_system_switcher : INT;
	schav_stack : ARRAY[1..7] OF INT;
	schnog_stack : ARRAY[1..19] OF INT;
	schszp_stack  : ARRAY[1..116] OF INT;
END_STRUCT
END_TYPE              л  ,   ЦЃ        	   AutoReset ШќZ	YќZ      IdРЯ D         S   PROGRAM AutoReset
VAR
	AutoResetCX: PLC_Reset;
	AutoStartCX: PLC_Start;
END_VAR)    џџџџ            
   RESET_EdgeL        џџџџ                AutoResetCXI 	   PLC_Reset@             n                                                          n   џџџџ               801     p   џџџџ   
             AutoStartCXA 	   PLC_Start8             r   q                                                       q   џџџџ            
   RESET_EdgeL     r   џџџџ               801     d                  є   , Ф m&        	   CalcPower Z	Z                      v   PROGRAM CalcPower
VAR
	koef_power: REAL := 0.5;
	koef_voltage: REAL := 0.1;
	koef_current: REAL := 0.005;
END_VARx  KL3403_1_P :=ABS(KL3403_1_P1 + KL3403_1_P2 + KL3403_1_P3)*koef_power/1000;
KL3403_2_P :=ABS (KL3403_2_P1 + KL3403_2_P2 + KL3403_2_P3)*koef_power/1000;
KL3403_3_P := ABS(KL3403_3_P1 + KL3403_3_P2 + KL3403_3_P3)*koef_power/1000;
KL3403_4_P := ABS(KL3403_4_P1 + KL3403_4_P2 + KL3403_4_P3)*koef_power/1000;
KL3403_5_P := ABS(KL3403_5_P1 + KL3403_5_P2 + KL3403_5_P3)*koef_power/1000;

KL3403_1_V :=ABS(KL3403_1_P1 + KL3403_1_P2 + KL3403_1_P3)*koef_voltage/3;
KL3403_2_V :=ABS (KL3403_2_P1 + KL3403_2_P2 + KL3403_2_P3)*koef_voltage/3;
KL3403_3_V := ABS(KL3403_3_P1 + KL3403_3_P2 + KL3403_3_P3)*koef_voltage/3;
KL3403_4_V := ABS(KL3403_4_P1 + KL3403_4_P2 + KL3403_4_P3)*koef_voltage/3;
KL3403_5_V := ABS(KL3403_5_P1 + KL3403_5_P2 + KL3403_5_P3)*koef_voltage/3;

KL3403_1_I :=ABS(KL3403_1_P1 + KL3403_1_P2 + KL3403_1_P3)*koef_current/3;
KL3403_2_I :=ABS (KL3403_2_P1 + KL3403_2_P2 + KL3403_2_P3)*koef_current/3;
KL3403_3_I := ABS(KL3403_3_P1 + KL3403_3_P2 + KL3403_3_P3)*koef_current/3;
KL3403_4_I := ABS(KL3403_4_P1 + KL3403_4_P2 + KL3403_4_P3)*koef_current/3;
KL3403_5_I := ABS(KL3403_5_P1 + KL3403_5_P2 + KL3403_5_P3)*koef_current/3;               ђ   , b mФ         
   CheckLight Z	Z       R D            PROGRAM CheckLight
VAR

	ADSWRITE: FW_AdsWrite;
	timer: TON;
	ttimer1: TOF;
	timer2: TON;

	AdsWriteLandscape: FW_AdsWrite;
	timer2l: TON;
	timer22: TON;
	AdsWriteNight: FW_AdsWrite;
	timer23: TON;
	AdsWriteUOG: FW_AdsWrite;
	timer24: TON;
	ADSnew222: ADSWRITE;
END_VAR) 9  џџџџ      
         garage_OG_10\     :  џџџџ      
         garage_OG_11\     =  џџџџ               t#300s&     8  џџџџ
                      OR         9  :                                  <  џџџџ                ttimer1'    TOF         8  =                                      ;  џџџџ      $         ShAV_Vent_V3[ <        a  џџџџ      
         garage_OG_22\     b  џџџџ      $         ShNOG_Garage_OG_22 a        B  џџџџ   	      	      '192.168.3.223.1.1'i     C  џџџџ   
      
      800     D  џџџџ               16#40201     E  џџџџ               10     F  џџџџ               SIZEOF(SCHNOG)q     G  џџџџ               ADR(SCHNOG)_     H  џџџџ               t#900ms1     I  џџџџ               t#10s     J  џџџџ	                timer2l'    TON         J  H                                     K  џџџџ      &          AdsWriteLandscape{    FW_AdsWriteS         B  C  D  E  F  G  J  I                                                                  V  џџџџ               '192.168.3.223.1.1'i     W  џџџџ               800     X  џџџџ               16#F0212     Y  џџџџ               16#64#     Z  џџџџ               1     [  џџџџ               ADR(LightGarageSecurity)     ]  џџџџ               t#10s     \  џџџџ               t#900ms1     ^  џџџџ                timer23+    TON         ^  \                                     _  џџџџ      '          AdsWriteUOGU    FW_AdsWriteS         V  W  X  Y  Z  [  ^  ]                                                                  d                    ,   mb            Fletcher_checksum Z	Z      f РfЯ        в   PROGRAM Fletcher_checksum
VAR
	Data_massive1 AT %MB756: ARRAY[1..4] OF BYTE;
	Data_massive2 AT %MB2006: ARRAY[1..424] OF BYTE;
	i: INT;
	j: INT;
	Sum1: INT;
	Sum2: INT;
	Sum3: INT;
	Sum4: INT;
END_VARЁ  Checksum_send := 0;
Checksum_incom := 0;
i := 0;
j := 0;
Sum1 := 0;
Sum2 := 0;
Sum3 := 0;
Sum4 := 0;

FOR i := 1 TO (PacketSize) DO
Sum1 := (Sum1 + Data_massive1[i]) MOD 255;
Sum2 := (Sum1 + Sum2) MOD 255;
END_FOR;
Checksum_incom := SHL(Sum2, 8) + Sum1;

FOR j := 1 TO (424) DO
Sum3 := (Sum3 + Data_massive2[j]) MOD 255;
Sum4 := (Sum3 + Sum4) MOD 255;
END_FOR;
Checksum_send := SHL(Sum4, 8) + Sum3;               ю   , Я &           KNX_Init Z	Z      IBRR_CE;          PROGRAM KNX_Init
VAR

(*ётхђ*)
	Group_1_1_1: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=1);
	Group_1_1_2: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=2);
	Group_1_1_3: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=3);
	Group_1_1_4: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=4);
	Group_1_1_5: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=5);
	Group_1_1_6: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=6);
	Group_1_1_7: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=7);
	Group_1_1_8: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=8);
	Group_1_1_9: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=9);
	Group_1_1_10: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=10);
	Group_1_1_11: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=11);
	Group_1_1_12: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=12);
	Group_1_1_13: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=13);
	Group_1_1_14: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=14);
	Group_1_1_15: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=15);
	Group_1_1_16: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=16);
	Group_1_1_17: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=17);
	Group_1_1_18: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=18);
	Group_1_1_19: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=19);
	Group_1_1_20: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=20);
	Group_1_1_21: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=21);
	Group_1_1_22: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=22);
	Group_1_1_23: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=23);
	Group_1_1_24: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=24);
	Group_1_1_25: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=25);
	Group_1_1_26: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=26);
	Group_1_1_27: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=27);
	Group_1_1_28: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=28);
	Group_1_1_29: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=29);
	Group_1_1_30: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=30);
	Group_1_1_31: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=31);
	Group_1_1_32: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=32);
	Group_1_1_33: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=33);
	Group_1_1_34: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=34);
	Group_1_1_35: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=35);
	Group_1_1_36: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=36);
	Group_1_1_37: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=37);
	Group_1_1_38: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=38);
	KNXSYSTEM_WEATHERST_BRIGHTNES_L: EIB_GROUP_ADDR := (MAIN:=5,SUB_MAIN:=1,NUMBER:=2);
	KNXSYSTEM_WEATHERST_BRIGHTNES_C: EIB_GROUP_ADDR := (MAIN:=5,SUB_MAIN:=1,NUMBER:=3);
	KNXSYSTEM_WEATHERST_BRIGHTNES_R: EIB_GROUP_ADDR := (MAIN:=5,SUB_MAIN:=1,NUMBER:=4);
	KNXSYSTEM_WEATHERST_ISDAY: EIB_GROUP_ADDR := (MAIN:=5,SUB_MAIN:=1,NUMBER:=6);
	KNXSYSTEM_WEATHERST_ISTWILIGHT: EIB_GROUP_ADDR := (MAIN:=5,SUB_MAIN:=1,NUMBER:=40);

	init1: EIB_READ_SEND;
	init2: EIB_READ_SEND;
	init4: EIB_READ_SEND;
	init3: EIB_READ_SEND;
	init5: EIB_READ_SEND;
	init6: EIB_READ_SEND;
	init7: EIB_READ_SEND;
	init8: EIB_READ_SEND;
	init9: EIB_READ_SEND;
	init10: EIB_READ_SEND;
	init11: EIB_READ_SEND;
	init12: EIB_READ_SEND;
	init24: EIB_READ_SEND;
	init23: EIB_READ_SEND;
	init22: EIB_READ_SEND;
	init21: EIB_READ_SEND;
	init20: EIB_READ_SEND;
	init19: EIB_READ_SEND;
	init13: EIB_READ_SEND;
	init14: EIB_READ_SEND;
	init15: EIB_READ_SEND;
	init16: EIB_READ_SEND;
	init17: EIB_READ_SEND;
	init18: EIB_READ_SEND;
	init25: EIB_READ_SEND;
	init26: EIB_READ_SEND;
	init27: EIB_READ_SEND;
	init28: EIB_READ_SEND;
	init29: EIB_READ_SEND;
	init30: EIB_READ_SEND;
	init31: EIB_READ_SEND;
	init32: EIB_READ_SEND;
	init33: EIB_READ_SEND;
	init34: EIB_READ_SEND;
	init35: EIB_READ_SEND;
	init36: EIB_READ_SEND;
	init37: EIB_READ_SEND;
	init38: EIB_READ_SEND;
	init39: EIB_READ_SEND;
	init40: EIB_READ_SEND;
	init41: EIB_READ_SEND;
	init42: EIB_READ_SEND;
	init43: EIB_READ_SEND;
END_VAR)Ќ    џџџџ               Group_1_1_1L        џџџџ                init1    EIB_READ_SENDd                                                               џџџџ      
         TRUE!        џџџџ               MAIN.fb_KL6301_0.str_Data_RecИ     +  џџџџ   	      	      Group_1_1_2L     ,  џџџџ                init2    EIB_READ_SENDd         +  -  .                                              -  џџџџ   
   
   
      TRUE!     .  џџџџ               MAIN.fb_KL6301_0.str_Data_RecИ     /  џџџџ               Group_1_1_3L     0  џџџџ                init3    EIB_READ_SENDd         /  1  2                                              1  џџџџ      
         TRUE!     2  џџџџ               MAIN.fb_KL6301_0.str_Data_RecИ     3  џџџџ               Group_1_1_4L     4  џџџџ                init4    EIB_READ_SENDd         3  5  6                                              5  џџџџ      
         TRUE!     6  џџџџ               MAIN.fb_KL6301_0.str_Data_RecИ     7  џџџџ               Group_1_1_5L     8  џџџџ                init5    EIB_READ_SENDd         7  9  :                                              9  џџџџ      
         TRUE!     :  џџџџ               MAIN.fb_KL6301_0.str_Data_RecИ     ;  џџџџ               Group_1_1_6L     <  џџџџ                 init6    EIB_READ_SENDd         ;  =  >                                              =  џџџџ      
         TRUE!     >  џџџџ               MAIN.fb_KL6301_0.str_Data_RecИ     ?  џџџџ&      ,         Group_1_1_7L     @  џџџџ3      @          init7    EIB_READ_SENDd         ?  A  B                                              A  џџџџ(      +         TRUE!     B  џџџџ%      1         MAIN.fb_KL6301_0.str_Data_RecИ     C  џџџџ&   	   ,   	      Group_1_1_8L     D  џџџџ3      @          init8    EIB_READ_SENDd         C  E  F                                              E  џџџџ(   
   +   
      TRUE!     F  џџџџ%      1         MAIN.fb_KL6301_0.str_Data_RecИ     G  џџџџ&      ,         Group_1_1_9L     H  џџџџ3      @          init9    EIB_READ_SENDd         G  I  J                                              I  џџџџ(      +         TRUE!     J  џџџџ%      1         MAIN.fb_KL6301_0.str_Data_RecИ     K  џџџџ&      ,         Group_1_1_10S     L  џџџџ3      @          init10    EIB_READ_SENDd         K  M  N                                              M  џџџџ(      +         TRUE!     N  џџџџ&      2         MAIN.fb_KL6301_0.str_Data_RecИ     O  џџџџ&      ,         Group_1_1_11S     P  џџџџ3      @          init11    EIB_READ_SENDd         O  Q  R                                              Q  џџџџ(      +         TRUE!     R  џџџџ&      2         MAIN.fb_KL6301_0.str_Data_RecИ     S  џџџџ&      ,         Group_1_1_12S     T  џџџџ3      @           init12    EIB_READ_SENDd         S  U  V                                              U  џџџџ(      +         TRUE!     V  џџџџ&      2         MAIN.fb_KL6301_0.str_Data_RecИ       џџџџ   "      "      Group_1_1_13S       џџџџ          %       init13    EIB_READ_SENDd                                                             џџџџ   #   
   #      TRUE!       џџџџ   $      $      MAIN.fb_KL6301_0.str_Data_RecИ       џџџџ   '      '      Group_1_1_14S       џџџџ   %      *       init14    EIB_READ_SENDd                                                             џџџџ   (   
   (      TRUE!       џџџџ   )      )      MAIN.fb_KL6301_0.str_Data_RecИ       џџџџ   ,      ,      Group_1_1_15S       џџџџ   *      /       init15    EIB_READ_SENDd                                                             џџџџ   -   
   -      TRUE!       џџџџ   .      .      MAIN.fb_KL6301_0.str_Data_RecИ       џџџџ   1      1      Group_1_1_16S       џџџџ   /      4       init16    EIB_READ_SENDd                                                             џџџџ   2   
   2      TRUE!       џџџџ   3      3      MAIN.fb_KL6301_0.str_Data_RecИ       џџџџ   6      6      Group_1_1_17S       џџџџ   4      9       init17    EIB_READ_SENDd                                                             џџџџ   7   
   7      TRUE!       џџџџ
   8      8      MAIN.fb_KL6301_0.str_Data_RecИ       џџџџ   ;      ;      Group_1_1_18S       џџџџ   9      >       init18    EIB_READ_SENDd                                                             џџџџ   <   
   <      TRUE!       џџџџ
   =      =      MAIN.fb_KL6301_0.str_Data_RecИ       џџџџ&   "   ,   "      Group_1_1_19S       џџџџ3       @   %       init19    EIB_READ_SENDd                                                              џџџџ(   #   +   #      TRUE!        џџџџ%   $   1   $      MAIN.fb_KL6301_0.str_Data_RecИ     Ё  џџџџ&   '   ,   '      Group_1_1_20S     Ђ  џџџџ3   %   @   *       init20    EIB_READ_SENDd         Ё  Ѓ  Є                                              Ѓ  џџџџ(   (   +   (      TRUE!     Є  џџџџ%   )   1   )      MAIN.fb_KL6301_0.str_Data_RecИ     Ѕ  џџџџ&   ,   ,   ,      Group_1_1_21S     І  џџџџ3   *   @   /       init21    EIB_READ_SENDd         Ѕ  Ї  Ј                                              Ї  џџџџ(   -   +   -      TRUE!     Ј  џџџџ%   .   1   .      MAIN.fb_KL6301_0.str_Data_RecИ     Љ  џџџџ&   1   ,   1      Group_1_1_22S     Њ  џџџџ3   /   @   4       init22    EIB_READ_SENDd         Љ  Ћ  Ќ                                              Ћ  џџџџ(   2   +   2      TRUE!     Ќ  џџџџ&   3   2   3      MAIN.fb_KL6301_0.str_Data_RecИ     ­  џџџџ&   6   ,   6      Group_1_1_23S     Ў  џџџџ3   4   @   9       init23    EIB_READ_SENDd         ­  Џ  А                                              Џ  џџџџ(   7   +   7      TRUE!     А  џџџџ&   8   2   8      MAIN.fb_KL6301_0.str_Data_RecИ     Б  џџџџ&   ;   ,   ;      Group_1_1_24S     В  џџџџ3   9   @   >       init24    EIB_READ_SENDd         Б  Г  Д                                              Г  џџџџ(   <   +   <      TRUE!     Д  џџџџ&   =   2   =      MAIN.fb_KL6301_0.str_Data_RecИ     Е  џџџџ   B      B      Group_1_1_25S     Ж  џџџџ   @   (   E       init25    EIB_READ_SENDd         Е  З  И                                              З  џџџџ   C      C      TRUE!     И  џџџџ   D      D      MAIN.fb_KL6301_0.str_Data_RecИ     Й  џџџџ   G      G      Group_1_1_26S     К  џџџџ   E   (   J       init26    EIB_READ_SENDd         Й  Л  М                                              Л  џџџџ   H      H      TRUE!     М  џџџџ   I      I      MAIN.fb_KL6301_0.str_Data_RecИ     Н  џџџџ   L      L      Group_1_1_27S     О  џџџџ   J   (   O       init27    EIB_READ_SENDd         Н  П  Р                                              П  џџџџ   M      M      TRUE!     Р  џџџџ   N      N      MAIN.fb_KL6301_0.str_Data_RecИ     С  џџџџ   R      R      Group_1_1_28S     Т  џџџџ   P   (   U       init28    EIB_READ_SENDd         С  У  Ф                                              У  џџџџ   S      S      TRUE!     Ф  џџџџ   T      T      MAIN.fb_KL6301_0.str_Data_RecИ     Х  џџџџ   X      X      Group_1_1_29S     Ц  џџџџ   V   (   [       init29    EIB_READ_SENDd         Х  Ч  Ш                                              Ч  џџџџ   Y      Y      TRUE!     Ш  џџџџ   Z      Z      MAIN.fb_KL6301_0.str_Data_RecИ     Щ  џџџџ   ^      ^      Group_1_1_30S     Ъ  џџџџ   \   (   a       init30    EIB_READ_SENDd         Щ  Ы  Ь                                              Ы  џџџџ   _      _      TRUE!     Ь  џџџџ   `      `      MAIN.fb_KL6301_0.str_Data_RecИ     Ю  џџџџ3   B   9   B      Group_1_1_31S     Я  џџџџ@   @   M   E       init31    EIB_READ_SENDd         Ю  а  б                                              а  џџџџ5   C   8   C      TRUE!     б  џџџџ3   D   ?   D      MAIN.fb_KL6301_0.str_Data_RecИ     в  џџџџ3   G   9   G      Group_1_1_32S     г  џџџџ@   E   M   J       init32    EIB_READ_SENDd         в  д  е                                              д  џџџџ5   H   8   H      TRUE!     е  џџџџ3   I   ?   I      MAIN.fb_KL6301_0.str_Data_RecИ     ж  џџџџ3   L   9   L      Group_1_1_33S     з  џџџџ@   J   M   O       init33    EIB_READ_SENDd         ж  и  й                                              и  џџџџ5   M   8   M      TRUE!     й  џџџџ3   N   ?   N      MAIN.fb_KL6301_0.str_Data_RecИ     к  џџџџ3   R   9   R      Group_1_1_34S     л  џџџџ@   P   M   U       init34    EIB_READ_SENDd         к  м  н                                              м  џџџџ5   S   8   S      TRUE!     н  џџџџ3   T   ?   T      MAIN.fb_KL6301_0.str_Data_RecИ     о  џџџџ3   X   9   X      Group_1_1_35S     п  џџџџ@   V   M   [       init35    EIB_READ_SENDd         о  р  с                                              р  џџџџ5   Y   8   Y      TRUE!     с  џџџџ3   Z   ?   Z      MAIN.fb_KL6301_0.str_Data_RecИ     т  џџџџ3   ^   9   ^      Group_1_1_36S     у  џџџџ@   \   M   a       init36    EIB_READ_SENDd         т  ф  х                                              ф  џџџџ5   _   8   _      TRUE!     х  џџџџ3   `   ?   `      MAIN.fb_KL6301_0.str_Data_RecИ     ц  џџџџ3   d   9   d      Group_1_1_37S     ч  џџџџ@   b   M   g       init37    EIB_READ_SENDd         ц  ш  щ                                              ш  џџџџ5   e   8   e      TRUE!     щ  џџџџ3   f   ?   f      MAIN.fb_KL6301_0.str_Data_RecИ     ъ  џџџџ3   j   9   j      Group_1_1_38S     ы  џџџџ@   h   M   m       init38    EIB_READ_SENDd         ъ  ь  э                                              ь  џџџџ5   k   8   k      TRUE!     э  џџџџ3   l   ?   l      MAIN.fb_KL6301_0.str_Data_RecИ     ю  џџџџ0   q   ?   q      KNXSYSTEM_WEATHERST_BRIGHTNES_Lѓ     я  џџџџ@   o   M   t       init39    EIB_READ_SENDd         ю  №  ё                                              №  џџџџ5   r   8   r      TRUE!     ё  џџџџ3   s   ?   s      MAIN.fb_KL6301_0.str_Data_RecИ     ђ  џџџџ0   v   ?   v      KNXSYSTEM_WEATHERST_BRIGHTNES_Cѕ     ѓ  џџџџ@   t   M   y       init40    EIB_READ_SENDd         ђ  є  ѕ                                              є  џџџџ5   w   8   w      TRUE!     ѕ  џџџџ3   x   ?   x      MAIN.fb_KL6301_0.str_Data_RecИ     і  џџџџ0   {   ?   {      KNXSYSTEM_WEATHERST_BRIGHTNES_Rѕ     ї  џџџџ@   y   M   ~       init41    EIB_READ_SENDd         і  ј  љ                                              ј  џџџџ5   |   8   |      TRUE!     љ  џџџџ3   }   ?   }      MAIN.fb_KL6301_0.str_Data_RecИ     џ  џџџџ1      ?         KNXSYSTEM_WEATHERST_ISTWILIGHTт        џџџџ@   ~   M          init42    EIB_READ_SENDd         џ                                                    џџџџ5      8         TRUE!       џџџџ3      ?         MAIN.fb_KL6301_0.str_Data_RecИ       џџџџ3      ?         KNXSYSTEM_WEATHERST_ISDAYС       џџџџ@      M          init43    EIB_READ_SENDd                                                             џџџџ5      8         TRUE!       џџџџ3      ?         MAIN.fb_KL6301_0.str_Data_RecИ     d                      , Я Ф &           MAIN iќZ	Z                      ж  PROGRAM MAIN
VAR

	fbReadCoils : FB_MBReadCoils;
	bReadCoils : BOOL;
	nValue : BYTE;


	(* CX Controller *)
	(* KL6301 *)
	(* KL2xx2 *)
	(* KL9010 *)
	(* 1. EIB Device 2 Channel Switch Group Address 1/2/1 and 1 /2/2 *)
	(* 2. EIB Device Lux meter Group Address 1/1/5 *)
	fb_KL6301_0 : KL6301;	(* EIB functonblock *)
	i: INT := 0;				(* CASE *)
	EIB_DATA_SEND_0: EIB_SEND_DATA;
	fbTimer_0: TON;
	TimerOn: BOOL := FALSE;
	FLAG_01: BOOL := TRUE;
END_VAR`  CASE i OF
0: 	fb_KL6301_0.bActivate :=FALSE; (*Start EIB Functionblock*)
	i := 1;

1:	fb_KL6301_0.EIB_PHYS_ADDR.Area:=2;		(* EIB Address 2.3.4 *)
	fb_KL6301_0.EIB_PHYS_ADDR.Line:=3;
	fb_KL6301_0.EIB_PHYS_ADDR.Device:=4;
	(* Filter 1 1/1/0 LEN 63*)
	fb_KL6301_0.EIB_GROUP_FILTER[1].GROUP_ADDR.MAIN:=1;
	fb_KL6301_0.EIB_GROUP_FILTER[1].GROUP_ADDR.SUB_MAIN:=1;
	fb_KL6301_0.EIB_GROUP_FILTER[1].GROUP_ADDR.NUMBER:=0;
	fb_KL6301_0.EIB_GROUP_FILTER[1].GROUP_LEN:=63;

	fb_KL6301_0.EIB_GROUP_FILTER[2].GROUP_ADDR.MAIN:=3;
	fb_KL6301_0.EIB_GROUP_FILTER[2].GROUP_ADDR.SUB_MAIN:=1;
	fb_KL6301_0.EIB_GROUP_FILTER[2].GROUP_ADDR.NUMBER:=0;
	fb_KL6301_0.EIB_GROUP_FILTER[2].GROUP_LEN:=63;

	fb_KL6301_0.EIB_GROUP_FILTER[3].GROUP_ADDR.MAIN:=5;
	fb_KL6301_0.EIB_GROUP_FILTER[3].GROUP_ADDR.SUB_MAIN:=1;
	fb_KL6301_0.EIB_GROUP_FILTER[3].GROUP_ADDR.NUMBER:=0;
	fb_KL6301_0.EIB_GROUP_FILTER[3].GROUP_LEN:=63;

	fb_KL6301_0.bActivate :=TRUE; (*Start EIB Functionblock*)

	IF fb_KL6301_0.bReady THEN
		IF NOT fb_KL6301_0.bError THEN
			i:=2;  (* EIB functionblock is now ready to send and receive *)
		ELSE
			i:=100; (* EIB ERROR*)
		END_IF
	END_IF
2:
(*бюсх№хь тёў шэєѓ. Яю ъ№рщэхщ ьх№х, яюя№юсѓхь *)
KNX_Init;
(*POWER_OFF_TEST;*)

100:	;(*ERROR EIB*)
END_CASE

fb_KL6301_0(
	idx:=20,
	KL6301_IN:=KL6301_IN_0,				(* Terminal variable - address IN *)
	KL6301_OUT:=KL6301_OUT_0 );			(* Terminal variable - address OUT *)

Main_EIB_REC;

IF KoefV=TRUE THEN
	KL3403_ctrl_1:=1;
	KoefI:=FALSE;
	KoefV:=FALSE;
	KoefP:=FALSE;

END_IF

IF KoefI=TRUE THEN
	KL3403_ctrl_1:=0;
	KoefI:=FALSE;
	KoefV:=FALSE;
	KoefP:=FALSE;
END_IF

IF KoefP=TRUE THEN
	KL3403_ctrl_1:=2;
	KoefI:=FALSE;
	KoefV:=FALSE;
	KoefP:=FALSE;
END_IF

IF SHUF_PRESSED = TRUE THEN
	POWER_OFF_TEST;
	SHUF_PRESSED:= FALSE;
END_IF;

(* ZAPLATKA ZIMA VESNA LETO OSEN *)

IF (SystemTime.wMonth = JAN) AND SystemTime.wHour = SS_H_JAN AND SystemTime.wMinute = SS_M_JAN THEN
	LightNight_Clock := TRUE;						
END_IF;							
IF (SystemTime.wMonth = JAN) AND SystemTime.wHour = SR_H_JAN AND SystemTime.wMinute = SR_M_JAN THEN							
	LightNight_Clock := FALSE;						
END_IF;							
IF (SystemTime.wMonth = FEB) AND SystemTime.wHour = SS_H_FEB AND SystemTime.wMinute = SS_M_FEB THEN							
	LightNight_Clock := TRUE;						
END_IF;							
IF (SystemTime.wMonth = FEB) AND SystemTime.wHour = SR_H_FEB AND SystemTime.wMinute = SR_M_FEB THEN							
	LightNight_Clock := FALSE;						
END_IF;							
IF (SystemTime.wMonth = MAR) AND SystemTime.wHour = SS_H_MAR AND SystemTime.wMinute = SS_M_MAR THEN							
	LightNight_Clock := TRUE;						
END_IF;							
IF (SystemTime.wMonth = MAR) AND SystemTime.wHour = SR_H_MAR AND SystemTime.wMinute = SR_M_MAR THEN							
	LightNight_Clock := FALSE;						
END_IF;							
IF (SystemTime.wMonth = APR) AND SystemTime.wHour = SS_H_APR AND SystemTime.wMinute = SS_M_APR THEN							
	LightNight_Clock := TRUE;						
END_IF;							
IF (SystemTime.wMonth = APR) AND SystemTime.wHour = SR_H_APR AND SystemTime.wMinute = SR_M_APR THEN							
	LightNight_Clock := FALSE;						
END_IF;							
IF (SystemTime.wMonth = MAY) AND SystemTime.wHour = SS_H_MAY AND SystemTime.wMinute = SS_M_MAY THEN							
	LightNight_Clock := TRUE;						
END_IF;							
IF (SystemTime.wMonth = MAY) AND SystemTime.wHour = SR_H_MAY AND SystemTime.wMinute = SR_M_MAY THEN							
	LightNight_Clock := FALSE;						
END_IF;							
IF (SystemTime.wMonth = JUN) AND SystemTime.wHour = SS_H_JUN AND SystemTime.wMinute = SS_M_JUN THEN							
	LightNight_Clock := TRUE;						
END_IF;							
IF (SystemTime.wMonth = JUN) AND SystemTime.wHour = SR_H_JUN AND SystemTime.wMinute = SR_M_JUN THEN							
	LightNight_Clock := FALSE;						
END_IF;							
IF (SystemTime.wMonth = JUL) AND SystemTime.wHour = SS_H_JUL AND SystemTime.wMinute = SS_M_JUL THEN							
	LightNight_Clock := TRUE;						
END_IF;							
IF (SystemTime.wMonth = JUL) AND SystemTime.wHour = SR_H_JUL AND SystemTime.wMinute = SR_M_JUL THEN							
	LightNight_Clock := FALSE;						
END_IF;							
IF (SystemTime.wMonth = AUG) AND SystemTime.wHour = SS_H_AUG AND SystemTime.wMinute = SS_M_AUG THEN							
	LightNight_Clock := TRUE;						
END_IF;							
IF (SystemTime.wMonth = AUG) AND SystemTime.wHour = SR_H_AUG AND SystemTime.wMinute = SR_M_AUG THEN							
	LightNight_Clock := FALSE;						
END_IF;							
IF (SystemTime.wMonth = SEP) AND SystemTime.wHour = SS_H_SEP AND SystemTime.wMinute = SS_M_SEP THEN							
	LightNight_Clock := TRUE;						
END_IF;							
IF (SystemTime.wMonth = SEP) AND SystemTime.wHour = SR_H_SEP AND SystemTime.wMinute = SR_M_SEP THEN							
	LightNight_Clock := FALSE;						
END_IF;							
IF (SystemTime.wMonth = OCT) AND SystemTime.wHour = SS_H_OCT AND SystemTime.wMinute = SS_M_OCT THEN							
	LightNight_Clock := TRUE;						
END_IF;							
IF (SystemTime.wMonth = OCT) AND SystemTime.wHour = SR_H_OCT AND SystemTime.wMinute = SR_M_OCT THEN							
	LightNight_Clock := FALSE;						
END_IF;							
IF (SystemTime.wMonth = NOV) AND SystemTime.wHour = SS_H_NOV AND SystemTime.wMinute = SS_M_NOV THEN							
	LightNight_Clock := TRUE;						
END_IF;							
IF (SystemTime.wMonth = NOV) AND SystemTime.wHour = SR_H_NOV AND SystemTime.wMinute = SR_M_NOV THEN							
	LightNight_Clock := FALSE;						
END_IF;							
IF (SystemTime.wMonth = DEC) AND SystemTime.wHour = SS_H_DEC AND SystemTime.wMinute = SS_M_DEC THEN							
	LightNight_Clock := TRUE;						
END_IF;							
IF (SystemTime.wMonth = DEC) AND SystemTime.wHour = SR_H_DEC AND SystemTime.wMinute = SR_M_DEC THEN
	LightNight_Clock := FALSE;
END_IF;

(*
IF (SystemTime.wMonth = DEC OR SystemTime.wMonth = JAN OR SystemTime.wMonth = FEB) AND SystemTime.wHour = SS_H_WIN AND SystemTime.wMinute = SS_M_WIN THEN
	LightNight_Clock := TRUE;
END_IF;
IF (SystemTime.wMonth = DEC OR SystemTime.wMonth = JAN OR SystemTime.wMonth = FEB) AND SystemTime.wHour = SR_H_WIN AND SystemTime.wMinute = SR_M_WIN THEN
	LightNight_Clock := FALSE;
END_IF;

IF (SystemTime.wMonth = MAR OR SystemTime.wMonth = APR OR SystemTime.wMonth = MAY) AND SystemTime.wHour = SS_H_SPR AND SystemTime.wMinute = SS_M_SPR THEN
	LightNight_Clock := TRUE;
END_IF;
IF (SystemTime.wMonth = MAR OR SystemTime.wMonth = APR OR SystemTime.wMonth = MAY) AND SystemTime.wHour = SR_H_SPR AND SystemTime.wMinute = SR_M_SPR THEN
	LightNight_Clock := FALSE;
END_IF;

IF (SystemTime.wMonth = JUN OR SystemTime.wMonth = JUL OR SystemTime.wMonth = AUG) AND SystemTime.wHour = SS_H_SUM AND SystemTime.wMinute = SS_M_SUM THEN
	LightNight_Clock := TRUE;
END_IF;
IF (SystemTime.wMonth = JUN OR SystemTime.wMonth = JUL OR SystemTime.wMonth = AUG) AND SystemTime.wHour = SR_H_SUM AND SystemTime.wMinute = SR_M_SUM THEN
	LightNight_Clock := FALSE;
END_IF;

IF (SystemTime.wMonth = SEP OR SystemTime.wMonth = OCT OR SystemTime.wMonth = NOV) AND SystemTime.wHour = SS_H_AUT AND SystemTime.wMinute = SS_M_AUT THEN
	LightNight_Clock := TRUE;
END_IF;
IF (SystemTime.wMonth = SEP OR SystemTime.wMonth = OCT OR SystemTime.wMonth = NOV) AND SystemTime.wHour = SR_H_AUT AND SystemTime.wMinute = SR_M_AUT THEN
	LightNight_Clock := FALSE;
END_IF;

ZAPLATKA *)

IF KL6301_IN_0[10] = 16#0081 THEN
	LightGatesLight := TRUE;
ELSE
	LightGatesLight := FALSE;
END_IF;

Udp_send_packet_init;
PeerToPeer;
Udp_receive_packet_init;

IF (SystemTime.wDay = 15) AND SystemTime.wHour = 4 AND SystemTime.wMinute = 00 THEN
RESET_Edge:= TRUE;
AutoReset;
END_IF;               R   , Я b Ф            Main_EIB_REC Z	Z       ИV@         G  PROGRAM Main_EIB_REC
VAR
	EIB_BIT_REC_0: EIB_BIT_REC;

(*	EIB_BIT_REC_1: EIB_BIT_REC;
	EIB_REAL_REC_0:EIB_2OCTET_FLOAT_REC;
	EIB_REAL_REC_Temp:EIB_2OCTET_FLOAT_REC;
	EIB_8Bit:EIB_8BIT_SIGN_REC;
	EIB_3Bit:EIB_3BIT_CONTROL_REC;
	EIB_3Bit_1:EIB_3BIT_CONTROL_REC;
	EIB_2BYTE_UINT:EIB_2OCTET_UNSIGN_REC;
	EIB_4UDINT:EIB_4OCTET_SIGN_REC;
	EIB_4Float:EIB_4OCTET_FLOAT_REC;  *)

	Group_1_1_1: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=1);
	Group_1_1_2: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=2);
	Group_1_1_3: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=3);
	Group_1_1_4: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=4);
	Group_1_1_5: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=5);
	Group_1_1_6: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=6);
	Group_1_1_7: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=7);
	Group_1_1_8: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=8);
	Group_1_1_9: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=9);
	Group_1_1_10: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=10);
	Group_1_1_11: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=11);
	Group_1_1_12: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=12);
	Group_1_1_13: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=13);
	Group_1_1_14: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=14);
	Group_1_1_15: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=15);
	Group_1_1_16: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=16);
	Group_1_1_17: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=17);
	Group_1_1_18: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=18);
	Group_1_1_19: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=19);
	Group_1_1_20: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=20);
	Group_1_1_21: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=21);
	Group_1_1_22: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=22);
	Group_1_1_23: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=23);
	Group_1_1_24: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=24);
	Group_1_1_25: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=25);
	Group_1_1_26: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=26);
	Group_1_1_27: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=27);
	Group_1_1_28: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=28);
	Group_1_1_29: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=29);  (*zdes bilo MAIN:=5,SUB_MAIN:=1,NUMBER:=6. Sozdal otdelnuyu peremennuyu s etim adresom nizhe*)
	Group_1_1_30: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=30);

	Group_1_1_31: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=31);
	Group_1_1_32: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=32);
	Group_1_1_33: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=33);
	Group_1_1_34: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=34);
	Group_1_1_35: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=35);
	Group_1_1_36: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=36);
	Group_1_1_37: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=37);
	Group_1_1_38: EIB_GROUP_ADDR := (MAIN:=1,SUB_MAIN:=1,NUMBER:=38);

	KNXSYSTEM_WEATHERST_BRIGHTNES_L: EIB_GROUP_ADDR := (MAIN:=5,SUB_MAIN:=1,NUMBER:=2);
	KNXSYSTEM_WEATHERST_BRIGHTNES_C: EIB_GROUP_ADDR := (MAIN:=5,SUB_MAIN:=1,NUMBER:=3);
	KNXSYSTEM_WEATHERST_BRIGHTNES_R: EIB_GROUP_ADDR := (MAIN:=5,SUB_MAIN:=1,NUMBER:=4);
	KNXSYSTEM_WEATHERST_ISTWILIGHT: EIB_GROUP_ADDR := (MAIN:=5,SUB_MAIN:=1,NUMBER:=40);
	KNXSYSTEM_WEATHERST_ISDAY: EIB_GROUP_ADDR := (MAIN:=5,SUB_MAIN:=1,NUMBER:=6);

	EIB_BIT_REC_1: EIB_BIT_REC;
	EIB_BIT_REC_2: EIB_BIT_REC;
	EIB_BIT_REC_3: EIB_BIT_REC;
	EIB_BIT_REC_4: EIB_BIT_REC;
	EIB_BIT_REC_5: EIB_BIT_REC;
	EIB_BIT_REC_6: EIB_BIT_REC;
	EIB_BIT_REC_7: EIB_BIT_REC;
	EIB_BIT_REC_8: EIB_BIT_REC;
	EIB_BIT_REC_9: EIB_BIT_REC;
	EIB_BIT_REC_10: EIB_BIT_REC;
	EIB_BIT_REC_11: EIB_BIT_REC;
	EIB_BIT_REC_12: EIB_BIT_REC;
	EIB_BIT_REC_13: EIB_BIT_REC;
	EIB_BIT_REC_14: EIB_BIT_REC;
	EIB_BIT_REC_15: EIB_BIT_REC;
	EIB_BIT_REC_16: EIB_BIT_REC;
	EIB_BIT_REC_17: EIB_BIT_REC;
	EIB_BIT_REC_18: EIB_BIT_REC;
	EIB_BIT_REC_19: EIB_BIT_REC;
	EIB_BIT_REC_20: EIB_BIT_REC;
	EIB_BIT_REC_21: EIB_BIT_REC;
	EIB_BIT_REC_22: EIB_BIT_REC;
	EIB_BIT_REC_23: EIB_BIT_REC;
	EIB_BIT_REC_24: EIB_BIT_REC;
	EIB_BIT_REC_25: EIB_BIT_REC;
	EIB_BIT_REC_26: EIB_BIT_REC;
	EIB_BIT_REC_27: EIB_BIT_REC;
	EIB_BIT_REC_28: EIB_BIT_REC;
	EIB_BIT_REC_29: EIB_BIT_REC;
	EIB_BIT_REC_30: EIB_BIT_REC;
	EIB_BIT_REC_31: EIB_BIT_REC;
	EIB_BIT_REC_32: EIB_BIT_REC;
	EIB_BIT_REC_33: EIB_BIT_REC;
	EIB_BIT_REC_34: EIB_BIT_REC;
	EIB_BIT_REC_35: EIB_BIT_REC;
	EIB_BIT_REC_36: EIB_BIT_REC;
	EIB_BIT_REC_37: EIB_BIT_REC;
	EIB_BIT_REC_38: EIB_BIT_REC;
	EIB_BIT_REC_39: EIB_BIT_REC;
	EIB_BIT_REC_40: EIB_BIT_REC;
	EIB_BIT_REC_41: EIB_BIT_REC;
	EIB_ALL_DATA_TYPES_REC_40: EIB_4OCTET_SIGN_REC;
	EIB_ALL_DATA_TYPES_REC_41: EIB_4OCTET_SIGN_REC;
	EIB_ALL_DATA_TYPES_REC_42: EIB_4OCTET_SIGN_REC;
	fb_GetTi: NT_GetTime;
	Timer1: TON;
END_VAR)    џџџџ               Group_1_1_23S        џџџџ               MAIN.fb_KL6301_0.str_Data_RecИ     О   џџџџ               Group_1_1_21S     С   џџџџ               Group_1_1_22S        џџџџ                EIB_BIT_REC_0[    EIB_BIT_RECM                                                      џџџџ&      ,         garage_OG_1N         Н   џџџџ                EIB_BIT_REC_2[    EIB_BIT_RECM         О                                          П   џџџџ&      ,         garage_OG_3N Н        Р   џџџџ                EIB_BIT_REC_3[    EIB_BIT_RECM         С                                          Т   џџџџ&      ,         garage_OG_4N Р        а   џџџџ1      =         MAIN.fb_KL6301_0.str_Data_RecИ     в   џџџџ1   	   7   	      Group_1_1_14S     е   џџџџ1      7         Group_1_1_15S     и   џџџџ1      7         Group_1_1_27S     б   џџџџ>      K          EIB_BIT_REC_18b    EIB_BIT_RECM         в   а                                       г   џџџџR   
   X   
      garage_OG_10U б        д   џџџџ>      K          EIB_BIT_REC_19b    EIB_BIT_RECM         е   а                                       ж   џџџџR      X         garage_OG_11U д        з   џџџџ>      K          EIB_BIT_REC_20b    EIB_BIT_RECM         и   а                                       й   џџџџR      X         garage_OG_12U з        к   џџџџ               Group_1_1_24S     н   џџџџ               MAIN.fb_KL6301_0.str_Data_RecИ     п   џџџџ               Group_1_1_18S     т   џџџџ   #      #      Group_1_1_19S     х   џџџџ   (      (      Group_1_1_20S     л   џџџџ                EIB_BIT_REC_4[    EIB_BIT_RECM         к   н                                       м   џџџџ&      ,         garage_OG_5N л        о   џџџџ                 EIB_BIT_REC_5[    EIB_BIT_RECM         п   н                                       р   џџџџ&      ,         garage_OG_6N о        с   џџџџ   !      %       EIB_BIT_REC_6[    EIB_BIT_RECM         т   н                                       у   џџџџ&   $   ,   $      garage_OG_7N с        ф   џџџџ   &      *       EIB_BIT_REC_7[    EIB_BIT_RECM         х   н                                       ц   џџџџ&   )   ,   )      garage_OG_8N ф        ч   џџџџ1      7         Group_1_1_16S     ъ   џџџџ1      =         MAIN.fb_KL6301_0.str_Data_RecИ     ь   џџџџ1      7         Group_1_1_26S     я   џџџџ1   #   7   #      Group_1_1_17S     ђ   џџџџ1   (   7   (      Group_1_1_10S     ш   џџџџ>      K          EIB_BIT_REC_21b    EIB_BIT_RECM         ч   ъ                                       щ   џџџџR      X         garage_OG_13U ш        ы   џџџџ>      K           EIB_BIT_REC_22b    EIB_BIT_RECM         ь   ъ                                       э   џџџџR      X         garage_OG_14U ы        ю   џџџџ>   !   K   %       EIB_BIT_REC_23b    EIB_BIT_RECM         я   ъ                                       №   џџџџR   $   X   $      garage_OG_15U ю        ё   џџџџ>   &   K   *       EIB_BIT_REC_24b    EIB_BIT_RECM         ђ   ъ                                       ѓ   џџџџR   )   X   )      garage_OG_16U ё          џџџџ0   .   <   .      MAIN.fb_KL6301_0.str_Data_RecИ       џџџџ1   /   7   /      Group_1_1_1L       џџџџ1   4   7   4      Group_1_1_2L     	  џџџџ1   9   7   9      Group_1_1_3L       џџџџ1   >   7   >      Group_1_1_4L       џџџџ1   C   7   C      Group_1_1_28S       џџџџ4   J   :   J      Group_1_1_29S     "  џџџџ4   Y   :   Y      Group_1_1_30S       џџџџ>   -   K   1       EIB_BIT_REC_25b    EIB_BIT_RECM                                                   џџџџR   0   X   0      garage_OG_21U          џџџџ>   2   K   6       EIB_BIT_REC_26b    EIB_BIT_RECM                                                   џџџџR   5   X   5      garage_OG_22U          џџџџ>   7   K   ;       EIB_BIT_REC_27b    EIB_BIT_RECM         	                                        
  џџџџR   :   X   :      garage_OG_23U          џџџџ>   <   K   @       EIB_BIT_REC_28b    EIB_BIT_RECM                                                   џџџџR   ?   X   ?      garage_OG_24U          џџџџ>   A   K   E       EIB_BIT_REC_29b    EIB_BIT_RECM                                                   џџџџR   D   W   D   	   SCHNOG[9]B          џџџџ=   H   J   L       EIB_BIT_REC_30b    EIB_BIT_RECM                                                 !  џџџџ=   W   J   [       EIB_BIT_REC_31b    EIB_BIT_RECM         "                                        #  џџџџQ   Z   Y   Z      LightGarageSecurityo !       є   џџџџ   /      /      Group_1_1_11S     ї   џџџџ   0      0      MAIN.fb_KL6301_0.str_Data_RecИ     љ   џџџџ   4      4      Group_1_1_12S     ќ   џџџџ   9      9      Group_1_1_25S     џ   џџџџ   >      >      Group_1_1_9L     ѕ   џџџџ   -      1       EIB_BIT_REC_8[    EIB_BIT_RECM         є   ї                                       і   џџџџ&   0   ,   0      garage_OG_17U ѕ        ј   џџџџ   2      6       EIB_BIT_REC_9[    EIB_BIT_RECM         љ   ї                                       њ   џџџџ&   5   ,   5      garage_OG_18U ј        ћ   џџџџ   7      ;       EIB_BIT_REC_10b    EIB_BIT_RECM         ќ   ї                                       §   џџџџ&   :   ,   :      garage_OG_19U ћ        ў   џџџџ   <      @       EIB_BIT_REC_11b    EIB_BIT_RECM         џ   ї                                          џџџџ&   ?   ,   ?      garage_OG_20U ў          џџџџ   C      C      Group_1_1_5L       џџџџ   D      D      MAIN.fb_KL6301_0.str_Data_RecИ       џџџџ   H      H      Group_1_1_6L       џџџџ   M      M      Group_1_1_7L       џџџџ   R      R      Group_1_1_8L       џџџџ   A      E       EIB_BIT_REC_12b    EIB_BIT_RECM                                                   џџџџ&   D   ,   D      garage_OG_25U          џџџџ   F      J       EIB_BIT_REC_13b    EIB_BIT_RECM                                                   џџџџ&   I   ,   I      garage_OG_26U          џџџџ   K      O       EIB_BIT_REC_14b    EIB_BIT_RECM                                                   џџџџ&   N   ,   N      garage_OG_27U          џџџџ   P      T       EIB_BIT_REC_15b    EIB_BIT_RECM                                                   џџџџ&   S   ,   S      garage_OG_28U        2  џџџџ   W      W      Group_1_1_31S     5  џџџџ   X      X      MAIN.fb_KL6301_0.str_Data_RecИ     7  џџџџ   \      \      Group_1_1_32S     :  џџџџ   a      a      Group_1_1_33S     =  џџџџ   f      f      Group_1_1_34S     d  џџџџ3   b   7   b      T#100ms5     @  џџџџ   k      k      Group_1_1_35S     a  џџџџJ   c   O   c   
   SystemTimeE ]       C  џџџџ   p      p      Group_1_1_36S     F  џџџџ   u      u      Group_1_1_37S     I  џџџџ   z      z      Group_1_1_38S     3  џџџџ   U      Y       EIB_BIT_REC_32b    EIB_BIT_RECM         2  5                                      4  џџџџ&   X   +   X   	   SCHNOG[1]B 3       6  џџџџ   Z      ^       EIB_BIT_REC_33b    EIB_BIT_RECM         7  5                                      8  џџџџ&   ]   +   ]   	   SCHNOG[2]B 6       9  џџџџ   _      c       EIB_BIT_REC_34b    EIB_BIT_RECM         :  5                                      ;  џџџџ&   b   +   b   	   SCHNOG[3]B 9       <  џџџџ   d      h       EIB_BIT_REC_35b    EIB_BIT_RECM         =  5                                      >  џџџџ&   g   +   g   	   SCHNOG[4]B <       ?  џџџџ   i      m       EIB_BIT_REC_36b    EIB_BIT_RECM         @  5                                      A  џџџџ&   l   +   l   	   SCHNOG[5]B ?       B  џџџџ   n      r       EIB_BIT_REC_37b    EIB_BIT_RECM         C  5                                      D  џџџџ&   q   +   q   	   SCHNOG[6]B B       E  џџџџ   s      w       EIB_BIT_REC_38b    EIB_BIT_RECM         F  5                                      G  џџџџ&   v   +   v   	   SCHNOG[7]B E       H  џџџџ   x      |       EIB_BIT_REC_39b    EIB_BIT_RECM         I  5                                      J  џџџџ&   {   +   {   	   SCHNOG[8]B H       ]  џџџџ?   ^   H   d       fb_GetTi. 
   NT_GetTimeF             c                                                      c  џџџџ8   _   >   c       Timer1'    TON         c  d                                     f  џџџџQ   K   U   K   
   LightNight8        k  џџџџ               KNXSYSTEM_WEATHERST_BRIGHTNES_Lѓ     l  џџџџ   }             EIB_ALL_DATA_TYPES_REC_40З    EIB_4OCTET_SIGN_REC         k  |                                      m  џџџџ&      .         KNX_BRIGHTNESS_L{ l       t  џџџџ               KNXSYSTEM_WEATHERST_BRIGHTNES_Cѕ     u  џџџџ                EIB_ALL_DATA_TYPES_REC_41З    EIB_4OCTET_SIGN_REC         t  |                                      v  џџџџ&      .         KNX_BRIGHTNESS_C} u       w  џџџџ               KNXSYSTEM_WEATHERST_BRIGHTNES_Rѕ     x  џџџџ                EIB_ALL_DATA_TYPES_REC_42З    EIB_4OCTET_SIGN_REC         w  |                                      y  џџџџ&      .         KNX_BRIGHTNESS_R} x       |  џџџџ               MAIN.fb_KL6301_0.str_Data_RecИ       џџџџ,   T   :   T      KNXSYSTEM_WEATHERST_ISTWILIGHTт       џџџџ=   R   J   V       EIB_BIT_REC_41b    EIB_BIT_RECM                                                   џџџџQ   U   W   U      KNXISTWILIGHT[          џџџџ.   O   :   O      KNXSYSTEM_WEATHERST_ISDAYС       џџџџ=   M   J   Q       EIB_BIT_REC_40b    EIB_BIT_RECM                                                     џџџџQ   P   U   P      KNXISDAY:        d                    , Я   b         
   PeerToPeer Z	Z                      Ј  PROGRAM PeerToPeer
VAR
	rHOST_IP : STRING(15) := '192.168.3.204';
	rHOST_port : UDINT := 49161;
	lHOST_port : UDINT := 49187;
	fbSockClAll: FB_SocketCloseAll;
	fbSockUdpCr: FB_SocketUdpCreate;
	UdpSocket: T_HSocket;
	fbSockUdpRecFr: FB_SocketUdpReceiveFrom;
	fbSockUdpST: FB_SocketUdpSendTo;
	fbSockUdpSTConf: FB_SocketUdpSendTo;

	Timer1: TON;
	Timer2: TON;
	HandleString : STRING(80);
	Timer3: TON;
END_VAR)3    џџџџ               ''        џџџџ            	   bCloseAll5        џџџџ
               T#5s        џџџџ                fbSockClAll>    FB_SocketCloseAlli                                                              l   џџџџ   	      	   	   bCloseAll5     m   џџџџ   	      	   	   bCloseAll5 l           џџџџ               ''        џџџџ                      AND                                                  џџџџ               ''        џџџџ            
   lHOST_port@        џџџџ            	   bCloseAll5       џџџџ               bCreateSockG        џџџџ               bCreateSockG            џџџџ               T#5s        џџџџ      #          fbSockUdpCrI    FB_SocketUdpCreatew                                                                                	   џџџџ'      ,      	   UdpSocket<            џџџџ               rHOST_IP7        џџџџ               UdpSocket.remoteAddr.sAddrЂ             џџџџ            
   rHOST_portA        џџџџ               UdpSocket.remoteAddr.nPort             џџџџ               ''     _   џџџџ#      &         rByte 
           џџџџ            	   UdpSocket<        џџџџ               SIZEOF(Received_packet)        џџџџ	               ADR(Received_packet)        џџџџ               T#5s        џџџџ       	          T#1s        џџџџ	         !       Timer1'    TON                                                  
   џџџџ      !          fbSockUdpRecFr]    FB_SocketUdpReceiveFrom                                                                                                   џџџџ   $      $      ''     !   џџџџ   %      %   	   UdpSocket<     "   џџџџ   &      &      rHOST_IP7     #   џџџџ   '      '   
   rHOST_portA     $   џџџџ   0      0      T#10s#     M   џџџџ   0      0   	   bSendConf>     %   џџџџ   .      .      T#5s     L   џџџџ   +      /             AND         &   M                                  &   џџџџ   +      /       Timer2'    TON         &   %                                      '   џџџџ   "   !   ,       fbSockUdpSTK    FB_SocketUdpSendTo}             !   "   #   7   6   L   $                                                                   7   џџџџ   (      (      SIZEOF(Main_udp_packet)     6   џџџџ   )      )      ADR(Main_udp_packet)     N   џџџџ   6      6      ''     O   џџџџ   7      7   	   UdpSocket<     \   џџџџ!   6   &   6   	   bSendConf> W        P   џџџџ   8      8      rHOST_IP7     Q   џџџџ   9      9   
   rHOST_portA     R   џџџџ   =      =      T#10s#     S   џџџџ   <      <   	   bSendConf>     W   џџџџ   4   !   >       fbSockUdpSTConfe    FB_SocketUdpSendTo}         N   O   P   Q   X   Y   S   R                                                                   X   џџџџ   :      :      SIZEOF(Confirmation_packet)Є     Y   џџџџ   ;      ;      ADR(Confirmation_packet)     d                  ё   ,   &Я            POWER_OFF_TEST Z	Z       R E            (*
power switch off priority

km name			priority
7 - schrov		1		first to switch off
3 - parouvl		2
1 - schavp1		3
9 - schuf			4
4 - schnvd		5
5 - schrb			6
10 - schno		7
11 - hammam		8
6 - schl			9
8 - schss			10
2 - schrd			11  last to switch off
*)
PROGRAM POWER_OFF_TEST
VAR
	init: INT := 0;
	test_power: REAL:=20.0;
	test_power_new: REAL:=50;
	test_power_first: REAL := 58;

	time_limit: REAL := 1;
	my_time: REAL := 0;


	flag: BOOL := FALSE;
	start: BOOL:=FALSE;

	(*Central function. All Off Garage*)
	Group_3_1_0: EIB_GROUP_ADDR := (MAIN:=3,SUB_MAIN:=1,NUMBER:=0);
	Group_3_1_1: EIB_GROUP_ADDR := (MAIN:=3,SUB_MAIN:=1,NUMBER:=1);
	Group_3_1_2: EIB_GROUP_ADDR := (MAIN:=3,SUB_MAIN:=1,NUMBER:=2);
	Group_3_1_3: EIB_GROUP_ADDR := (MAIN:=3,SUB_MAIN:=1,NUMBER:=3);
	Group_3_1_4: EIB_GROUP_ADDR := (MAIN:=3,SUB_MAIN:=1,NUMBER:=4);
	Group_3_1_5: EIB_GROUP_ADDR := (MAIN:=3,SUB_MAIN:=1,NUMBER:=5);
	Group_3_1_6: EIB_GROUP_ADDR := (MAIN:=3,SUB_MAIN:=1,NUMBER:=6);
	Group_3_1_7: EIB_GROUP_ADDR := (MAIN:=3,SUB_MAIN:=1,NUMBER:=7);
	Group_3_1_8: EIB_GROUP_ADDR := (MAIN:=3,SUB_MAIN:=1,NUMBER:=8);
	Group_3_1_9: EIB_GROUP_ADDR := (MAIN:=3,SUB_MAIN:=1,NUMBER:=9);
	Group_3_1_10: EIB_GROUP_ADDR := (MAIN:=3,SUB_MAIN:=1,NUMBER:=10);
	Group_3_1_11: EIB_GROUP_ADDR := (MAIN:=3,SUB_MAIN:=1,NUMBER:=11);

	EIB_SEND1: EIB_BIT_SEND;
	EIB_SEND2: EIB_BIT_SEND;
	EIB_SEND3: EIB_BIT_SEND;
	EIB_SEND4: EIB_BIT_SEND;
	EIB_SEND5: EIB_BIT_SEND;
	EIB_SEND6: EIB_BIT_SEND;
	EIB_SEND7: EIB_BIT_SEND;
	EIB_SEND8: EIB_BIT_SEND;
	EIB_SEND9: EIB_BIT_SEND;
	EIB_SEND10: EIB_BIT_SEND;
	EIB_SEND11: EIB_BIT_SEND;

	counter: INT := 0;
END_VAR
`  (***********************)
(*system testing*)
(*************************)
(*
	IF start=TRUE THEN
		test_power := test_power_first;
		flag:=TRUE;
		start:=FALSE;
	END_IF;
*)

test_power := KL3403_2_P;

CASE init OF

(*init of constants*)
0:
	power_VRU_value[1]  := 9.2;				(*km 1.7*)
	power_VRU_value[2]  := 26.25;			(*km 1.3*)
	power_VRU_value[3]  := 27.7;			(*km 1.1*)
	power_VRU_value[4]  := 1.56;			(*km 1.9*)
	power_VRU_value[5]  := 14.0;			(*km 1.4*)
	power_VRU_value[6]  := 9.1;				(*km 1.5*)
	power_VRU_value[7]  := 0;  (*29.5*)		(*km 1.10*)
	power_VRU_value[8]  := 9.0;				(*km 1.11*)
	power_VRU_value[9]  := 7.2;				(*km 1.6*)
	power_VRU_value[10]  := 9.5;			(*km 1.8*)
	power_VRU_value[11]  := 65.2;			(*km 1.2*)

	power_VRU_address[1] := Group_3_1_7;
	power_VRU_address[2] := Group_3_1_3;
	power_VRU_address[3] := Group_3_1_1;
	power_VRU_address[4] := Group_3_1_9;
	power_VRU_address[5] := Group_3_1_4;
	power_VRU_address[6] := Group_3_1_5;
	power_VRU_address[7] := Group_3_1_10;
	power_VRU_address[8] := Group_3_1_11;
	power_VRU_address[9] := Group_3_1_6;
	power_VRU_address[10] := Group_3_1_8;
	power_VRU_address[11] := Group_3_1_2;


	Current_switch_pos := 0;
	POWER_LIMIT := 55.0;

	counter := 1;

	WHILE counter <= 11 DO
		power_VRU_switch[counter] := TRUE;
		counter:=counter+1;
	END_WHILE;

	init := 1;

1:

	IF(test_power > POWER_LIMIT) THEN
(*switch off  *)
		IF(current_switch_pos < 10) THEN
			current_switch_pos := current_switch_pos + 1;
		ELSIF (test_power > power_VRU_value[11] ) THEN
			current_switch_pos := 11;
		END_IF;
	ELSE
(*switch on  *)
		IF((current_switch_pos <= 11) AND (current_switch_pos > 0)) THEN
			IF((test_power + power_VRU_value[current_switch_pos]) < POWER_LIMIT) THEN
				current_switch_pos:=current_switch_pos-1;
			END_IF;
		END_IF;
	END_IF;

	counter := 1;

	WHILE counter <= 11 DO

		IF(counter <= current_switch_pos) THEN
			power_VRU_switch[counter] := FALSE;
		ELSE
			power_VRU_switch[counter] := TRUE;
		END_IF;

		counter:=counter+1;
	END_WHILE;

(*

	IF FLAG=TRUE THEN
		IF test_power > 55 THEN
			IF(my_time > time_limit) THEN
				test_power := test_power_new;
				flag:=FALSE;
			END_IF;
		END_IF;

	my_time := my_time + 1;
	END_IF;
*)
END_CASE;

IF PowerSystemSwitcher = TRUE THEN

EIB_SEND1(Group_Address:= power_VRU_address[1], bData :=power_VRU_switch[1], str_Rec :=MAIN.fb_KL6301_0.str_Data_Rec);
EIB_SEND2(Group_Address:= power_VRU_address[2], bData :=power_VRU_switch[2], str_Rec :=MAIN.fb_KL6301_0.str_Data_Rec);
EIB_SEND3(Group_Address:= power_VRU_address[3], bData :=power_VRU_switch[3], str_Rec :=MAIN.fb_KL6301_0.str_Data_Rec);
EIB_SEND4(Group_Address:= power_VRU_address[4], bData :=power_VRU_switch[4], str_Rec :=MAIN.fb_KL6301_0.str_Data_Rec);
EIB_SEND5(Group_Address:= power_VRU_address[5], bData :=power_VRU_switch[5], str_Rec :=MAIN.fb_KL6301_0.str_Data_Rec);
EIB_SEND6(Group_Address:= power_VRU_address[6], bData :=power_VRU_switch[6], str_Rec :=MAIN.fb_KL6301_0.str_Data_Rec);
EIB_SEND7(Group_Address:= power_VRU_address[7], bData :=power_VRU_switch[7], str_Rec :=MAIN.fb_KL6301_0.str_Data_Rec);
EIB_SEND8(Group_Address:= power_VRU_address[8], bData :=power_VRU_switch[8], str_Rec :=MAIN.fb_KL6301_0.str_Data_Rec);
EIB_SEND9(Group_Address:= power_VRU_address[9], bData :=power_VRU_switch[9], str_Rec :=MAIN.fb_KL6301_0.str_Data_Rec);
EIB_SEND10(Group_Address:= power_VRU_address[10], bData :=power_VRU_switch[10], str_Rec :=MAIN.fb_KL6301_0.str_Data_Rec);
EIB_SEND11(Group_Address:= power_VRU_address[11], bData :=power_VRU_switch[11], str_Rec :=MAIN.fb_KL6301_0.str_Data_Rec);

END_IF;               	  ,   Ф Я &           ReadADS Z	Z                      u  PROGRAM ReadADS
VAR
	ReadADS: FW_AdsRead;
	timer2: TON;

	bBusy		: BOOL;
	bError		: BOOL;
	nErrId		: UDINT;
	cbRead		: UDINT;


	bBusy2			: BOOL;
	bError2			: BOOL;
	nErrId2			: UDINT;
	cbRead2		: UDINT;

	ReadLights: FW_AdsRead;
	timer3: TON;
	timer32: TON;
	bBusy3: BOOL;
	bError3: BOOL;
	ReadSCHAV: FW_AdsRead;
	SchAV_Muhamed: FW_AdsWrite;
END_VAR)$    џџџџ      
         '192.168.3.225.1.1'i        џџџџ      
         801        џџџџ   	   
   	      16#40201        џџџџ   
   
   
      10        џџџџ      
         SIZEOF(ModByte)m        џџџџ      
         ADR(ModByte)[     
   џџџџ               T#2s     	   џџџџ               T#1s        џџџџ                timer2$    TON            	                                         џџџџ                ReadADS> 
   FW_AdsReadV                              
                                                                          џџџџ'      *         bBusy&             џџџџ'      *         bError%            џџџџ'   	   *   	      nErrId#            џџџџ'   
   +   
      cbRead1            џџџџ               '192.168.3.223.1.1'i        џџџџ
               801        џџџџ               16#40201        џџџџ
               10        џџџџ               SIZEOF(OutLightBytes)        џџџџ               ADR(OutLightBytes)w     !   џџџџ               T#2s     "   џџџџ   #      #      T#1000ms>     #   џџџџ          $       timer3$    TON         #   "                                         џџџџ              
   ReadLightsE 
   FW_AdsReadV                           #   !                                                                       *   џџџџ'      +         bBusy2-          +   џџџџ'      +         bError2,         /   џџџџ'      *         nErrId2*         -   џџџџ'      +         cbRead28         0   џџџџ   )      )      '192.168.3.222.1.1'i     1   џџџџ
   *      *      800     2   џџџџ   +      +      16#40201     3   џџџџ
   ,      ,      10     4   џџџџ   -      -      SIZEOF(ShAV_Vent_V3)     5   џџџџ   .      .      ADR(ShAV_Vent_V3)     6   џџџџ   0      0      T#2s     7   џџџџ   '      1       SchAV_Muhamedi    FW_AdsWriteS         0   1   2   3   4   5   #   6                                                                   d                    ,     Я b            Udp_receive_packet_init Z	Z       §џ             PROGRAM Udp_receive_packet_init
VAR
	Checksum_rec : WORD;
	k: INT;
	l: INT;
	i: INT;
	h: INT;
	g: INT;
	J: INT;
END_VARА  PacketSize := SIZEOF(Received_packet) - SIZEOF(Received_packet.title_packet_num) - SIZEOF(Received_packet.title_packet_code) - SIZEOF(Received_packet.title_packet_crc);
Fletcher_checksum;
Checksum_incom;
Checksum_rec := INT_TO_WORD(Received_packet.title_packet_crc);

IF (rByte> 0) THEN
IF(Checksum_rec > Checksum_incom OR Checksum_rec < Checksum_incom OR Received_packet.data_pointer > 428 OR Received_packet.data_pointer < 6) THEN
Confirmation_packet.title_packet_code := 3;
Confirmation_packet.title_packet_num := Received_packet.title_packet_num;
Confirmation_packet.title_packet_crc := Received_packet.title_packet_crc;
Confirmation_packet.data_pointer := Received_packet.data_pointer;
Confirmation_packet.data_new_value := Received_packet.data_new_value;
ELSE
Confirmation_packet.title_packet_code := 2;
Confirmation_packet.title_packet_num := Received_packet.title_packet_num;
Confirmation_packet.title_packet_crc := Received_packet.title_packet_crc;
Confirmation_packet.data_pointer := Received_packet.data_pointer;
Confirmation_packet.data_new_value := Received_packet.data_new_value;

Force_udp_packet := Main_udp_packet;
Temp_of_int[Confirmation_packet.data_pointer/2 - 2] := Confirmation_packet.data_new_value;

garage_OG_1 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[1]);
garage_OG_2 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[2]);
garage_OG_3 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[3]);
garage_OG_4 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[4]);
garage_OG_5 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[5]);
garage_OG_6 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[6]);
garage_OG_7 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[7]);
garage_OG_8 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[8]);
garage_OG_9 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[9]);
garage_OG_10 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[10]);
garage_OG_11 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[11]);
garage_OG_12 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[12]);
garage_OG_13 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[13]);
garage_OG_14 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[14]);
garage_OG_15 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[15]);
garage_OG_16 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[16]);
garage_OG_17 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[17]);
garage_OG_18 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[18]);
garage_OG_19 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[19]);
garage_OG_20 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[20]);
garage_OG_21 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[21]);
garage_OG_22 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[22]);
garage_OG_23 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[23]);
garage_OG_24 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[24]);
garage_OG_25 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[25]);
garage_OG_26 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[26]);
garage_OG_27 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[27]);
garage_OG_28 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[28]);
garage_OG_29 := INT_TO_BOOL(Force_udp_packet.grsch_garage_og[29]);
SHUF_PRESSED := INT_TO_BOOL(Force_udp_packet.grsch_SHUF_PRESSED);
PowerSystemSwitcher := INT_TO_BOOL(Force_udp_packet.grsch_power_system_switcher);
schav_force_stack  := Force_udp_packet.schav_stack;
FOR k := 1 TO 19 DO
schnog_force_stack[k] := INT_TO_BOOL(Force_udp_packet.schnog_stack[k]);
END_FOR;
FOR l := 1 TO 116 DO
schszp_force_stack[l] := INT_TO_BOOL(Force_udp_packet.schszp_stack[l]);
END_FOR;

IF (Confirmation_packet.data_pointer =  306 AND Confirmation_packet.data_new_value = 1) THEN schszp_force_stack[60] := 0; END_IF;
IF (Confirmation_packet.data_pointer =  308 AND Confirmation_packet.data_new_value = 1) THEN schszp_force_stack[61] := 0; END_IF;
IF (Confirmation_packet.data_pointer =  310 AND Confirmation_packet.data_new_value = 1) THEN schszp_force_stack[62] := 0; END_IF;
IF (Confirmation_packet.data_pointer =  312 AND Confirmation_packet.data_new_value = 1) THEN schszp_force_stack[63] := 0; END_IF;
IF (Confirmation_packet.data_pointer =  314 AND Confirmation_packet.data_new_value = 1) THEN schszp_force_stack[64] := 0; END_IF;
IF (Confirmation_packet.data_pointer =  316 AND Confirmation_packet.data_new_value = 1) THEN schszp_force_stack[55] := 0; END_IF;
IF (Confirmation_packet.data_pointer =  318 AND Confirmation_packet.data_new_value = 1) THEN schszp_force_stack[56] := 0; END_IF;
IF (Confirmation_packet.data_pointer =  320 AND Confirmation_packet.data_new_value = 1) THEN schszp_force_stack[57] := 0; END_IF;
IF (Confirmation_packet.data_pointer =  322 AND Confirmation_packet.data_new_value = 1) THEN schszp_force_stack[58] := 0; END_IF;
IF (Confirmation_packet.data_pointer =  324 AND Confirmation_packet.data_new_value = 1) THEN schszp_force_stack[59] := 0; END_IF;

END_IF;
IF(J = 0) THEN
bSendConf := TRUE;
END_IF;
J := J + 1;
END_IF;

IF(rByte = 0) THEN
J := 0;
END_IF;                 ,   b Я Ф            Udp_send_packet_init Z	Z       §џ          f   PROGRAM Udp_send_packet_init
VAR
	i: INT := 1;
	j: INT := 1;
	k: INT := 1;
	l: INT := 1;
END_VAR;  Main_udp_packet.title_packet_code := 1;
Main_udp_packet.grsch_P[1] := REAL_TO_INT(KL3403_1_P * 1000);
Main_udp_packet.grsch_P[2] := REAL_TO_INT(KL3403_2_P * 1000);
Main_udp_packet.grsch_P[3] := REAL_TO_INT(KL3403_3_P * 1000);
Main_udp_packet.grsch_P[4] := REAL_TO_INT(KL3403_4_P * 1000);
Main_udp_packet.grsch_P[5] := REAL_TO_INT(KL3403_5_P * 1000);
Main_udp_packet.grsch_V[1] := REAL_TO_INT(KL3403_1_V * 1000);
Main_udp_packet.grsch_V[2] := REAL_TO_INT(KL3403_2_V * 1000);
Main_udp_packet.grsch_V[3] := REAL_TO_INT(KL3403_3_V * 1000);
Main_udp_packet.grsch_V[4] := REAL_TO_INT(KL3403_4_V * 1000);
Main_udp_packet.grsch_V[5] := REAL_TO_INT(KL3403_5_V * 1000);
Main_udp_packet.grsch_I[1] := REAL_TO_INT(KL3403_1_I * 1000);
Main_udp_packet.grsch_I[2] := REAL_TO_INT(KL3403_2_I * 1000);
Main_udp_packet.grsch_I[3] := REAL_TO_INT(KL3403_3_I * 1000);
Main_udp_packet.grsch_I[4] := REAL_TO_INT(KL3403_4_I * 1000);
Main_udp_packet.grsch_I[5] := REAL_TO_INT(KL3403_5_I * 1000);
Main_udp_packet.grsch_garage_og[1]   := BOOL_TO_INT(garage_OG_1);
Main_udp_packet.grsch_garage_og[2]   := BOOL_TO_INT(garage_OG_2);
Main_udp_packet.grsch_garage_og[3]   := BOOL_TO_INT(garage_OG_3);
Main_udp_packet.grsch_garage_og[4]   := BOOL_TO_INT(garage_OG_4);
Main_udp_packet.grsch_garage_og[5]   := BOOL_TO_INT(garage_OG_5);
Main_udp_packet.grsch_garage_og[6]   := BOOL_TO_INT(garage_OG_6);
Main_udp_packet.grsch_garage_og[7]   := BOOL_TO_INT(garage_OG_7);
Main_udp_packet.grsch_garage_og[8]   := BOOL_TO_INT(garage_OG_8);
Main_udp_packet.grsch_garage_og[9]   := BOOL_TO_INT(garage_OG_9);
Main_udp_packet.grsch_garage_og[10] := BOOL_TO_INT(garage_OG_10);
Main_udp_packet.grsch_garage_og[11] := BOOL_TO_INT(garage_OG_11);
Main_udp_packet.grsch_garage_og[12] := BOOL_TO_INT(garage_OG_12);
Main_udp_packet.grsch_garage_og[13] := BOOL_TO_INT(garage_OG_13);
Main_udp_packet.grsch_garage_og[14] := BOOL_TO_INT(garage_OG_14);
Main_udp_packet.grsch_garage_og[15] := BOOL_TO_INT(garage_OG_15);
Main_udp_packet.grsch_garage_og[16] := BOOL_TO_INT(garage_OG_16);
Main_udp_packet.grsch_garage_og[17] := BOOL_TO_INT(garage_OG_17);
Main_udp_packet.grsch_garage_og[18] := BOOL_TO_INT(garage_OG_18);
Main_udp_packet.grsch_garage_og[19] := BOOL_TO_INT(garage_OG_19);
Main_udp_packet.grsch_garage_og[20] := BOOL_TO_INT(garage_OG_20);
Main_udp_packet.grsch_garage_og[21] := BOOL_TO_INT(garage_OG_21);
Main_udp_packet.grsch_garage_og[22] := BOOL_TO_INT(garage_OG_22);
Main_udp_packet.grsch_garage_og[23] := BOOL_TO_INT(garage_OG_23);
Main_udp_packet.grsch_garage_og[24] := BOOL_TO_INT(garage_OG_24);
Main_udp_packet.grsch_garage_og[25] := BOOL_TO_INT(garage_OG_25);
Main_udp_packet.grsch_garage_og[26] := BOOL_TO_INT(garage_OG_26);
Main_udp_packet.grsch_garage_og[27] := BOOL_TO_INT(garage_OG_27);
Main_udp_packet.grsch_garage_og[28] := BOOL_TO_INT(garage_OG_28);
Main_udp_packet.grsch_garage_og[29] := BOOL_TO_INT(garage_OG_29);
FOR i := 1 TO 11 DO
Main_udp_packet.grsch_power_VRU_value[i] := REAL_TO_INT(power_VRU_value[i] * 1000);
END_FOR;
FOR j := 1 TO 11 DO
Main_udp_packet.grsch_power_VRU_switch[i] := BOOL_TO_INT(power_VRU_switch[i]);
END_FOR;
Main_udp_packet.grsch_power_limit := REAL_TO_INT(Power_limit * 1000);
Main_udp_packet.grsch_current_switch_pos := Current_switch_pos;
Main_udp_packet.grsch_SHUF_PRESSED := BOOL_TO_INT(SHUF_PRESSED);
Main_udp_packet.grsch_power_system_switcher := BOOL_TO_INT(PowerSystemSwitcher);

Main_udp_packet.schav_stack := schav_receive_stack;
FOR k := 1 TO 19 DO
Main_udp_packet.schnog_stack[k] := BOOL_TO_INT(schnog_receive_stack[k]);
END_FOR;
FOR l := 1 TO 116 DO
Main_udp_packet.schszp_stack[l] := BOOL_TO_INT(schszp_receive_stack[l]);
END_FOR;
Fletcher_checksum;
Main_udp_packet.title_packet_crc := Checksum_send;

IF (schszp_receive_stack[65] = FALSE AND schszp_force_stack[66] = TRUE) THEN schszp_force_stack[66] := FALSE; END_IF;
                ь   , <&           CURRENTPAGE Z    c:\images\grsch-bg.jpg @    Z  K                                                                                                         
    @        
  Е     РРР     џџџ                                            Voltage                    Н    ыџ       Verdana       KoefV            @    VoltagePage                                                                                                     
    @         	Е    џ      џџџ                                            Current                    О    ыџ       Verdana                      @    CurrentPage                                                                                                     
    @         Е    РРР     џџџ                                            Power                    П    ыџ       Verdana       KoefP            @ 	   PowerPage                                                                                                    
    @        Ь"}gO        џџџ     џџџ                                               я    ыџ   Ь                                                  @ 
    @            d   #                                                                                                       
    @                    џџџ     џџџ     џџџ                                    {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,311,91,0,0,0,KL3403_4_I,MU1.4, A,%.1f,2,10,0,50,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,0,                    №    ѓџМ       Arial                      @                                                                                                           
    @            X     џ   џ  џ   џ                   ((KL3403_4_I * 1.0) - 25)  * 5.4               (KL3403_4_I) < 0                            ё    ыџ   Ь                          @                                                                                                          
    @                "   џџџ     џџџ                           @                         ђ    ыџ   Ь                                                                                                                                 
    @             )  ) "   џџџ     џџџ                           @                         ѓ    ыџ   Ь                                                                                                                                 
    @             4  4 "   џџџ     џџџ                           @                         є    ыџ   Ь                                                                                                                                 
    @             ?  ? "   џџџ     џџџ                           @                         ѕ    ыџ   Ь                                                                                                                                 
    @                *   џџџ     џџџ                           @                         і    ыџ   Ь                                                                                                                                  
    @         ,   T  @     џџџ     џџџ                                            0.0                    ї    ѓџМ       Arial                      @                                                                                                          
    @             T  T "   џџџ     џџџ                           @                         ј    ыџ   Ь                                                                                                                                 
    @             _  _ "   џџџ     џџџ                           @                         љ    ыџ   Ь                                                                                                                                 
    @             j  j "   џџџ     џџџ                           @                         њ    ыџ   Ь                                                                                                                                 
    @             u  u "   џџџ     џџџ                           @                         ћ    ыџ   Ь                                                                                                                                 
    @             J  J *   џџџ     џџџ                           @                         ќ    ыџ   Ь                                                                                                                                  
    @        9 , Z T J @     џџџ     џџџ                                            10.0                    §    ѓџМ       Arial                      @                                                                                                          
    @                "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @                "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @                  "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @             Ћ  Ћ "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @                *   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        o ,  T  @     џџџ     џџџ                                            20.0                       ѓџМ       Arial                      @                                                                                                          
    @             Р  Р "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @             Ы  Ы "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @             ж  ж "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @             с  с "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @             Ж  Ж *   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        Ѕ , Ц T Ж @     џџџ     џџџ                                            30.0                       ѓџМ       Arial                      @                                                                                                          
    @             і  і "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @              "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @              "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @              "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @             ь  ь *   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        л , ќ T ь @     џџџ     џџџ                                            40.0                       ѓџМ       Arial                      @                                                                                                          
    @             " "*   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        , 2T "@     џџџ     џџџ                                            50.0                        ѓџМ       Arial                      @                                                                                                           
    @        d ; в K  C     џџџ     џџџ                                            MU1.4, A                    Ё   ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                                                                                                             
    @        Ь|зgЉ        џџџ     џџџ                                               ў    ыџ   Ь                                                  @ 
    @            d   #                                                                                                       
    @                    џџџ     џџџ     џџџ                                    {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,311,91,0,0,0,KL3403_5_I,MU1.5, A,%.1f,2,10,0,50,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,0,                    џ    ѓџМ       Arial                      @                                                                                                           
    @            X     џ   џ  џ   џ                   ((KL3403_5_I * 1.0) - 25)  * 5.4               (KL3403_5_I) < 0                                ыџ   Ь                          @                                                                                                          
    @                "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @             )  ) "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @             4  4 "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @             ?  ? "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @                *   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @         ,   T  @     џџџ     џџџ                                            0.0                       ѓџМ       Arial                      @                                                                                                          
    @             T  T "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @             _  _ "   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @             j  j "   џџџ     џџџ                           @                         	   ыџ   Ь                                                                                                                                 
    @             u  u "   џџџ     џџџ                           @                         
   ыџ   Ь                                                                                                                                 
    @             J  J *   џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        9 , Z T J @     џџџ     џџџ                                            10.0                       ѓџМ       Arial                      @                                                                                                          
    @                "   џџџ     џџџ                           @                         Ђ   ыџ   Ь                                                                                                                                 
    @                "   џџџ     џџџ                           @                         Ѓ   ыџ   Ь                                                                                                                                 
    @                  "   џџџ     џџџ                           @                         Є   ыџ   Ь                                                                                                                                 
    @             Ћ  Ћ "   џџџ     џџџ                           @                         Ѕ   ыџ   Ь                                                                                                                                 
    @                *   џџџ     џџџ                           @                         І   ыџ   Ь                                                                                                                                  
    @        o ,  T  @     џџџ     џџџ                                            20.0                    Ї   ѓџМ       Arial                      @                                                                                                          
    @             Р  Р "   џџџ     џџџ                           @                         Ј   ыџ   Ь                                                                                                                                 
    @             Ы  Ы "   џџџ     џџџ                           @                         Љ   ыџ   Ь                                                                                                                                 
    @             ж  ж "   џџџ     џџџ                           @                         Њ   ыџ   Ь                                                                                                                                 
    @             с  с "   џџџ     џџџ                           @                         Ћ   ыџ   Ь                                                                                                                                 
    @             Ж  Ж *   џџџ     џџџ                           @                         Ќ   ыџ   Ь                                                                                                                                  
    @        Ѕ , Ц T Ж @     џџџ     џџџ                                            30.0                    ­   ѓџМ       Arial                      @                                                                                                          
    @             і  і "   џџџ     џџџ                           @                         Ў   ыџ   Ь                                                                                                                                 
    @              "   џџџ     џџџ                           @                         Џ   ыџ   Ь                                                                                                                                 
    @              "   џџџ     џџџ                           @                         А   ыџ   Ь                                                                                                                                 
    @              "   џџџ     џџџ                           @                         Б   ыџ   Ь                                                                                                                                 
    @             ь  ь *   џџџ     џџџ                           @                         В   ыџ   Ь                                                                                                                                  
    @        л , ќ T ь @     џџџ     џџџ                                            40.0                    Г   ѓџМ       Arial                      @                                                                                                          
    @             " "*   џџџ     џџџ                           @                         Д   ыџ   Ь                                                                                                                                  
    @        , 2T "@     џџџ     џџџ                                            50.0                    Е   ѓџМ       Arial                      @                                                                                                           
    @        d ; в K  C     џџџ     џџџ                                            MU1.5, A                    Ж   ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                                                                                                              
    @        
  G  -    џ      џџџ                                            Measurements                    Й   ыџ       Verdana                      @                                                                                                          
    @         	G -   РРР     џџџ                                            Power Lines                    К   ыџ       Verdana                    @    MainPage                                                                                                     
    @         G -   РРР     џџџ                                            Garage Lights                    Л   ыџ       Verdana                    @    GarageLight                                                                                                    
    @         1FvБ S        џџџ     џџџ                                                џџџџ ыџ   Ь                                                  @ 
    @            d   "                                                                                                       
    @            
 P     џ   џ  џ   џ                   ((KL3403_1_I * 1.0) - 25)  * 5.4               (KL3403_1_I) < 0                            г    ыџ   Ь                          @                                                                                                          
    @            	     џџџ     џџџ                           @                         д    ыџ   Ь                                                                                                                                 
    @         !  ! 	 !    џџџ     џџџ                           @                         е    ыџ   Ь                                                                                                                                 
    @         ,  , 	 ,    џџџ     џџџ                           @                         ж    ыџ   Ь                                                                                                                                 
    @         7  7 	 7    џџџ     џџџ                           @                         з    ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         и    ыџ   Ь                                                                                                                                  
    @            E  1     џџџ     џџџ                                            0.0                    й    ѓџМ       Arial                      @                                                                                                          
    @         L  L 	 L    џџџ     џџџ                           @                         к    ыџ   Ь                                                                                                                                 
    @         W  W 	 W    џџџ     џџџ                           @                         л    ыџ   Ь                                                                                                                                 
    @         b  b 	 b    џџџ     џџџ                           @                         м    ыџ   Ь                                                                                                                                 
    @         m  m 	 m    џџџ     џџџ                           @                         н    ыџ   Ь                                                                                                                                 
    @         B  B 	 B    џџџ     џџџ                           @                         о    ыџ   Ь                                                                                                                                  
    @        1  R E B 1     џџџ     џџџ                                            10.0                    п    ѓџМ       Arial                      @                                                                                                          
    @            	     џџџ     џџџ                           @                         J   ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         K   ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         L   ыџ   Ь                                                                                                                                 
    @         Ѓ  Ѓ 	 Ѓ    џџџ     џџџ                           @                         M   ыџ   Ь                                                                                                                                 
    @         x  x 	 x    џџџ     џџџ                           @                         N   ыџ   Ь                                                                                                                                  
    @        g   E x 1     џџџ     џџџ                                            20.0                    O   ѓџМ       Arial                      @                                                                                                          
    @         И  И 	 И    џџџ     џџџ                           @                         P   ыџ   Ь                                                                                                                                 
    @         У  У 	 У    џџџ     џџџ                           @                         Q   ыџ   Ь                                                                                                                                 
    @         Ю  Ю 	 Ю    џџџ     џџџ                           @                         R   ыџ   Ь                                                                                                                                 
    @         й  й 	 й    џџџ     џџџ                           @                         S   ыџ   Ь                                                                                                                                 
    @         Ў  Ў 	 Ў    џџџ     џџџ                           @                         T   ыџ   Ь                                                                                                                                  
    @          О E Ў 1     џџџ     џџџ                                            30.0                    U   ѓџМ       Arial                      @                                                                                                          
    @         ю  ю 	 ю    џџџ     џџџ                           @                         V   ыџ   Ь                                                                                                                                 
    @         љ  љ 	 љ    џџџ     џџџ                           @                         W   ыџ   Ь                                                                                                                                 
    @          	    џџџ     џџџ                           @                         X   ыџ   Ь                                                                                                                                 
    @          	    џџџ     џџџ                           @                         Y   ыџ   Ь                                                                                                                                 
    @         ф  ф 	 ф    џџџ     џџџ                           @                         Z   ыџ   Ь                                                                                                                                  
    @        г  є E ф 1     џџџ     џџџ                                            40.0                    [   ѓџМ       Arial                      @                                                                                                          
    @          	    џџџ     џџџ                           @                         \   ыџ   Ь                                                                                                                                  
    @        	 *E 1     џџџ     џџџ                                            50.0                    ]   ѓџМ       Arial                      @                                                                                                           
    @        \ , Ъ <  4     џџџ     џџџ                                            MU1.2, A                    ^   ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                                                                                                             
    @         FаБ ­        џџџ     џџџ                                                џџџџ ыџ   Ь                                                  @ 
    @            d   "                                                                                                       
    @            
 P     џ   џ  џ   џ                   ((KL3403_2_I * 1.0) - 25)  * 5.4               (KL3403_2_I) < 0                            т    ыџ   Ь                          @                                                                                                          
    @         јџёџ 	     џџџ     џџџ                           @                         у    ыџ   Ь                                                                                                                                 
    @         јџёџ! 	 !    џџџ     џџџ                           @                         ф    ыџ   Ь                                                                                                                                 
    @         јџёџ, 	 ,    џџџ     џџџ                           @                         х    ыџ   Ь                                                                                                                                 
    @         јџёџ7 	 7    џџџ     џџџ                           @                         ц    ыџ   Ь                                                                                                                                 
    @         јџёџ 	     џџџ     џџџ                           @                         ч    ыџ   Ь                                                                                                                                  
    @            E  1     џџџ     џџџ                                            0.0                    ш    ѓџМ       Arial                      @                                                                                                          
    @         јџёџL 	 L    џџџ     џџџ                           @                         щ    ыџ   Ь                                                                                                                                 
    @         јџёџW 	 W    џџџ     џџџ                           @                         ъ    ыџ   Ь                                                                                                                                 
    @         јџёџb 	 b    џџџ     џџџ                           @                         ы    ыџ   Ь                                                                                                                                 
    @         јџёџm 	 m    џџџ     џџџ                           @                         ь    ыџ   Ь                                                                                                                                 
    @         јџёџB 	 B    џџџ     џџџ                           @                         э    ыџ   Ь                                                                                                                                  
    @        1  R E B 1     џџџ     џџџ                                            10.0                    ю    ѓџМ       Arial                      @                                                                                                          
    @         јџёџ 	     џџџ     џџџ                           @                         x   ыџ   Ь                                                                                                                                 
    @         јџёџ 	     џџџ     џџџ                           @                         y   ыџ   Ь                                                                                                                                 
    @         јџёџ 	     џџџ     џџџ                           @                         z   ыџ   Ь                                                                                                                                 
    @         јџёџЃ 	 Ѓ    џџџ     џџџ                           @                         {   ыџ   Ь                                                                                                                                 
    @         јџёџx 	 x    џџџ     џџџ                           @                         |   ыџ   Ь                                                                                                                                  
    @        g   E x 1     џџџ     џџџ                                            20.0                    }   ѓџМ       Arial                      @                                                                                                          
    @         јџёџИ 	 И    џџџ     џџџ                           @                         ~   ыџ   Ь                                                                                                                                 
    @         јџёџУ 	 У    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         јџёџЮ 	 Ю    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         јџёџй 	 й    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         јџёџЎ 	 Ў    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @          О E Ў 1     џџџ     џџџ                                            30.0                       ѓџМ       Arial                      @                                                                                                          
    @         јџёџю 	 ю    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         јџёџљ 	 љ    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         јџёџ	    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         јџёџ	    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         јџёџф 	 ф    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        г  є E ф 1     џџџ     џџџ                                            40.0                       ѓџМ       Arial                      @                                                                                                          
    @         јџёџ	    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        	 *E 1     џџџ     џџџ                                            50.0                       ѓџМ       Arial                      @                                                                                                           
    @        \ , Ъ <  4     џџџ     џџџ                                            MU1.3, A                       ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                                                                                                             
    @        њ м $!ў         џџџ     џџџ                                                џџџџ ыџ   Ь                                                  @ 
    @            d   "                                                                                                       
    @            
 P     џ   џ  џ   џ                   ((KL3403_3_I * 1.0) - 25)  * 5.4               (KL3403_3_I) < 0                            c   ыџ   Ь                          @                                                                                                          
    @            	     џџџ     џџџ                           @                         d   ыџ   Ь                                                                                                                                 
    @         !  ! 	 !    џџџ     џџџ                           @                         e   ыџ   Ь                                                                                                                                 
    @         ,  , 	 ,    џџџ     џџџ                           @                         f   ыџ   Ь                                                                                                                                 
    @         7  7 	 7    џџџ     џџџ                           @                         g   ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         h   ыџ   Ь                                                                                                                                  
    @            E  1     џџџ     џџџ                                            0.0                    i   ѓџМ       Arial                      @                                                                                                          
    @         L  L 	 L    џџџ     џџџ                           @                         j   ыџ   Ь                                                                                                                                 
    @         W  W 	 W    џџџ     џџџ                           @                         k   ыџ   Ь                                                                                                                                 
    @         b  b 	 b    џџџ     џџџ                           @                         l   ыџ   Ь                                                                                                                                 
    @         m  m 	 m    џџџ     џџџ                           @                         m   ыџ   Ь                                                                                                                                 
    @         B  B 	 B    џџџ     џџџ                           @                         n   ыџ   Ь                                                                                                                                  
    @        1  R E B 1     џџџ     џџџ                                            10.0                    o   ѓџМ       Arial                      @                                                                                                          
    @            	     џџџ     џџџ                           @                         p   ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         q   ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         r   ыџ   Ь                                                                                                                                 
    @         Ѓ  Ѓ 	 Ѓ    џџџ     џџџ                           @                         s   ыџ   Ь                                                                                                                                 
    @         x  x 	 x    џџџ     џџџ                           @                         t   ыџ   Ь                                                                                                                                  
    @        g   E x 1     џџџ     џџџ                                            20.0                    u   ѓџМ       Arial                      @                                                                                                          
    @         И  И 	 И    џџџ     џџџ                           @                         v   ыџ   Ь                                                                                                                                 
    @         У  У 	 У    џџџ     џџџ                           @                         w   ыџ   Ь                                                                                                                                 
    @         Ю  Ю 	 Ю    џџџ     џџџ                           @                         x   ыџ   Ь                                                                                                                                 
    @         й  й 	 й    џџџ     џџџ                           @                         y   ыџ   Ь                                                                                                                                 
    @         Ў  Ў 	 Ў    џџџ     џџџ                           @                         z   ыџ   Ь                                                                                                                                  
    @          О E Ў 1     џџџ     џџџ                                            30.0                    {   ѓџМ       Arial                      @                                                                                                          
    @         ю  ю 	 ю    џџџ     џџџ                           @                         |   ыџ   Ь                                                                                                                                 
    @         љ  љ 	 љ    џџџ     џџџ                           @                         }   ыџ   Ь                                                                                                                                 
    @          	    џџџ     џџџ                           @                         ~   ыџ   Ь                                                                                                                                 
    @          	    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         ф  ф 	 ф    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        г  є E ф 1     џџџ     џџџ                                            40.0                       ѓџМ       Arial                      @                                                                                                          
    @          	    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        	 *E 1     џџџ     џџџ                                            50.0                       ѓџМ       Arial                      @                                                                                                           
    @        \ , Ъ <  4     џџџ     џџџ                                            MU1.1, A                       ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                 џ   џџ   џ   џџ   џ џ џ РРР                                      ъ   , <  b            GARAGELIGHT Z    c:\images\grsch-bg.jpg @    Zz   K   D                                                                                                       
    @        
 О н  Э     џџџ     џџџ                                            Security Room (1.12)                        ыџ       Verdana                      @                                                                                                          
    @        Z № y i џ   џџџ      џ                                     garage_OG_1                                ыџ   Ь       Garage_OG_1                 @                                                                                                          
    @         № Е Ѕ џ   џџџ      џ                                     garage_OG_5                                ыџ   Ь                          @                                                                                                           
    @        P м  ё i ц     џџџ     џџџ                                            OG1                        ёџ   Ь   Verdana                      @                                                                                                           
    @         м П ё Ѕ ц     џџџ     џџџ                                            OG5                        ёџ   Ь   Verdana                      @                                                                                                          
    @        x   Ћ     џџџ      џ                                     garage_OG_19                                ыџ   Ь                          @                                                                                                           
    @        n x Ё        џџџ     џџџ                                            OG19                    
    ёџ   Ь   Verdana                      @                                                                                                           
    @        
 Z y  i     џџџ     џџџ                                            Warehouse (1.13)                        ыџ       Verdana                      @                                                                                                           
    @        
 "A 1    џџџ     џџџ                                            Security WC (1.11)                        ыџ       Verdana                      @                                                                                                          
    @        Z Ty si c  џџџ      џ                                     garage_OG_3                                ыџ   Ь                          @                                                                                                          
    @         TЕ sЅ c  џџџ      џ                                     garage_OG_4                                ыџ   Ь                          @                                                                                                           
    @        P @ Ui J    џџџ     џџџ                                            OG3                        ёџ   Ь   Verdana                      @                                                                                                           
    @         @П UЅ J    џџџ     џџџ                                            OG4                        ёџ   Ь   Verdana                      @                                                                                                           
    @        
 ъ	 љ    џџџ     џџџ                                            Staff WC (1.09)                        ыџ       Verdana                      @                                                                                                          
    @        Z y ;i +  џџџ      џ                                     garage_OG_10                                ыџ   Ь                          @                                                                                                          
    @         Е ;Ѕ +  џџџ      џ                                     garage_OG_11                                ыџ   Ь                          @                                                                                                           
    @        P  i     џџџ     џџџ                                            OG10                        ёџ   Ь   Verdana                      @                                                                                                           
    @         П Ѕ     џџџ     џџџ                                            OG11                        ёџ   Ь   Verdana                      @                                                                                                           
    @        
 Ѕ     џџџ     џџџ                                            Staff Room (1.10)                        ыџ       Verdana                      @                                                                                                          
    @        < И[ зK Ч  џџџ      џ                                     garage_OG_6                                ыџ   Ь                          @                                                                                                          
    @        x И з Ч  џџџ      џ                                     garage_OG_7                                ыџ   Ь                          @                                                                                                           
    @        2 Єe ЙK Ў    џџџ     џџџ                                            OG6                        ёџ   Ь   Verdana                      @                                                                                                           
    @        n ЄЁ Й Ў    џџџ     џџџ                                            OG7                         ёџ   Ь   Verdana                      @                                                                                                          
    @        Д Иг зУ Ч  џџџ      џ                                     garage_OG_8                            !    ыџ   Ь                          @                                                                                                           
    @        Њ Єн ЙУ Ў    џџџ     џџџ                                            OG8                    "    ёџ   Ь   Verdana                      @                                                                                                           
    @        Z 	y i     џџџ     џџџ                                            Kitchen (1.08)                    #    ыџ       Verdana                      @                                                                                                          
    @        " AЋ 1   џџџ      џ                                     garage_OG_12                            $    ыџ   Ь                          @                                                                                                          
    @        ^ }Ћ m   џџџ      џ                                     garage_OG_13                            %    ыџ   Ь                          @                                                                                                           
    @        x K 1     џџџ     џџџ                                            OG12                    &    ёџ   Ь   Verdana                      @                                                                                                           
    @        Tx  m     џџџ     џџџ                                            OG13                    '    ёџ   Ь   Verdana                      @                                                                                                           
    @        О 	н Э     џџџ     џџџ                                            Staff Room (1.07)                    *    ыџ       Verdana                      @                                                                                                           
    @        "	A1    џџџ     џџџ                                            Water Room (1.06)                    +    ыџ       Verdana                      @                                                                                                          
    @        |Tsc  џџџ      џ                                     garage_OG_20                            ,    ыџ   Ь                          @                                                                                                           
    @        r@ЅUJ    џџџ     џџџ                                            OG20                    .    ёџ   Ь   Verdana                      @                                                                                                           
    @        ъ		љ    џџџ     џџџ                                            Generator (1.04)                    0    ыџ       Verdana                      @                                                                                                          
    @        |;+  џџџ      џ                                     garage_OG_27                            2    ыџ   Ь                          @                                                                                                           
    @        rЅ    џџџ     џџџ                                            OG27                    4    ёџ   Ь   Verdana                      @                                                                                                           
    @        	Ѕ    џџџ     џџџ                                            Switch Room (1.05)                    5    ыџ       Verdana                      @                                                                                                          
    @        |ИзЧ  џџџ      џ                                     garage_OG_28                            :    ыџ   Ь       Garage_OG_28                 @                                                                                                           
    @        rЄЅЙЎ    џџџ     џџџ                                            OG28                    ;    ёџ   Ь   Verdana                      @                                                                                                          
    @         ЙЋ Љ   џџџ      џ                                     garage_OG_14                            <    ыџ   Ь                          @                                                                                                          
    @        ж ѕЋ х   џџџ      џ                                     garage_OG_15                            =    ыџ   Ь                          @                                                                                                           
    @        x У Љ     џџџ     џџџ                                            OG14                    >    ёџ   Ь   Verdana                      @                                                                                                           
    @        Ьx џ х     џџџ     џџџ                                            OG15                    ?    ёџ   Ь   Verdana                      @                                                                                                          
    @        @№ _Oџ   џџџ      џ                                     garage_OG_16                            @    ыџ   Ь                          @                                                                                                          
    @        |№ џ   џџџ      џ                                     garage_OG_17                            A    ыџ   Ь                          @                                                                                                           
    @        6м iё Oц     џџџ     џџџ                                            OG16                    B    ёџ   Ь   Verdana                      @                                                                                                           
    @        rм Ѕё ц     џџџ     џџџ                                            OG17                    C    ёџ   Ь   Verdana                      @                                                                                                          
    @        И№ зЧџ   џџџ      џ                                     garage_OG_18                            D    ыџ   Ь                          @                                                                                                           
    @        Ўм сё Чц     џџџ     џџџ                                            OG18                    F    ёџ   Ь   Verdana                      @                                                                                                           
    @        Z y i     џџџ     џџџ                                            Boiler (1.03)                    H    ыџ       Verdana                      @                                                                                                           
    @        О н Э     џџџ     џџџ                                            Tools (1.02)                    M    ыџ       Verdana                      @                                                                                                           
    @        "A1    џџџ     џџџ                                            Garage (1.01)                    N    ыџ       Verdana                      @                                                                                                          
    @        b Ћ q   џџџ      џ                                     garage_OG_24                            Q    ыџ   Ь                          @                                                                                                          
    @         НЋ ­   џџџ      џ                                     garage_OG_25                            R    ыџ   Ь                          @                                                                                                           
    @        Xx  q     џџџ     џџџ                                            OG24                    S    ёџ   Ь   Verdana                      @                                                                                                           
    @        x Ч ­     џџџ     џџџ                                            OG25                    T    ёџ   Ь   Verdana                      @                                                                                                          
    @        №   џџџ      џ                                     garage_OG_26                            Y    ыџ   Ь                          @                                                                                                           
    @        vм Љё ц     џџџ     џџџ                                            OG26                    Z    ёџ   Ь   Verdana                      @                                                                                                          
    @        DTcsSc  џџџ      џ                                     garage_OG_21                            [    ыџ   Ь                          @                                                                                                          
    @        Tsc  џџџ      џ                                     garage_OG_22                            \    ыџ   Ь                          @                                                                                                           
    @        :@mUSJ    џџџ     џџџ                                            OG21                    ]    ёџ   Ь   Verdana                      @                                                                                                           
    @        v@ЉUJ    џџџ     џџџ                                            OG22                    ^    ёџ   Ь   Verdana                      @                                                                                                          
    @        МTлsЫc  џџџ      џ                                     garage_OG_23                            _    ыџ   Ь                          @                                                                                                           
    @        В@хUЫJ    џџџ     џџџ                                            OG23                    `    ёџ   Ь   Verdana                      @                                                                                                          
    @        
  G  -   РРР     џџџ                                            Measurements                    w    ыџ       Verdana                    @ 	   PowerPage                                                                                                     
    @         	G -   РРР     џџџ                                            Power Lines                    x    ыџ       Verdana                    @    MainPage                                                                                                     
    @         G -    џ      џџџ                                            Garage Lights                    y    ыџ       Verdana       KoefV              @    VoltagePage        џ   џџ   џ   џџ   џ џ џ РРР                                      №   , <b Ф            MAINPAGE Z    c:\images\grsch-bg.jpg @    Zт   K                                                                                                         
    @         О Ё н  Ш    џ        џ                                     power_VRU_switch[1]                            М    ыџ   Ь    	   SCHUF_OFF              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @         Ё -    џ        џ                                     power_VRU_switch[3]                            О    ыџ   Ь       LINE3              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @         6Ё U E   џ        џ                                     power_VRU_switch[4]                            П    ыџ   Ь       LINE4              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @         ^Ё } m   џ        џ                                     power_VRU_switch[5]                            Р    ыџ   Ь       LINE5              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @         Ё Ѕ    џ        џ                                     power_VRU_switch[6]                            С    ыџ   Ь       LINE6              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @        Иц зЧѕ    џ        џ                                     power_VRU_switch[8]                            Т    ыџ   Ь       LINE8              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @        ИО зн ЧЭ    џ        џ                                     power_VRU_switch[7]                            У    ыџ   Ь       LINE7              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @        Из-Ч   џ        џ                                     power_VRU_switch[9]                            Ф    ыџ   Ь       LINE9              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @        И6зUЧE   џ        џ                                     power_VRU_switch[10]                            Х    ыџ   Ь       LINE10              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @         ц Ё  ѕ    џ        џ                                     power_VRU_switch[2]                            Ч    ыџ   Ь       LINE2              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                           
    @        Њ ц Aѕ ѕ     џџџ     џџџ                                            1 KM 1.2                    Ш    ыџ       Verdana                      @                                                                                                           
    @        Д О 7н ѕ Э     џџџ     џџџ                                            1 KM 1.1                    Щ    ыџ       Verdana                      @                                                                                                           
    @        Њ ^A}ѕ m    џџџ     џџџ                                            1 KM 1.5                    Ю    ыџ       Verdana                      @                                                                                                           
    @        Њ AЅѕ     џџџ     џџџ                                            1 KM 1.6                    Я    ыџ       Verdana                      @                                                                                                           
    @        рО wн +Э     џџџ     џџџ                                            1 KM 1.7                    а    ыџ       Verdana                      @                                                                                                           
    @        Њ A-ѕ     џџџ     џџџ                                            1 KM 1.3                    б    ыџ       Verdana                      @                                                                                                           
    @        Њ 6AUѕ E    џџџ     џџџ                                            1 KM 1.4                    в    ыџ       Verdana                      @                                                                                                           
    @        рц w+ѕ     џџџ     џџџ                                            1 KM 1.8                    г    ыџ       Verdana                      @                                                                                                           
    @        рw-+    џџџ     џџџ                                            1 KM 1.9                    д    ыџ       Verdana                      @                                                                                                           
    @        ъ^w}0m    џџџ     џџџ                                         	   1 KM 1.11                    е    ыџ       Verdana                      @                                                                                                          
    @        
  G  -   РРР     џџџ                                            Measurements                    и    ыџ       Verdana                    @ 	   PowerPage                                                                                                     
    @         	G -    џ      џџџ                                            Power Lines                    й    ыџ       Verdana       KoefV              @    VoltagePage                                                                                                     
    @         G -   РРР     џџџ                                            Garage Lights                    к    ыџ       Verdana                    @    GarageLight                                                                                                     
    @        И^з}Чm   џ        џ                                     power_VRU_switch[11]                            л    ыџ   Ь       LINE11              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                           
    @        ъ6wU0E    џџџ     џџџ                                         	   1 KM 1.10                    м    ыџ       Verdana                      @                                                                                                           
    @         d   P x    џ        џ                                     PowerSystemSwitcher                            р    ыџ   Ь       PowerSystemSwitcher                 @             џ   џџ   џ   џџ   џ џ џ РРР                                      э   , m&<        	   POWERPAGE Z    c:\images\grsch-bg.jpg @    Zo  K                                                                                                         
    @        
  Е     РРР     џџџ                                            Voltage                    Н    ыџ       Verdana       KoefV            @    VoltagePage                                                                                                     
    @         	Е    РРР     џџџ                                            Current                    О    ыџ       Verdana       KoefI            @    CurrentPage                                                                                                     
    @         Е    џ      џџџ                                            Power                    П    ыџ       Verdana                      @                                                                                                          
    @        
  G  -    џ      џџџ                                            Measurements                    N   ыџ       Verdana       KoefV              @    VoltagePage                                                                                                     
    @         	G -   РРР     џџџ                                            Power Lines                    O   ыџ       Verdana                    @    MainPage                                                                                                     
    @         G -   РРР     џџџ                                            Garage Lights                    P   ыџ       Verdana                    @    GarageLight                                                                                                    
    @        ф ы 0{        џџџ     џџџ                                                џџџџ ыџ   Ь                                                  @ 
    @            d                                                                                                          
    @            
 P     џ   џ  џ   џ                   ((KL3403_3_P * 1.0) - 75)  * 1.8               (KL3403_3_P) < 0                               ыџ   Ь                          @                                                                                                          
    @            	     џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         0  0 	 0    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         B  B 	 B    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         T  T 	 T    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @            E  1     џџџ     џџџ                                            0.0                       ѓџМ       Arial                      @                                                                                                          
    @         x  x 	 x    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         Ў  Ў 	 Ў    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         f  f 	 f    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        U  v E f 1     џџџ     џџџ                                            50.0                       ѓџМ       Arial                      @                                                                                                          
    @         в  в 	 в    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         ф  ф 	 ф    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         і  і 	 і    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @          	    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         Р  Р 	 Р    џџџ     џџџ                           @                             ыџ   Ь                                                                                                                                  
    @        Њ  е E Р 1     џџџ     џџџ                                            100.0                    !   ѓџМ       Arial                      @                                                                                                          
    @          	    џџџ     џџџ                           @                         "   ыџ   Ь                                                                                                                                  
    @         /E 1     џџџ     џџџ                                            150.0                    #   ѓџМ       Arial                      @                                                                                                           
    @        Q , е <  4     џџџ     џџџ                                         	   MU1.1, kW                    $   ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                                                                                                             
    @         1FvБ S        џџџ     џџџ                                                џџџџ ыџ   Ь                                                  @ 
    @            d                                                                                                          
    @            
 P     џ   џ  џ   џ                   ((KL3403_1_P * 1.0) - 30)  * 4.5               (KL3403_1_P) < 0                            г    ыџ   Ь                          @                                                                                                          
    @         9  9 	 9    џџџ     џџџ                           @                         д    ыџ   Ь                                                                                                                                 
    @         f  f 	 f    џџџ     џџџ                           @                         е    ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         ж    ыџ   Ь                                                                                                                                  
    @            E  1     џџџ     џџџ                                            0.0                    з    ѓџМ       Arial                      @                                                                                                          
    @         Р  Р 	 Р    џџџ     џџџ                           @                         и    ыџ   Ь                                                                                                                                 
    @         э  э 	 э    џџџ     џџџ                           @                         й    ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         к    ыџ   Ь                                                                                                                                  
    @          Ѓ E  1     џџџ     џџџ                                            30.0                    л    ѓџМ       Arial                      @                                                                                                          
    @          	    џџџ     џџџ                           @                         м    ыџ   Ь                                                                                                                                  
    @        	 *E 1     џџџ     џџџ                                            60.0                    н    ѓџМ       Arial                      @                                                                                                           
    @        Q , е <  4     џџџ     џџџ                                         	   MU1.2, kW                    о    ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                                                                                                             
    @         FаБ ­        џџџ     џџџ                                                џџџџ ыџ   Ь                                                  @ 
    @            d                                                                                                          
    @            
 P     џ   џ  џ   џ               !   ((KL3403_2_P * 1.0) - 20)  * 6.75               (KL3403_2_P) < 0                            т    ыџ   Ь                          @                                                                                                          
    @            	     џџџ     џџџ                           @                         у    ыџ   Ь                                                                                                                                 
    @         '  ' 	 '    џџџ     џџџ                           @                         ф    ыџ   Ь                                                                                                                                 
    @         4  4 	 4    џџџ     џџџ                           @                         х    ыџ   Ь                                                                                                                                 
    @         B  B 	 B    џџџ     џџџ                           @                         ц    ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         ч    ыџ   Ь                                                                                                                                  
    @            E  1     џџџ     џџџ                                            0.0                    ш    ѓџМ       Arial                      @                                                                                                          
    @         ]  ] 	 ]    џџџ     џџџ                           @                         щ    ыџ   Ь                                                                                                                                 
    @         k  k 	 k    џџџ     џџџ                           @                         ъ    ыџ   Ь                                                                                                                                 
    @         x  x 	 x    џџџ     џџџ                           @                         ы    ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         ь    ыџ   Ь                                                                                                                                 
    @         P  P 	 P    џџџ     џџџ                           @                         э    ыџ   Ь                                                                                                                                  
    @        ?  ` E P 1     џџџ     џџџ                                            10.0                    ю    ѓџМ       Arial                      @                                                                                                          
    @              	      џџџ     џџџ                           @                         %   ыџ   Ь                                                                                                                                 
    @         Ў  Ў 	 Ў    џџџ     џџџ                           @                         &   ыџ   Ь                                                                                                                                 
    @         Л  Л 	 Л    џџџ     џџџ                           @                         '   ыџ   Ь                                                                                                                                 
    @         Щ  Щ 	 Щ    џџџ     џџџ                           @                         c   ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         d   ыџ   Ь                                                                                                                                  
    @          Ѓ E  1     џџџ     џџџ                                            20.0                    e   ѓџМ       Arial                      @                                                                                                          
    @         ф  ф 	 ф    џџџ     џџџ                           @                         f   ыџ   Ь                                                                                                                                 
    @         ђ  ђ 	 ђ    џџџ     џџџ                           @                         g   ыџ   Ь                                                                                                                                 
    @         џ  џ 	 џ    џџџ     џџџ                           @                         h   ыџ   Ь                                                                                                                                 
    @          	    џџџ     џџџ                           @                         i   ыџ   Ь                                                                                                                                 
    @         з  з 	 з    џџџ     џџџ                           @                         j   ыџ   Ь                                                                                                                                  
    @        Ц  ч E з 1     џџџ     џџџ                                            30.0                    k   ѓџМ       Arial                      @                                                                                                          
    @          	    џџџ     џџџ                           @                         l   ыџ   Ь                                                                                                                                  
    @        	 *E 1     џџџ     џџџ                                            40.0                    m   ѓџМ       Arial                      @                                                                                                           
    @        Q , е <  4     џџџ     џџџ                                         	   MU1.3, kW                    n   ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                                                                                                             
    @        д;ўi]        џџџ     џџџ                                                џџџџ ыџ   Ь                                                  @ 
    @            d                                                                                                          
    @            
 P     џ   џ  џ   џ               !   ((KL3403_4_P * 1.0) - 10)  * 13.5               (KL3403_4_P) < 0                            ё    ыџ   Ь                          @                                                                                                          
    @            	     џџџ     џџџ                           @                         ђ    ыџ   Ь                                                                                                                                 
    @         '  ' 	 '    џџџ     џџџ                           @                         ѓ    ыџ   Ь                                                                                                                                 
    @         4  4 	 4    џџџ     џџџ                           @                         є    ыџ   Ь                                                                                                                                 
    @         B  B 	 B    џџџ     џџџ                           @                         ѕ    ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         і    ыџ   Ь                                                                                                                                  
    @            E  1     џџџ     џџџ                                            0.0                    ї    ѓџМ       Arial                      @                                                                                                          
    @         ]  ] 	 ]    џџџ     џџџ                           @                         ј    ыџ   Ь                                                                                                                                 
    @         k  k 	 k    џџџ     џџџ                           @                         љ    ыџ   Ь                                                                                                                                 
    @         x  x 	 x    џџџ     џџџ                           @                         њ    ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         ћ    ыџ   Ь                                                                                                                                 
    @         P  P 	 P    џџџ     џџџ                           @                         ќ    ыџ   Ь                                                                                                                                  
    @        D  \ E P 1     џџџ     џџџ                                            5.0                    §    ѓџМ       Arial                      @                                                                                                          
    @              	      џџџ     џџџ                           @                         .   ыџ   Ь                                                                                                                                 
    @         Ў  Ў 	 Ў    џџџ     џџџ                           @                         /   ыџ   Ь                                                                                                                                 
    @         Л  Л 	 Л    џџџ     џџџ                           @                         0   ыџ   Ь                                                                                                                                 
    @         Щ  Щ 	 Щ    џџџ     џџџ                           @                         1   ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         2   ыџ   Ь                                                                                                                                  
    @          Ѓ E  1     џџџ     џџџ                                            10.0                    3   ѓџМ       Arial                      @                                                                                                          
    @         ф  ф 	 ф    џџџ     џџџ                           @                         4   ыџ   Ь                                                                                                                                 
    @         ђ  ђ 	 ђ    џџџ     џџџ                           @                         5   ыџ   Ь                                                                                                                                 
    @         џ  џ 	 џ    џџџ     џџџ                           @                         6   ыџ   Ь                                                                                                                                 
    @          	    џџџ     џџџ                           @                         7   ыџ   Ь                                                                                                                                 
    @         з  з 	 з    џџџ     џџџ                           @                         8   ыџ   Ь                                                                                                                                  
    @        Ц  ч E з 1     џџџ     џџџ                                            15.0                    9   ѓџМ       Arial                      @                                                                                                          
    @          	    џџџ     џџџ                           @                         :   ыџ   Ь                                                                                                                                  
    @        	 *E 1     џџџ     џџџ                                            20.0                    ;   ѓџМ       Arial                      @                                                                                                           
    @        Q , е <  4     џџџ     џџџ                                         	   MU1.4, kW                    <   ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                                                                                                             
    @        дўаi­        џџџ     џџџ                                                џџџџ ыџ   Ь                                                  @ 
    @            d                                                                                                          
    @            
 P     џ   џ  џ   џ                  ((KL3403_5_P * 1.0) - 5)  * 27               (KL3403_5_P) < 0                                ыџ   Ь                          @                                                                                                          
    @         '  ' 	 '    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         B  B 	 B    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         ]  ] 	 ]    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         x  x 	 x    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @            E  1     џџџ     џџџ                                            0.0                       ѓџМ       Arial                      @                                                                                                          
    @         Ў  Ў 	 Ў    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         Щ  Щ 	 Щ    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         ф  ф 	 ф    џџџ     џџџ                           @                         	   ыџ   Ь                                                                                                                                 
    @         џ  џ 	 џ    џџџ     џџџ                           @                         
   ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @           E  1     џџџ     џџџ                                            5.0                       ѓџМ       Arial                      @                                                                                                          
    @          	    џџџ     џџџ                           @                         =   ыџ   Ь                                                                                                                                  
    @        	 *E 1     џџџ     џџџ                                            10.0                    >   ѓџМ       Arial                      @                                                                                                           
    @        Q , е <  4     џџџ     џџџ                                         	   MU1.5, kW                    ?   ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                 џ   џџ   џ   џџ   џ џ џ РРР                                      ы   , <Ф &           VOLTAGEPAGE Z    c:\images\grsch-bg.jpg @    Z!  K                                                                                                         
    @        
  Е     џ      џџџ                                            Voltage                    Н    ыџ       Verdana                      @                                                                                                          
    @         	Е    РРР     џџџ                                            Current                    О    ыџ       Verdana       KoefI            @    CurrentPage                                                                                                     
    @         Е    РРР     џџџ                                            Power                    П    ыџ       Verdana       KoefP            @ 	   PowerPage                                                                                                     
    @        
  G  -    џ      џџџ                                            Measurements                       ыџ       Verdana       KoefV              @    VoltagePage                                                                                                     
    @         	G -   РРР     џџџ                                            Power Lines                       ыџ       Verdana                    @    MainPage                                                                                                     
    @         G -   РРР     џџџ                                            Garage Lights                        ыџ       Verdana                    @    GarageLight                                                                                                    
    @        ф з {љ         џџџ     џџџ                                                џџџџ ыџ   Ь                                                  @ 
    @            d                                                                                                          
    @            
 P     џ   џ  џ   џ               !   ((KL3403_3_V * 1.0) - 150)  * 0.9               (KL3403_3_V) < 0                               ыџ   Ь                          @                                                                                                          
    @         9  9 	 9    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @            E  1     џџџ     џџџ                                            0.0                       ѓџМ       Arial                      @                                                                                                          
    @            	     џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         f  f 	 f    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        P  { E f 1     џџџ     џџџ                                            100.0                       ѓџМ       Arial                      @                                                                                                          
    @         э  э 	 э    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         Р  Р 	 Р    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        Њ  е E Р 1     џџџ     џџџ                                            200.0                       ѓџМ       Arial                      @                                                                                                          
    @          	    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @         /E 1     џџџ     џџџ                                            300.0                       ѓџМ       Arial                      @                                                                                                           
    @        \ , Ъ <  4     џџџ     џџџ                                            MU1.1, V                       ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                                                                                                             
    @         ;KГ ]        џџџ     џџџ                                                џџџџ ыџ   Ь                                                  @ 
    @            d                                                                                                          
    @            
 P     џ   џ  џ   џ               !   ((KL3403_1_V * 1.0) - 150)  * 0.9               (KL3403_1_V) < 0                            г    ыџ   Ь                          @                                                                                                          
    @         9  9 	 9    џџџ     џџџ                           @                         д    ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         е    ыџ   Ь                                                                                                                                  
    @            E  1     џџџ     џџџ                                            0.0                    ж    ѓџМ       Arial                      @                                                                                                          
    @            	     џџџ     џџџ                           @                         з    ыџ   Ь                                                                                                                                 
    @         f  f 	 f    џџџ     џџџ                           @                         и    ыџ   Ь                                                                                                                                  
    @        P  { E f 1     џџџ     џџџ                                            100.0                    й    ѓџМ       Arial                      @                                                                                                          
    @         э  э 	 э    џџџ     џџџ                           @                         к    ыџ   Ь                                                                                                                                 
    @         Р  Р 	 Р    џџџ     џџџ                           @                         л    ыџ   Ь                                                                                                                                  
    @        Њ  е E Р 1     џџџ     џџџ                                            200.0                    м    ѓџМ       Arial                      @                                                                                                          
    @          	    џџџ     џџџ                           @                         н    ыџ   Ь                                                                                                                                  
    @         /E 1     џџџ     џџџ                                            300.0                    о    ѓџМ       Arial                      @                                                                                                           
    @        \ , Ъ <  4     џџџ     џџџ                                            MU1.2, V                    п    ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                                                                                                             
    @         KаГ ­        џџџ     џџџ                                                џџџџ ыџ   Ь                                                  @ 
    @            d                                                                                                          
    @            
 P     џ   џ  џ   џ               !   ((KL3403_2_V * 1.0) - 150)  * 0.9               (KL3403_1_V) < 0                            т    ыџ   Ь                          @                                                                                                          
    @         9  9 	 9    џџџ     џџџ                           @                         у    ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         ф    ыџ   Ь                                                                                                                                  
    @            E  1     џџџ     џџџ                                            0.0                    х    ѓџМ       Arial                      @                                                                                                          
    @            	     џџџ     џџџ                           @                         ц    ыџ   Ь                                                                                                                                 
    @         f  f 	 f    џџџ     џџџ                           @                         ч    ыџ   Ь                                                                                                                                  
    @        P  { E f 1     џџџ     џџџ                                            100.0                    ш    ѓџМ       Arial                      @                                                                                                          
    @         э  э 	 э    џџџ     џџџ                           @                         щ    ыџ   Ь                                                                                                                                 
    @         Р  Р 	 Р    џџџ     џџџ                           @                         ъ    ыџ   Ь                                                                                                                                  
    @        Њ  е E Р 1     џџџ     џџџ                                            200.0                    ы    ѓџМ       Arial                      @                                                                                                          
    @          	    џџџ     џџџ                           @                         ь    ыџ   Ь                                                                                                                                  
    @         /E 1     џџџ     џџџ                                            300.0                    э    ѓџМ       Arial                      @                                                                                                           
    @        \ , Ъ <  4     џџџ     џџџ                                            MU1.3, V                    ю    ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                                                                                                             
    @        дEkg        џџџ     џџџ                                                џџџџ ыџ   Ь                                                  @ 
    @            d                                                                                                          
    @            
 P     џ   џ  џ   џ               !   ((KL3403_4_V * 1.0) - 150)  * 0.9               (KL3403_4_V) < 0                            ё    ыџ   Ь                          @                                                                                                          
    @         9  9 	 9    џџџ     џџџ                           @                         ђ    ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                         ѓ    ыџ   Ь                                                                                                                                  
    @            E  1     џџџ     џџџ                                            0.0                    є    ѓџМ       Arial                      @                                                                                                          
    @            	     џџџ     џџџ                           @                         ѕ    ыџ   Ь                                                                                                                                 
    @         f  f 	 f    џџџ     џџџ                           @                         і    ыџ   Ь                                                                                                                                  
    @        P  { E f 1     џџџ     џџџ                                            100.0                    ї    ѓџМ       Arial                      @                                                                                                          
    @         э  э 	 э    џџџ     џџџ                           @                         ј    ыџ   Ь                                                                                                                                 
    @         Р  Р 	 Р    џџџ     џџџ                           @                         љ    ыџ   Ь                                                                                                                                  
    @        Њ  е E Р 1     џџџ     џџџ                                            200.0                    њ    ѓџМ       Arial                      @                                                                                                          
    @          	    џџџ     џџџ                           @                         ћ    ыџ   Ь                                                                                                                                  
    @         /E 1     џџџ     џџџ                                            300.0                    ќ    ѓџМ       Arial                      @                                                                                                           
    @        \ , Ъ <  4     џџџ     џџџ                                            MU1.4, V                    §    ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                                                                                                             
    @        даk­        џџџ     џџџ                                                џџџџ ыџ   Ь                                                  @ 
    @            d                                                                                                          
    @            
 P     џ   џ  џ   џ               !   ((KL3403_5_V * 1.0) - 150)  * 0.9               (KL3403_5_V) < 0                                ыџ   Ь                          @                                                                                                          
    @         9  9 	 9    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @            	     џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @            E  1     џџџ     џџџ                                            0.0                       ѓџМ       Arial                      @                                                                                                          
    @            	     џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         f  f 	 f    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        P  { E f 1     џџџ     џџџ                                            100.0                       ѓџМ       Arial                      @                                                                                                          
    @         э  э 	 э    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                 
    @         Р  Р 	 Р    џџџ     џџџ                           @                            ыџ   Ь                                                                                                                                  
    @        Њ  е E Р 1     џџџ     џџџ                                            200.0                    	   ѓџМ       Arial                      @                                                                                                          
    @          	    џџџ     џџџ                           @                         
   ыџ   Ь                                                                                                                                  
    @         /E 1     џџџ     џџџ                                            300.0                       ѓџМ       Arial                      @                                                                                                           
    @        \ , Ъ <  4     џџџ     џџџ                                            MU1.5, V                       ѓџМ       Arial                      @             џ   џџ   џ   џџ   џ џ џ РРР                                 џ   џџ   џ   џџ   џ џ џ РРР                                      §џџџ, VF        	 !   TcpIp.lib 13.10.11 10:31:34 @жN%   TcUtilities.lib 8.2.10 17:42:18 @Ъ"pK)   TcSocketHelper.lib 20.8.09 10:46:08 @@џJ!   TcBase.lib 14.5.09 12:14:08 @ррJ"   standard.lib 5.6.98 12:03:02 @FДw5)   ClientStrSock.lib 19.10.12 18:01:27 @GkP"   TcSystem.lib 9.3.10 11:21:30 @
K&   TcModbusSrv.lib 26.1.12 11:11:48 @Ф
!O#   TcKL6301.lib 4.11.10 11:26:24 @0nвL      F_GetVersionTcpIp @      E_WinsockError       ST_SockAddr       ST_TcIpConnSvrResponse       ST_TcIpConnSvrUdpBuffer    	   T_HSOCKET                  FB_SocketAccept @          FB_SocketClose @          FB_SocketCloseAll @          FB_SocketConnect @          FB_SocketListen @          FB_SocketReceive @          FB_SocketSend @          FB_SocketUdpCreate @          FB_SocketUdpReceiveFrom @          FB_SocketUdpSendTo @             Global_Variables @           BCD_TO_DEC @<      ADSDATATYPEID       E_AmsLoggerMode    	   E_ArgType       E_DbgContext       E_DbgDirection       E_EnumCmdType       E_FileRBufferCmd       E_HashPrefixTypes       E_MIB_IF_Type       E_NumGroupTypes       E_PersistentMode       E_PrefixFlagParam       E_RegValueType       E_RouteTransportType    
   E_SBCSType       E_ScopeServerState       E_TimeZoneID       E_TypeFieldParam       E_UTILITIES_ERRORCODES       OTSTRUCT       PROFILERSTRUCT       REMOTEPC       REMOTEPCINFOSTRUCT       ROUTERINFOSTRUCT       ST_AmsGetTimeZoneInformation       ST_AmsLoggerReq       ST_AmsRouteEntry       ST_AmsRouteEntryHead       ST_AmsRouteSystemEntry       ST_FileAttributes       ST_FileRBufferHead       ST_FindFileEntry       ST_FindFileSystemEntry       ST_FormatParameters       ST_HKeySrvRead       ST_HKeySrvWrite       ST_IP_ADAPTER_INFO       ST_IP_ADDR_STRING       ST_IPAdapterHwAddr       ST_IPAdapterInfo       ST_SBCSTable    #   ST_ScopeServerRecordModeDescription       ST_TcRouterStatusInfo       ST_TimeZoneInformation       STARTPROC_BUFFER       SYMINFO_BUFFER       SYMINFOSTRUCT       T_Arg    
   T_FILETIME       T_FIX16    
   T_FloatRec       T_HashTableEntry       T_HHASHTABLE       T_HLINKEDLIST       T_HUGE_INTEGER       T_LARGE_INTEGER       T_LinkedListEntry       T_UHUGE_INTEGER       T_ULARGE_INTEGER    
   TIMESTRUCT                   BE128_TO_HOST @          BE16_TO_HOST @          BE32_TO_HOST @          BE64_TO_HOST @          BYTEARR_TO_MAXSTRING @          DATA_TO_HEXSTR @          DCF77_TIME @          DCF77_TIME_EX @          DEC_TO_BCD @           DEG_TO_RAD @           DINT_TO_DECSTR @          DT_TO_FILETIME @          DT_TO_SYSTEMTIME @           DWORD_TO_BINSTR @          DWORD_TO_DECSTR @          DWORD_TO_HEXSTR @          DWORD_TO_OCTSTR @          F_ARGCMP @          F_ARGCPY @          F_ARGIsZero @          F_BIGTYPE @          F_BOOL @          F_BYTE @           F_BYTE_TO_CRC16_CCITT @          F_CheckSum16 @           F_CRC16_CCITT @           F_CreateHashTableHnd @          F_CreateLinkedListHnd @          F_DATA_TO_CRC16_CCITT @          F_DINT @           F_DWORD @           F_FormatArgToStr @          F_GetDayOfWeek @          F_GetDOYOfYearMonthDay @          F_GetFloatRec @          F_GetMaxMonthDays @          F_GetMonthOfDOY @          F_GetVersionTcUtilities @           F_GetWeekOfTheYear @          F_HUGE @          F_INT @           F_LARGE @          F_LREAL @           F_LTrim @          F_REAL @           F_RTrim @          F_SINT @           F_STRING @           F_SwapReal @           F_SwapRealEx @          F_ToLCase @          F_ToUCase @          F_UDINT @           F_UHUGE @          F_UINT @           F_ULARGE @          F_USINT @           F_WORD @           F_YearIsLeapYear @          FB_AddRouteEntry @          FB_AmsLogger @          FB_BasicPID @           FB_BufferedTextFileWriter @       '   FB_BufferedTextFileWriter.A_Reset @          FB_ConnectScopeServer @          FB_DbgOutputCtrl @          FB_DbgOutputCtrl.A_Log @          FB_DbgOutputCtrl.A_LogHex @          FB_DbgOutputCtrl.A_Reset @          FB_DisconnectScopeServer @          FB_EnumFindFileEntry @          FB_EnumFindFileList @          FB_EnumRouteEntry @          FB_EnumStringNumbers @          FB_FileRingBuffer @       !   FB_FileRingBuffer.A_AddTail @          FB_FileRingBuffer.A_Close @           FB_FileRingBuffer.A_Create @       !   FB_FileRingBuffer.A_GetHead @          FB_FileRingBuffer.A_Open @       $   FB_FileRingBuffer.A_RemoveHead @          FB_FileRingBuffer.A_Reset @          FB_FormatString @           FB_GetAdaptersInfo @          FB_GetHostAddrByName @          FB_GetHostName @          FB_GetLocalAmsNetId @          FB_GetRouterStatusInfo @          FB_GetTimeZoneInformation @          FB_HashTableCtrl @          FB_HashTableCtrl.A_Add @       !   FB_HashTableCtrl.A_GetFirst @       )   FB_HashTableCtrl.A_GetIndexAtPosPtr @           FB_HashTableCtrl.A_GetNext @          FB_HashTableCtrl.A_Lookup @          FB_HashTableCtrl.A_Remove @       "   FB_HashTableCtrl.A_RemoveAll @       $   FB_HashTableCtrl.A_RemoveFirst @          FB_HashTableCtrl.A_Reset @          FB_LinkedListCtrl @       &   FB_LinkedListCtrl.A_AddHeadValue @       &   FB_LinkedListCtrl.A_AddTailValue @       "   FB_LinkedListCtrl.A_FindNext @       "   FB_LinkedListCtrl.A_FindPrev @       !   FB_LinkedListCtrl.A_GetHead @       *   FB_LinkedListCtrl.A_GetIndexAtPosPtr @       !   FB_LinkedListCtrl.A_GetNext @       !   FB_LinkedListCtrl.A_GetPrev @       !   FB_LinkedListCtrl.A_GetTail @       )   FB_LinkedListCtrl.A_RemoveHeadValue @       )   FB_LinkedListCtrl.A_RemoveTailValue @       -   FB_LinkedListCtrl.A_RemoveValueAtPosPtr @          FB_LinkedListCtrl.A_Reset @       *   FB_LinkedListCtrl.A_SetValueAtPosPtr @          FB_LocalSystemTime @          FB_MemBufferMerge @          FB_MemBufferSplit @          FB_MemRingBuffer @           FB_MemRingBuffer.A_AddTail @           FB_MemRingBuffer.A_GetHead @       #   FB_MemRingBuffer.A_RemoveHead @          FB_MemRingBuffer.A_Reset @          FB_MemRingBufferEx @       "   FB_MemRingBufferEx.A_AddTail @       #   FB_MemRingBufferEx.A_FreeHead @       &   FB_MemRingBufferEx.A_GetFreeSize @       "   FB_MemRingBufferEx.A_GetHead @           FB_MemRingBufferEx.A_Reset @          FB_RegQueryValue @           FB_RegSetValue @           FB_RemoveRouteEntry @           FB_ResetScopeServerControl @          FB_SaveScopeServerData @          FB_ScopeServerControl @          FB_SetTimeZoneInformation @          FB_StartScopeServer @          FB_StopScopeServer @          FB_StringRingBuffer @       #   FB_StringRingBuffer.A_AddTail @       #   FB_StringRingBuffer.A_GetHead @       &   FB_StringRingBuffer.A_RemoveHead @       !   FB_StringRingBuffer.A_Reset @          FB_TextFileRingBuffer @       %   FB_TextFileRingBuffer.A_AddTail @       #   FB_TextFileRingBuffer.A_Close @       "   FB_TextFileRingBuffer.A_Open @       #   FB_TextFileRingBuffer.A_Reset @          FB_WritePersistentData @          FILETIME_TO_DT @          FILETIME_TO_SYSTEMTIME @          FIX16_TO_LREAL @          FIX16_TO_WORD @          FIX16Add @          FIX16Align @          FIX16Div @          FIX16Mul @          FIX16Sub @          GetRemotePCInfo @           HEXSTR_TO_DATA @          HOST_TO_BE128 @          HOST_TO_BE16 @          HOST_TO_BE32 @          HOST_TO_BE64 @          INT64_TO_LREAL @          Int64Add64 @          Int64Add64Ex @          Int64Cmp64 @          Int64Div64Ex @          Int64IsZero @          Int64Negate @          Int64Not @          Int64Sub64 @          IsFinite @          LARGE_INTEGER @          LARGE_TO_ULARGE @          LREAL_TO_FIX16 @          LREAL_TO_FMTSTR @          LREAL_TO_INT64 @          LREAL_TO_UINT64 @          NT_AbortShutdown @           NT_GetTime @           NT_Reboot @           NT_SetLocalTime @          NT_SetTimeToRTCTime @           NT_Shutdown @           NT_StartProcess @           OTSTRUCT_TO_TIME @           PBOOL_TO_BOOL @          PBYTE_TO_BYTE @          PDATE_TO_DATE @          PDINT_TO_DINT @          PDT_TO_DT @          PDWORD_TO_DWORD @          PHUGE_TO_HUGE @          PINT_TO_INT @          PLARGE_TO_LARGE @          PLC_ReadSymInfo @           PLC_ReadSymInfoByName @           PLC_Reset @           PLC_Start @           PLC_Stop @           PLREAL_TO_LREAL @          PMAXSTRING_TO_MAXSTRING @          PREAL_TO_REAL @          Profiler @           PSINT_TO_SINT @          PSTRING_TO_STRING @          PTIME_TO_TIME @          PTOD_TO_TOD @          PUDINT_TO_UDINT @          PUHUGE_TO_UHUGE @          PUINT_TO_UINT @          PUINT64_TO_UINT64 @          PULARGE_TO_ULARGE @          PUSINT_TO_USINT @          PWORD_TO_WORD @          RAD_TO_DEG @           ROUTETRANSPORT_TO_STRING @       	   RTC @          RTC_EX @          RTC_EX2 @          ScopeASCIIExport @           ScopeExit @          ScopeGetRecordLen @           ScopeGetState @           ScopeLoadFile @           ScopeManualTrigger @           ScopeSaveAs @          ScopeSetOffline @           ScopeSetOnline @           ScopeSetRecordLen @           ScopeViewExport @           STRING_TO_SYSTEMTIME @          STRING_TO_UINT64 @          SYSTEMTIME_TO_DT @           SYSTEMTIME_TO_FILETIME @          SYSTEMTIME_TO_STRING @          TC_Config @          TC_CpuUsage @           TC_Restart @           TC_Stop @           TC_SysLatency @           TIME_TO_OTSTRUCT @           UInt32x32To64 @          UINT64_TO_LREAL @          UINT64_TO_STRING @          UInt64Add64 @          UInt64Add64Ex @          UInt64And @          UInt64Cmp64 @          UInt64Div16Ex @          UInt64Div64 @          UInt64Div64Ex @          UInt64isZero @          UInt64Limit @          UInt64Max @          UInt64Min @          UInt64Mod64 @          UInt64Mul64 @          UInt64Mul64Ex @          UInt64Not @          UInt64Or @          UInt64Rol @          UInt64Ror @          UInt64Shl @          UInt64Shr @          UInt64Sub64 @          UInt64Xor @          ULARGE_INTEGER @          ULARGE_TO_LARGE @          WORD_TO_FIX16 @          WritePersistentData @              Global_Variables @              F_CreateServerHnd @      E_ConnEstablishState       E_SocketAcceptMode       E_SocketConnectionState    	   T_HSERVER       T_ThrottleTimes                   F_GetVersionTcSocketHelper @          FB_ClientServerConnection @          FB_ServerClientConnection @          FB_SocketListenEx @          FB_SocketReceiveEx @          FB_ThrottleTimer @          FB_ThrottleTimer.MaxSpeed @          FB_ThrottleTimer.MinSpeed @          FB_ThrottleTimer.SlowDown @          FB_ThrottleTimer.SpeedUp @          HSOCKET_TO_STRING @             Globale_Variablen @          z   FW_AdsClearEvents @      FW_NoOfByte       FW_SystemInfoType       FW_SystemTaskInfoType    
   FW_TcEvent                   FW_AdsLogDINT @           FW_AdsLogEvent @           FW_AdsLogLREAL @           FW_AdsLogSTR @           FW_AdsRdWrt @           FW_AdsRdWrtInd @           FW_AdsRdWrtRes @           FW_AdsRead @           FW_AdsReadDeviceInfo @           FW_AdsReadInd @           FW_AdsReadRes @           FW_AdsReadState @           FW_AdsWrite @           FW_AdsWriteControl @           FW_AdsWriteInd @           FW_AdsWriteRes @           FW_DRand @           FW_GetCpuAccount @           FW_GetCpuCounter @           FW_GetCurTaskIndex @           FW_GetSystemTime @           FW_GetVersionTcBase @           FW_LptSignal @           FW_MemCmp @           FW_MemCpy @           FW_MemMove @           FW_MemSet @           FW_PortRead @          FW_PortWrite @                 CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @              F_ADSLOGERROR @                  F_ADSLOGSTRING @          F_DataPrep @          F_ValScale @          F_ValToStr @          FB_ClientApplication @          FB_FrameStringFifo @       "   FB_FrameStringFifo.A_AddTail @       %   FB_FrameStringFifo.A_RemoveHead @           FB_FrameStringFifo.A_Reset @          FB_LocalClient @          FB_ProtErrorFifo @           FB_ProtErrorFifo.A_AddTail @       #   FB_ProtErrorFifo.A_RemoveHead @          FB_ProtErrorFifo.A_Reset @          SCODE_CODE @             Global_Variables @       L   Р  ADSCLEAREVENTS @      E_IOAccessSize    
   E_OpenPath       E_SeekOrigin       E_TcEventClass       E_TcEventClearModes       E_TcEventPriority       E_TcEventStreamType       ExpressionResult       SFCActionType       SFCStepType    
   ST_AmsAddr       SYSTEMINFOTYPE       SYSTEMTASKINFOTYPE    
   T_AmsNetId       T_AmsNetIdArr    	   T_AmsPort    
   T_IPv4Addr       T_IPv4AddrArr       T_MaxString       TcEvent                   ADSLOGDINT @           ADSLOGEVENT @           ADSLOGLREAL @           ADSLOGSTR @           ADSRDDEVINFO @           ADSRDSTATE @           ADSRDWRT @           ADSRDWRTEX @           ADSRDWRTIND @           ADSRDWRTRES @           ADSREAD @           ADSREADEX @           ADSREADIND @           ADSREADRES @           ADSWRITE @           ADSWRITEIND @           ADSWRITERES @           ADSWRTCTL @           AnalyzeExpression @          AnalyzeExpressionCombined @          AnalyzeExpressionTable @          AppendErrorString @          CLEARBIT32 @           CSETBIT32 @           DRAND @           F_CompareFwVersion @          F_CreateAmsNetId @           F_CreateIPv4Addr @          F_GetVersionTcSystem @           F_IOPortRead @          F_IOPortWrite @          F_ScanAmsNetIds @          F_ScanIPv4AddrIds @          F_SplitPathName @          F_ToASC @          F_ToCHR @          FB_CreateDir @          FB_EOF @           FB_FileClose @           FB_FileDelete @           FB_FileGets @           FB_FileOpen @           FB_FilePuts @           FB_FileRead @           FB_FileRename @           FB_FileSeek @           FB_FileTell @           FB_FileWrite @           FB_PcWatchdog @          FB_RemoveDir @          FB_SimpleAdsLogEvent @          FILECLOSE @           FILEOPEN @           FILEREAD @           FILESEEK @           FILEWRITE @           FW_CallGenericFb @          FW_CallGenericFun @          GETBIT32 @           GETCPUACCOUNT @           GETCPUCOUNTER @           GETCURTASKINDEX @           GETSYSTEMTIME @           GETTASKTIME @          LPTSIGNAL @           MEMCMP @           MEMCPY @           MEMMOVE @           MEMSET @           ROL32 @           ROR32 @           SETBIT32 @           SFCActionControl @           SHL32 @           SHR32 @              Global_Variables @              F_GetIPAddrFromStr @      E_MBFctCodes    	   ST_MBAddr       ST_MBReadWrite    
   ST_MBWrite       ST_MBWriteSingle                   F_GetVersionTcModbusSrv @          FB_MBCloseAll @          FB_MBDiagnose @           FB_MBReadCoils @           FB_MBReadInputRegs @           FB_MBReadInputs @           FB_MBReadRegs @           FB_MBReadWriteRegs @           FB_MBUdpDiagnose @          FB_MBUdpReadCoils @          FB_MBUdpReadInputRegs @          FB_MBUdpReadInputs @          FB_MBUdpReadRegs @          FB_MBUdpReadWriteRegs @          FB_MBUdpWriteCoils @          FB_MBUdpWriteRegs @          FB_MBUdpWriteSingleCoil @          FB_MBUdpWriteSingleReg @          FB_MBWriteCoils @           FB_MBWriteRegs @           FB_MBWriteSingleCoil @           FB_MBWriteSingleReg @              Globale_Variablen @        4   і   DINT_TO_EIB_4OctetSign @
      EIB_ERROR_CODE       EIB_GROUP_ADDR       EIB_GROUP_ADDR_2GROUP       EIB_GROUP_FILTER       EIB_PHYS_ADDR       EIB_PRIORITY       EIB_Read_Typ       EIB_REC       EIB_SEND       EIB_SEND_DATA                  EIB_2OCTET_FLOAT_REC @          EIB_2OCTET_FLOAT_SEND @          EIB_2OCTET_SIGN_REC @          EIB_2OCTET_SIGN_SEND @          EIB_2OCTET_UNSIGN_REC @          EIB_2OCTET_UNSIGN_SEND @          EIB_3BIT_CONTROL_REC @          EIB_3BIT_CONTROL_SEND @          EIB_4OCTET_FLOAT_REC @          EIB_4OCTET_FLOAT_SEND @          EIB_4OCTET_SIGN_REC @          EIB_4OCTET_SIGN_SEND @          EIB_4OCTET_UNSIGN_REC @          EIB_4OCTET_UNSIGN_SEND @          EIB_4OctetSign_TO_DINT @          EIB_4OctetUnsign_TO_UDINT @          EIB_8BIT_SIGN_REC @          EIB_8BIT_SIGN_SEND @          EIB_8BIT_SIGN_SEND_EX @          EIB_8BIT_UNSIGN_REC @          EIB_8BIT_UNSIGN_SEND @          EIB_8BIT_UNSIGN_SEND_EX @          EIB_ALL_DATA_TYPES_REC @          EIB_ALL_DATA_TYPES_REC_Ex @          EIB_ALL_DATA_TYPES_SEND @          EIB_BIT_CONTROL_REC @          EIB_BIT_CONTROL_SEND @          EIB_BIT_REC @          EIB_BIT_SEND @          EIB_BIT_SEND_MANUAL @          EIB_DATE_REC @          EIB_DATE_SEND @          EIB_FLOAT_TO_REAL @          EIB_READ_SEND @          EIB_STRING_TO_STRING @          EIB_TIME_REC @          EIB_TIME_SEND @       '   EIB_Two_Octet_Float_Value_TO_REAL @          F_CONV_2GROUP_TO_3GROUP @          F_CONV_3GROUP_TO_2GROUP @          KL6301 @          KL6301.Receive @          KL6301.Send @          KL6301_Professional @       !   KL6301_Professional.Receive @          KL6301_Professional.SEND @          KL6301_Version @          REAL_TO_EIB_FLOAT @       #   REAL_TO_Two_Octet_Float_Value @          STRING_TO_EIB_STRING @          UDINT_TO_EIB_4OctetUnsign @             Globale_Variablen_EIB @                       ,     \a           2 1   1            џџџџџџџџџџџџџџџџ  
             њџџџ                  јџџџ,                         POUs              	   AutoReset  л               	   CalcPower  є                
   CheckLight  ђ                   Fletcher_checksum                    KNX_Init  ю                  MAIN                      Main_EIB_REC  R                
   PeerToPeer                    POWER_OFF_TEST  ё                   ReadADS  	                  Udp_receive_packet_init                    Udp_send_packet_init    џџџџ           
   Data types                 ST_FifoEntry                    Udp_Confirm                
   Udp_Packet    џџџџ              Visualizations                 CurrentPage  ь                   GarageLight  ъ                   MainPage  №               	   PowerPage  э                   VoltagePage  ы   џџџџ              Global Variables                 Global_Variables_Power  ѕ                  Globale_Variablen                     Globale_Variablen_EIB                    TwinCAT_Configuration  щ                   Variable_Configuration  	   џџџџ                                                            6WїB                         	   localhost            P      	   localhost            P      	   localhost            P             Q