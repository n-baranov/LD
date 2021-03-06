CoDeSys+  ?         ?        BC and KL6301 @       1.00 @   2.3.10.0   RV @w   Demoproject for receive EIB Data
BC9000
KL6301
KL9010 @                                     ]?1] >   C:\TWINCAT\PLC\LIB\ @      ????????             ??C        ?%  @
   n   C:\TWINCAT\PLC\LIB\TcpIp.lib @                                                                                          F_GETVERSIONTCPIP               nVersionElement           ??                 F_GetVersionTcpIp                                     ֓?N  ?   ????           FB_SOCKETACCEPT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_ACCEPT )              	   T_AmsPort           ?                ADSRDWRT `??              fbRTrig                 R_TRIG `??              nStep         ` ??              response                ST_TcIpConnSvrResponse `??              request                ST_SockAddr `??              	   sSrvNetId           ''    
   T_AmsNetId  ??       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system	   hListener              	   T_HSOCKET  ??       x    Listener handle identifying a socket that has been placed in a listening state with the FB_SocketListen function block    bExecute            ??       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ?     ??       3    States the time before the function is cancelled.    	   bAccepted            ??
       ;    TRUE = new connection is made. FALSE = no new connection.    bBusy            ??              bError            ??              nErrId           ??              hSocket              	   T_HSOCKET  ??       V   This returned value is a handle for the socket on which the actual connection is made.            ֓?N  ?   ????           FB_SOCKETCLOSE        
   fbAdsWrite       V    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CLOSEBYHDL, SRCADDR := 0, LEN := 0 )              	   T_AmsPort           ?                   ADSWRITE `??              fbRTrig                 R_TRIG `??              nStep         ` ??              	   sSrvNetId           ''    
   T_AmsNetId  ??       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  ??       4    Local or remote client or listener socket to close.   bExecute            ??       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ?     ??       3    States the time before the function is cancelled.       bBusy            ??              bError            ??              nErrId           ??                       ֓?N  ?   ????           FB_SOCKETCLOSEALL        
   fbAdsWrite       y    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CLOSEALL, SRCADDR := 0, LEN := 0 )              	   T_AmsPort           ?                      ADSWRITE `??              fbRTrig                 R_TRIG `??              nStep         ` ??              	   sSrvNetId           ''    
   T_AmsNetId  ??       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   bExecute            ??       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ?     ??       3    States the time before the function is cancelled.       bBusy            ??	              bError            ??
              nErrId           ??                       ֓?N  ?   ????           FB_SOCKETCONNECT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CONNECT )              	   T_AmsPort           ?                ADSRDWRT `??              fbRTrig                 R_TRIG `??              nStep         ` ??              request                ST_SockAddr `??              response                ST_TcIpConnSvrResponse `??              	   sSrvNetId           ''    
   T_AmsNetId  ??       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   sRemoteHost               ??       X    Remote (server) address. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           ??       .    Remote (server) Internet Protocol (IP) port.    bExecute            ??       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ȯ     ??       3    States the time before the function is cancelled.       bBusy            ??              bError            ??              nErrId           ??              hSocket              	   T_HSOCKET  ??       V   This returned value is a handle for the socket on which the actual connection is made.            ֓?N  ?   ????           FB_SOCKETLISTEN        
   fbAdsRdWrt       ]    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_LISTEN )              	   T_AmsPort           ?                ADSRDWRT `??              fbRTrig                 R_TRIG `??              nStep         ` ??              request                ST_SockAddr `??              response                ST_TcIpConnSvrResponse `??              	   sSrvNetId           ''    
   T_AmsNetId  ??       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               ??       W    Local (server) address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           ??       -    Local (server) Internet Protocol (IP) port.    bExecute            ??       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ?     ??	       3    States the time before the function is cancelled.       bBusy            ??              bError            ??              nErrId           ??           	   hListener              	   T_HSOCKET  ??       _   This returned value is a handle for the listener socket on which the actual connection is made.            ֓?N  ?   ????           FB_SOCKETRECEIVE           fbAdsReadEx       <    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVBYHDL )              	   T_AmsPort           ?         	   ADSREADEX `??              fbRTrig                 R_TRIG `??              nStep         ` ??              	   sSrvNetId           ''    
   T_AmsNetId  ??       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  ??       ?    Handle for the socket on which the actual connection is made.    cbLen           ??       3    Contains the max. number of bytes to be received.    pDest           ??       ;    Contains the address of the buffer for the received data.    bExecute            ??       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ?     ??	       3    States the time before the function is cancelled.       bBusy            ??              bError            ??              nErrId           ??           	   nRecBytes           ??       2    Contains the number of bytes currently received.             ֓?N  ?   ????           FB_SOCKETSEND        
   fbAdsWrite       >    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDBYHDL )              	   T_AmsPort           ?           ADSWRITE `??              fbRTrig                 R_TRIG `??              nStep         ` ??              	   sSrvNetId           ''    
   T_AmsNetId  ??       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  ??       ?    Handle for the socket on which the actual connection is made.    cbLen           ??       *    Contains the number of bytes to be send.    pSrc           ??       D    Contains the address of the buffer containing the data to be send.    bExecute            ??       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ?     ??	       3    States the time before the function is cancelled.       bBusy            ??              bError            ??              nErrId           ??                       ֓?N  ?   ????           FB_SOCKETUDPCREATE        
   fbAdsRdWrt       ^    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_UDPBIND )              	   T_AmsPort           ?                ADSRDWRT `??              fbRTrig                 R_TRIG `??              nStep         ` ??              request                ST_SockAddr `??              response                ST_TcIpConnSvrResponse `??              	   sSrvNetId           ''    
   T_AmsNetId  ??       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               ??       N    Local address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           ??	       $    Local Internet Protocol (IP) port.    bExecute            ??
       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ?     ??       3    States the time before the function is cancelled.       bBusy            ??              bError            ??              nErrId           ??              hSocket              	   T_HSOCKET  ??       ?   This returned value is a handle for the bind (reserved) socket.            ֓?N  ?   ????           FB_SOCKETUDPRECEIVEFROM           fbAdsReadEx       @    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVFROMBYHDL )              	   T_AmsPort           ?         	   ADSREADEX `??              fbRTrig                 R_TRIG `??              nStep         ` ??              buffer                ST_TcIpConnSvrUdpBuffer `??              	   sSrvNetId           ''    
   T_AmsNetId  ??       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  ??       ?    Handle for the socket on which the actual connection is made.    cbLen           ??       3    Contains the max. number of bytes to be received.    pDest           ??       ;    Contains the address of the buffer for the received data.    bExecute            ??       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ?     ??	       3    States the time before the function is cancelled.       bBusy            ??              bError            ??              nErrId           ??              sRemoteHost               ??       p    Remote address from which the data was received. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           ??       G    Remote Internet Protocol (IP) port  from which the data was received. 	   nRecBytes           ??       2    Contains the number of bytes currently received.             ֓?N  ?   ????           FB_SOCKETUDPSENDTO        
   fbAdsWrite       @    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDTOBYHDL )              	   T_AmsPort           ?           ADSWRITE `??              fbRTrig                 R_TRIG `??              nStep         ` ??              buffer                ST_TcIpConnSvrUdpBuffer `??              	   sSrvNetId           ''    
   T_AmsNetId  ??       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  ??       ?    Handle for the socket on which the actual connection is made.    sRemoteHost               ??       d    Remote address of the target socket. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           ??       :    Remote Internet Protocol (IP) port of the target socket.    cbLen           ??       *    Contains the number of bytes to be send.    pSrc           ??	       D    Contains the address of the buffer containing the data to be send.    bExecute            ??
       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ?     ??       3    States the time before the function is cancelled.       bBusy            ??              bError            ??              nErrId           ??                       ֓?N  ?   ????    t   C:\TWINCAT\PLC\LIB\TcUtilities.lib @                                                                                ?       
   BCD_TO_DEC        
   RisingEdge                 R_TRIG `??                 START            ??              BIN           ??                 BUSY            ??              ERR            ??              ERRID           ??	              DOUT           ??
       ?   
	Error codes:
		0x00		: No Errors
		0x0F	: Parameter value NOT correct. Wrong BCD input value in Low Nibble.
		0xF0	: Parameter value NOT correct. Wrong BCD input value in High Nibble.
            ?"pK  ?   ????           BE128_TO_HOST               in                T_UHUGE_INTEGER  ??                 BE128_TO_HOST                T_UHUGE_INTEGER                            ?"pK  ?   ????           BE16_TO_HOST               in           ??                 BE16_TO_HOST                                     ?"pK  ?   ????           BE32_TO_HOST           parr    	                            ` ??                 in           ??                 BE32_TO_HOST                                     ?"pK  ?   ????           BE64_TO_HOST               in                T_ULARGE_INTEGER  ??                 BE64_TO_HOST                T_ULARGE_INTEGER                            ?"pK  ?   ????           BYTEARR_TO_MAXSTRING               in   	  ?                       ??                 BYTEARR_TO_MAXSTRING               T_MaxString                            ?"pK  ?   ????           DATA_TO_HEXSTR           iCase         ` ??              pCells    	  ?                          ` ??              idx         ` ??                 pData           ??           Pointer to data buffer    cbData             U              ??           Byte size of data buffer    bLoCase            ??       9    Default: use "ABCDEF", if TRUE use "abcdef" characters.       DATA_TO_HEXSTR               T_MaxString                            ?"pK  ?   ????        
   DCF77_TIME     "      DataBits   	  <                         ??              BitNo            ??              dtCurr            ??              dtNext            ??              tziCurr               E_TimeZoneID   ??       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID   ??       8    Time zone information extracted from previous telegram    tDiff            ??           Two telegram time difference    bCheck             ??              Step         ` ??!           	   StartEdge                 R_TRIG `??"              RisingPulse                 R_TRIG `??$              FallingPulse                 F_TRIG `??%           	   LongPulse                    TON `??&           
   ShortPulse                    TON `??'           
   DetectSync                    TOF `??(              NoDCFSignal                    TON `??)              DCFCycleLen                    TON `??*           	   bIsRising          ` ??,           
   bIsFalling          ` ??-              bIsLong          ` ??.              bIsShort          ` ??/              Working          ` ??0           	   DataValid          ` ??2           
   ParitySum1         ` ??3           
   ParitySum2         ` ??4           
   ParitySum3         ` ??5              i         ` ??7           	   DummyByte         ` ??8              DummyString    Q       Q  ` ??9              Hour         ` ??;              Minute         ` ??<              Year         ` ??=              Month         ` ??>              Day         ` ???              	   DCF_PULSE            ??           DCF77 pulse: 101010101...    RUN            ??       *    Enable/disable function block execution.       BUSY            ??           TRUE = Decoding in progress    ERR            ??	       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           ??
           Error code    ERRCNT           ??           Error counter    READY            ??       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           ??           date and time information             ?"pK  ?   ????           DCF77_TIME_EX     #      DataBits   	  <                         ??           Decoded data bits    BitNo            ??           Decoded bit number    dtCurr            ??       %    Time extracted from latest telegram    dtNext            ??            Supposed next time    tziCurr               E_TimeZoneID   ??!       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID   ??"       8    Time zone information extracted from previous telegram    tDiff            ??#       )    Time difference of two latest telegrams    bCheck             ??$       H    TRUE = Plausibility check over two telegrams enabled, FALSE = disabled    Step         ` ??&           	   StartEdge                 R_TRIG `??'              RisingPulse                 R_TRIG `??)              FallingPulse                 F_TRIG `??*           	   LongPulse                    TON `??+           
   ShortPulse                    TON `??,           
   DetectSync                    TOF `??-              NoDCFSignal                    TON `??.              DCFCycleLen                    TON `??/           	   bIsRising          ` ??1           
   bIsFalling          ` ??2              bIsLong          ` ??3              bIsShort          ` ??4              Working          ` ??5           	   DataValid          ` ??7           
   ParitySum1         ` ??8           
   ParitySum2         ` ??9           
   ParitySum3         ` ??:              i         ` ??<           	   DummyByte         ` ??=              DummyString    Q       Q  ` ??>              Hour         ` ??@              Minute         ` ??A              Year         ` ??B              Month         ` ??C              Day         ` ??D           	   DayOfWeek         ` ??E              	   DCF_PULSE            ??           DCF77 pulse: 101010101...    RUN            ??       *    Enable/disable function block execution.    TLP    ?      ??           Short/long pulse split point       BUSY            ??	           TRUE = Decoding in progress    ERR            ??
       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           ??           Error code    ERRCNT           ??           Error counter    READY            ??       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           ??           date and time information    DOW                         ??       0     ISO 8601 day of week: 1 = Monday.. 7 = Sunday    TZI               E_TimeZoneID  ??           time zone information    ADVTZI            ??       1    MEZ->MESZ or MESZ->MEZ time change notification    LEAPSEC            ??           TRUE = Leap second    RAWDT   	  <                        ??           Raw decoded data bits             ?"pK  ?   ????        
   DEC_TO_BCD        
   RisingEdge                 R_TRIG `??                 START            ??              DIN           ??                 BUSY            ??              ERR            ??              ERRID           ??	              BOUT           ??
       h   
	Error codes:
		0x00		: No errors
		0xFF	: Parameter value NOT correct. Wrong DECIMAL input value.
            ?"pK  ?   ????        
   DEG_TO_RAD               ANGLE                        ??              
   DEG_TO_RAD                                                  ?"pK  ?   ????           DINT_TO_DECSTR               in           ??           
   iPrecision           ??	                 DINT_TO_DECSTR               T_MaxString                            ?"pK  ?   ????           DT_TO_FILETIME           ui64                T_ULARGE_INTEGER `??                 DTIN           ??                 DT_TO_FILETIME             
   T_FILETIME                            ?"pK  ?   ????           DT_TO_SYSTEMTIME           sDT             ` ??              nDay         ` ??              b   	                 
    24(16#30)      0    ` ??              TS                   
   TIMESTRUCT `??           	   Index7001                            DTIN           ??                 DT_TO_SYSTEMTIME                   
   TIMESTRUCT                            ?"pK  ?   ????           DWORD_TO_BINSTR           bit   	                        ` ??       6    array of ASCII characters (inclusive null delimiter)    iSig         ` ??           number of significant bits    iPad         ` ??           number of padding zeros    i         ` ??           	   Index7001                            in           ??           
   iPrecision           ??                 DWORD_TO_BINSTR               T_MaxString                            ?"pK  ?   ????           DWORD_TO_DECSTR           dec   	                       ` ??       6    array of ASCII characters (inclusive null delimiter)    iSig         ` ??           number of significant nibbles    iPad         ` ??           number of padding zeros    i         ` ??              divider     ʚ; ` ??              number         ` ??           	   Index7001                            in           ??           
   iPrecision           ??                 DWORD_TO_DECSTR               T_MaxString                            ?"pK  ?   ????           DWORD_TO_HEXSTR           hex   	                       ` ??       6    array of ASCII characters (inclusive null delimiter)    iSig         ` ??           number of significant nibbles    iPad         ` ??           number of padding zeros    i         ` ??           	   Index7001                            in           ??           
   iPrecision           ??              bLoCase            ??	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       DWORD_TO_HEXSTR               T_MaxString                            ?"pK  ?   ????           DWORD_TO_OCTSTR           oct   	                       ` ??       6    array of ASCII characters (inclusive null delimiter)    iSig         ` ??           number of significant nibbles    iPad         ` ??           number of padding zeros    i         ` ??           	   Index7001                            in           ??           
   iPrecision           ??                 DWORD_TO_OCTSTR               T_MaxString                            ?"pK  ?   ????           F_ARGCMP               typeSafe            ??              arg1                 T_Arg  ??              arg2                 T_Arg  ??                 F_ARGCMP                                     ?"pK  ?   ????           F_ARGCPY               typeSafe            ??                 F_ARGCPY                               dest                  T_Arg ??
              src                  T_Arg ??                   ?"pK  ?   ????           F_ARGISZERO               arg                 T_Arg  ??                 F_ARGIsZero                                      ?"pK  ?   ????        	   F_BIGTYPE               pData           ??            Address pointer of data buffer    cbLen           ??           Byte length of data buffer    	   F_BIGTYPE                 T_Arg                            ?"pK  ?   ????           F_BOOL                   F_BOOL                 T_Arg                      in            ??                   ?"pK  ?   ????           F_BYTE                   F_BYTE                 T_Arg                      in           ??                   ?"pK  ?   ????           F_BYTE_TO_CRC16_CCITT               value           ??           Data value    crc           ??       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_BYTE_TO_CRC16_CCITT                                     ?"pK  ?   ????           F_CHECKSUM16        	   wChkSum_I         ` ??	       %    internal ChkSum                        dataWord         ` ??
       %    current data byte                      iIdx         ` ??       %    current data buffer index              ptrData               ` ??       %    pointer to current data byte           	   dwSrcAddr           ??       %    address of data buffer                 cbLen           ??       %    length of data buffer                  wChkSum           ??       %    init value (16#0000) or last ChkSum       F_CheckSum16                                     ?"pK  ?   ????           F_CRC16_CCITT           wCRC_I         ` ??
       $    internal CRC                          dataWord         ` ??       $    current data byte                     iIdx         ` ??       $    current data buffer index             ptrData               ` ??       $    pointer to current data byte          	   dwSrcAddr           ??       $    address of data buffer                cbLen           ??       $    length of data buffer                 wLastCRC           ??       $    init value (16#FFFF) or last CRC16       F_CRC16_CCITT                                     ?"pK  ?   ????           F_CREATEHASHTABLEHND           p                     T_HashTableEntry      `??              i         ` ??                 pEntries                     T_HashTableEntry       ??       C    Pointer to the first entry of hash table database (element array) 	   cbEntries           ??       ;    Byte size (length) of hash table database (element array)       F_CreateHashTableHnd                                hTable         	               T_HHASHTABLE ??           Hash table handle         ?"pK  ?   ????           F_CREATELINKEDLISTHND           p                   T_LinkedListEntry      `??           Temp. previous node    n                   T_LinkedListEntry      `??           Temp. next node    i         ` ??           loop iterator       pEntries                   T_LinkedListEntry       ??       @    Pointer to the first linked list node database (element array) 	   cbEntries           ??       <    Byte size (length) of linked list database (element array)       F_CreateLinkedListHnd                                hList         	               T_HLINKEDLIST ??           Linked list handle         ?"pK  ?   ????           F_DATA_TO_CRC16_CCITT           i         ` ??                 pData           ??           Pointer to data    cbData           ??           Length of data    crc           ??       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_DATA_TO_CRC16_CCITT                                     ?"pK  ?   ????           F_DINT                   F_DINT                 T_Arg                      in           ??                   ?"pK  ?   ????           F_DWORD                   F_DWORD                 T_Arg                      in           ??                   ?"pK  ?   ????           F_FORMATARGTOSTR     	      pOut               ` ??              longword         ` ??              double                      ` ??              single          ` ??              short         ` ??              small         ` ??              longint         ` ??              iPaddingLen         ` ??              iCurrLen         ` ??           
      bSign            ??           Sign prefix flag    bBlank            ??           Blank prefix flag    bNull            ??           Null prefix flag    bHash            ??           Hash prefix flag    bLAlign            ??       4    FALSE => Right align (default), TRUE => Left align    bWidth            ??       C    FALSE => no width padding, TRUE => blank or zeros padding enabled    iWidth           ??	           Width length parameter 
   iPrecision           ??
           Precision length parameter    eFmtType               E_TypeFieldParam  ??           Format type field parameter    arg                 T_Arg  ??           Format argument       F_FormatArgToStr                               sOut                 T_MaxString ??                   ?"pK  ?   ????           F_GETDAYOFWEEK           sysTime                   
   TIMESTRUCT `??	                 in           ??                 F_GetDayOfWeek                                     ?"pK  ?   ????           F_GETDOYOFYEARMONTHDAY           bLY          ` ??
                 wYear           ??           Year: 0..2xxx    wMonth           ??           Month 1..12    wDay           ??           Day: 1..31       F_GetDOYOfYearMonthDay                                     ?"pK  ?   ????           F_GETFLOATREC     
   	   ptrDouble    	                               ??              fValue                         ??
              fBegin                         ??              nBegin            ??              fDiv                         ??              nDig            ??              nDigit            ??              fMaxPrecision                         ??              i            ??              nLastDecDigit            ??                 fVal                        ??           
   iPrecision           ??              bRound            ??                 F_GetFloatRec              
   T_FloatRec                            ?"pK  ?   ????           F_GETMAXMONTHDAYS               wYear           ??	              wMonth           ??
                 F_GetMaxMonthDays                                     ?"pK  ?   ????           F_GETMONTHOFDOY           bLY          ` ??	              wMonth         ` ??
                 wYear           ??           Year: 0..2xxx    wDOY           ??           Year's day number: 1..366       F_GetMonthOfDOY                                     ?"pK  ?   ????           F_GETVERSIONTCUTILITIES               nVersionElement           ??       d   
	Possible nVersionElement parameter:
	1	:	major number
	2	:	minor number
	3	:	revision number
      F_GetVersionTcUtilities                                     ?"pK  ?   ????           F_GETWEEKOFTHEYEAR           date_sec         ` ??           date seconds    dow         ` ??	           day of week    year         ` ??
              KWStart         ` ??              first    ??yG ` ??              ff                      ` ??                 in           ??                 F_GetWeekOfTheYear                                     ?"pK  ?   ????           F_HUGE                   F_HUGE                 T_Arg                      in                 T_HUGE_INTEGER ??                   ?"pK  ?   ????           F_INT                   F_INT                 T_Arg                      in           ??                   ?"pK  ?   ????           F_LARGE                   F_LARGE                 T_Arg                      in                 T_LARGE_INTEGER ??                   ?"pK  ?   ????           F_LREAL                   F_LREAL                 T_Arg                      in                        ??                   ?"pK  ?   ????           F_LTRIM           pChar               ` ??              pStr                 T_MaxString      `??	                 in               T_MaxString  ??                 F_LTrim               T_MaxString                            ?"pK  ?   ????           F_REAL                   F_REAL                 T_Arg                      in            ??                   ?"pK  ?   ????           F_RTRIM           n         ` ??              pChar               ` ??	                 in               T_MaxString  ??                 F_RTrim               T_MaxString                            ?"pK  ?   ????           F_SINT                   F_SINT                 T_Arg                      in           ??                   ?"pK  ?   ????           F_STRING                   F_STRING                 T_Arg                      in                 T_MaxString ??                   ?"pK  ?   ????        
   F_SWAPREAL           pReal    	                               ??              pResult    	                               ??                 fVal            ??              
   F_SwapReal                                      ?"pK  ?   ????           F_SWAPREALEX           pIN    	                            ` ??              wSave         ` ??	                     F_SwapRealEx                                fVal            ??                   ?"pK  ?   ????        	   F_TOLCASE           pDest               ` ??              idx                 MIN_SBCS_TABLE   MAX_SBCS_TABLE ` ??	                 in               T_MaxString  ??              	   F_ToLCase               T_MaxString                            ?"pK  ?   ????        	   F_TOUCASE           pDest               ` ??              idx                 MIN_SBCS_TABLE   MAX_SBCS_TABLE ` ??	                 in               T_MaxString  ??              	   F_ToUCase               T_MaxString                            ?"pK  ?   ????           F_UDINT                   F_UDINT                 T_Arg                      in           ??                   ?"pK  ?   ????           F_UHUGE                   F_UHUGE                 T_Arg                      in                 T_UHUGE_INTEGER ??                   ?"pK  ?   ????           F_UINT                   F_UINT                 T_Arg                      in           ??                   ?"pK  ?   ????           F_ULARGE                   F_ULARGE                 T_Arg                      in                 T_ULARGE_INTEGER ??                   ?"pK  ?   ????           F_USINT                   F_USINT                 T_Arg                      in           ??                   ?"pK  ?   ????           F_WORD                   F_WORD                 T_Arg                      in           ??                   ?"pK  ?   ????           F_YEARISLEAPYEAR               wYear           ??                 F_YearIsLeapYear                                      ?"pK  ?   ????           FB_ADDROUTEENTRY        
   fbAdsWrite                          ADSWRITE `??              fbRTrig                 R_TRIG `??              nStep         ` ??           	   dataEntry                ST_AmsRouteSystemEntry `??                 sNetID            
   T_AmsNetID  ??       &    TwinCAT network address (ams net id)    stRoute                    ST_AmsRouteEntry  ??       !    Structure with route parameters    bExecute            ??       -    Rising edge starts function block execution    tTimeout    ?     ??                 bBusy            ??
              bError            ??              nErrID           ??                       ?"pK  ?   ????           FB_AMSLOGGER        
   RisingEdge                 R_TRIG `??           
   fbAdsWrite                          ADSWRITE `??              stReq                ST_AmsLoggerReq `??              nLen         ` ??                 sNetId           ''    
   T_AmsNetId  ??              eMode           AMSLOGGER_RUN       E_AmsLoggerMode  ??              sCfgFilePath           ''       T_MaxString  ??              bExecute            ??              tTimeout    ?     ??                 bBusy            ??
              bError            ??              nErrId           ??                       ?"pK  ?   ????           FB_BASICPID           fE               0.0            ??            error input					   fE_1               0.0            ??!           error input z^(-1)				   fY               0.0            ??"           control output				   fY_1               0.0            ??#           control output  z^(-1)			   fYP               0.0            ??$           P-part						   fYI               0.0            ??%           I-part						   fYI_1               0.0            ??&           I-part  z^(-1)					   fYD               0.0            ??'           D-T1-part					   fYD_1               0.0            ??(           D-T1-part  z^(-1)				   bInit            ??*       %    initialization flag for first cycle	   bIsIPart             ??+           I-part active ?				   bIsDPart             ??,           D-part active ?				   fDi               0.0            ??.           internal I param				   fDd               0.0            ??/           internal D param				   fCd               0.0            ??0           internal D param				   fCtrlCycleTimeOld               0.0            ??2              fKpOld               0.0            ??3              fTnOld               0.0            ??4              fTvOld               0.0            ??5              fTdOld               0.0            ??6                 fSetpointValue                        ??           setpoint value							   fActualValue                        ??           actual value							   bReset            ??           controller values    fCtrlCycleTime                        ??	       (    controller cycle time in seconds [s]			   fKp                        ??           proportional gain Kp	(P)					   fTn                        ??           integral gain Tn (I) [s]						   fTv                        ??       "    derivative gain Tv (D-T1) [s]				   fTd                        ??       (    derivative damping time Td (D-T1) [s]		      fCtrlOutput                        ??           controller output command				   nErrorStatus           ??       1    controller error output (0: no error; >0:error)	              nERR_NOERROR          ??           no error						   nERR_INVALIDPARAM         ??           invalid parameter				   nERR_INVALIDCYCLETIME         ??           invalid cycle time				?"pK  ?   ????           FB_BUFFEREDTEXTFILEWRITER           fbFile                               FB_TextFileRingBuffer `??           
   closeTimer                    TON `??           auto close timer    bRemove          ` ??              nStep         ` ??                 sNetId           ''    
   T_AmsNetId `??           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString `??	       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath `??
           default: Open generic file    bAppend         ` ??       )    TRUE = append lines, FALSE = not append 
   tAutoClose    ?   ` ??              tTimeout    ?   ` ??                 bBusy          ` ??              bError          ` ??              nErrID         ` ??                 fbBuffer                 FB_StringRingBuffer`??           string ring buffer         ?"pK  ?   ????           FB_CONNECTSCOPESERVER           stRecordDesc       d    (nRunMode:=0, nSopMode:=0, bStoreOnDisk:=FALSE, bUseLocalServer:=FALSE, bStartServerFromFile:=TRUE)                                #   ST_ScopeServerRecordModeDescription   ??              nState            ??              nErrorState            ??           
   fbAdsWrite                          ADSWRITE   ??              fbQueryRegistry                                 FB_RegQueryValue   ??              sScopeServerDir                ??              sScopeServerPath                ??              fbStartServer                              NT_StartProcess   ??              fbWait                    TON   ??               bTriggerServerStart            ??!              nDwellTimeCounter            ??"              nPort           27110    	   T_AmsPort  ??%                 sNetId           ''    
   T_AmsNetId  ??              bExecute            ??              sConfigFile    Q       Q    ??              tTimeout    ?     ??                 bBusy            ??              bDone            ??              bError            ??              nErrorId           ??                         Connect_IdxGrp     u    ??&          0x7500?"pK  ?   ????           FB_DBGOUTPUTCTRL           fbFormat                                     FB_FormatString `??              fbBuffer        	               FB_StringRingBuffer `??              fbFile       +    (ePath := PATH_BOOTPATH, bAppend := TRUE )                 PATH_GENERIC    
   E_OpenPath                      FB_BufferedTextFileWriter `??              buffer   	  '                   ` ??              state         ` ??              nItems         ` ??              k         ` ??               bInit         ` ??!           Hex logging    i         ` ??$              cells   	                               ` ??%              pCells                 T_MaxString      `??&              cbL1         ` ??'              cbL2         ` ??'              idx         ` ??'              pSrc1               ` ??(              pSrc2               ` ??(                 dwCtrl         ` ??       &    Debug message target: DBG_OUTPUT_LOG    sFormat           ''       T_MaxString `??           Debug message format string    arg1                 T_Arg `??           Format string argument    arg2                 T_Arg `??              arg3                 T_Arg `??	              arg4                 T_Arg `??
              arg5                 T_Arg `??              arg6                 T_Arg `??              arg7                 T_Arg `??              arg8                 T_Arg `??              arg9                 T_Arg `??              arg10                 T_Arg `??              sFilter           ''       T_MaxString `??                 bError          ` ??              nError         ` ??           	   nOverflow         ` ??                       ?"pK  ?   ????           FB_DISCONNECTSCOPESERVER        
   fbAdsWrite                          ADSWRITE   ??              nState            ??                 sNetId            
   T_AmsNetId  ??              bExecute            ??              tTimeout    ?     ??                 bBusy            ??              bDone            ??	              bError            ??
              nErrorId           ??                       ?"pK  ?   ????           FB_ENUMFINDFILEENTRY           fbRTrig                 R_TRIG `??              nStep         ` ??           
   fbAdsRdWrt       B    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_FFILEFIND )              	   T_AmsPort         ?                ADSRDWRT `??           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_CLOSEHANDLE )              	   T_AmsPort         o              ADSWRITE `??           	   dataEntry                            ST_FindFileSystemEntry `??              eFindCmd               E_EnumCmdType `??                 sNetId            
   T_AmsNetId  ??           	   sPathName               T_MaxString  ??       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType  ??           Enumerator navigation command    bExecute            ??              tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrID           ??              bEOE            ??           End of enumeration 
   stFindFile                     ST_FindFileEntry  ??           Find file entry             ?"pK  ?   ????           FB_ENUMFINDFILELIST           fbRTrig                 R_TRIG `??              nStep         ` ??              fbEnum                              FB_EnumFindFileEntry `??              cbEntry         ` ??              nEntries         ` ??              pEntry                      ST_FindFileEntry      `??                 sNetId            
   T_AmsNetId  ??           	   sPathName               T_MaxString  ??       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType  ??           Enumerator navigation command 	   pFindList           ??       &    POINTER TO ARRAY OF ST_FindFileEntry 
   cbFindList           ??       (    Byte size of ARRAY OF ST_FindFileEntry    bExecute            ??	              tTimeout    ?     ??
                 bBusy            ??              bError            ??              nErrID           ??              bEOE            ??           End of enumeration 
   nFindFiles           ??           Number of find files             ?"pK  ?   ????           FB_ENUMROUTEENTRY        	   fbAdsRead                          ADSREAD `??              fbRTrig                 R_TRIG `??              nStep         ` ??              index    ???? ` ??           	   dataEntry                ST_AmsRouteSystemEntry `??                 sNetID            
   T_AmsNetID  ??       '    TwinCAT network address (ams net id )    eCmd           eEnumCmd_First       E_EnumCmdType  ??           Enumerator navigation command    bExecute            ??       -    Rising edge starts function block execution    tTimeout    ?     ??                 bBusy            ??
              bError            ??              nErrID           ??              bEOE            ??       l    End of enumeration. This value is TRUE after the first read that attempts to read next non existing entry.    stRoute                    ST_AmsRouteEntry  ??       !    Structure with route parameters             ?"pK  ?   ????           FB_ENUMSTRINGNUMBERS           pSrc               ` ??              pDest               ` ??              pNext               ` ??              char         ` ??              state         ` ??              bEat          ` ??                 sSearch               T_MaxString  ??           Source string    eCmd           eEnumCmd_First       E_EnumCmdType  ??           Enumerator navigation command    eType           eNumGroup_Float       E_NumGroupTypes  ??           String number format type       sNumber               T_MaxString  ??           Found string number    nPos           ??	       )    <> 0 => Next scan/search start position    bEOS            ??
           TRUE = End of string             ?"pK  ?   ????           FB_FILERINGBUFFER           fbOpen                             FB_FileOpen `??              fbClose                      FB_FileClose `??              fbWrite                           FB_FileWrite `??              fbRead                            FB_FileRead `??               fbSeek                         FB_FileSeek `??!              nStep         ` ??"       X    0=idle, 1=init, 10,11=open, 20,21=seek, 30,31=read, 40,41=write, 50,51=close, 100=exit    bInit          ` ??#       5    TRUE=reading length chunk, FALSE=reading data chunk    bExit          ` ??$       O    FALSE=repeat reading/writing, TRUE=abort reading/writing, go to the exit step    bReopen          ` ??%       t    Open mode: TRUE=try to open existing file, FALSE=create new file, if open fails => try to create and open new file    bOpen          ` ??&       %    TRUE=file opened, FALSE=file closed    bGet          ` ??'       $    TRUE=get entry, FALSE=remove entry    bOW          ` ??(       b    TRUE=removing oldest entry (bOverwrite=TRUE), FALSE=don't remove oldest entry (bOverwrite=FALSE)    cbOW         ` ??)       /    Temp length of ovwerwritten length/data chunk    cbMoved         ` ??*       =    Number of successfully read/written length/data chunk bytes    ptrSaved         ` ??+       M    Seek pointer previous position (used by A_GetHead or read buffer underflow)    ptrMax         ` ??,       D    Seek pointer max. position = SIZEOF(ring buffer header) + cbBuffer    eCmd           eFileRBuffer_None       E_FileRBufferCmd `??-              eOldCmd           eFileRBuffer_None       E_FileRBufferCmd `??.                 sNetId           ''    
   T_AmsNetId  ??           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString  ??       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath  ??           default: Open generic file    nID           ??           user defined version ID    cbBuffer          ??           max. file buffer byte size 
   bOverwrite            ??	       :    FALSE = don't overwrite, TRUE = overwrite oldest entries 
   pWriteBuff           ??
       "    pointer to external write buffer 
   cbWriteLen           ??       $    byte size of external write buffer 	   pReadBuff           ??       !    pointer to external read buffer 	   cbReadLen           ??       #    byte size of external read buffer    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrID           ??       ?    ADS or function specific error codes:
	16#8000	= (File) buffer empty or overflow 
	16#8001 = (Application) buffer underflow (cbReadLen to small),  	
	16#8002	= Buffer is not opened  
	16#8003	= Invalid input parameter value    cbReturn           ??       !    number of recend read data bytes   stHeader                          ST_FileRBufferHead  ??           buffer status             ?"pK  ?   ????           FB_FORMATSTRING     	      pFormat               ` ??           pointer to the format string    pOut               ` ??           pointer to the result string 
   nRemOutLen         ` ??       $    Max remaining length of sOut buffer   bValid          ` ??       8    if set, the string character is valid format parameter    stFmt                              ST_FormatParameters `??           
   nArrayElem         ` ??           	   nArgument         ` ??              parArgs   	  
                     T_Arg              `??              sArgStr               T_MaxString `??                 sFormat               T_MaxString  ??              arg1                 T_Arg  ??              arg2                 T_Arg  ??              arg3                 T_Arg  ??              arg4                 T_Arg  ??              arg5                 T_Arg  ??              arg6                 T_Arg  ??	              arg7                 T_Arg  ??
              arg8                 T_Arg  ??              arg9                 T_Arg  ??              arg10                 T_Arg  ??                 bError            ??              nErrId           ??              sOut               T_MaxString  ??                       ?"pK  ?   ????           FB_GETADAPTERSINFO        	   fbAdsRead                          ADSREAD `??           
   fbRegQuery                                 FB_RegQueryValue `??           	   fbTrigger                 R_TRIG `??              nState         ` ??              cbInfo         ` ??              idx         ` ??              info   	                                      ST_IP_ADAPTER_INFO         `??           	   sDefaultA               T_MaxString `??                 sNetID            
   T_AmsNetId  ??              bExecute            ??              tTimeout    ?     ??                 bBusy            ??	              bError            ??
              nErrID           ??              arrAdapters   	                                    ST_IpAdapterInfo          ??              nCount           ??           Max. number of found adapters    nGet           ??       %    Number of read adapter info entries             ?"pK  ?   ????           FB_GETHOSTADDRBYNAME           fbAdsRW                          
   ADSRDWRTEX `??           	   fbTrigger                 R_TRIG `??              nState         ` ??                 sNetID            
   T_AmsNetId  ??           	   sHostName           ''       T_MaxString  ??       1    String containing host name. E.g. 'DataServer1'    bExecute            ??              tTimeout    ȯ     ??                 bBusy            ??
              bError            ??              nErrID           ??              sAddr           ''    
   T_IPv4Addr  ??       S    String containing an (Ipv4) Internet Protocol dotted address. E.g. '172.16.7.199'    arrAddr           0, 0, 0, 0       T_IPv4AddrArr  ??       C    Byte array containing an (Ipv4) Internet Protocol dotted address.             ?"pK  ?   ????           FB_GETHOSTNAME        	   fbAdsRead                          ADSREAD `??           	   fbTrigger                 R_TRIG `??              nState         ` ??                 sNetID            
   T_AmsNetId  ??              bExecute            ??              tTimeout    ?     ??                 bBusy            ??	              bError            ??
              nErrID           ??           	   sHostName               T_MaxString  ??           The local host name             ?"pK  ?   ????           FB_GETLOCALAMSNETID        
   RisingEdge                 R_TRIG `??              FallingEdge                 F_TRIG `??              fbRegQueryValue                                 FB_RegQueryValue `??              tmpBytes               T_AmsNetIdArr `??                 bExecute            ??              tTimeOut    ?     ??                 bBusy            ??              bError            ??              nErrId           ??	           
   AddrString           '0.0.0.0.0.0'    
   T_AmsNetId  ??
           	   AddrBytes           0,0,0,0,0,0       T_AmsNetIdArr  ??                       ?"pK  ?   ????           FB_GETROUTERSTATUSINFO        
   risingEdge                 R_TRIG `??              state         ` ??              adsRes   	                       ` ??           	   fbAdsRead                          ADSREAD `??                 sNetId           ''    
   T_AmsNetID  ??              bExecute            ??              tTimeout    ?     ??                 bBusy            ??              bError            ??	              nErrID           ??
              info                   ST_TcRouterStatusInfo  ??                       ?"pK  ?   ????           FB_GETTIMEZONEINFORMATION        	   fbAdsRead                          ADSREAD `??              bOldTrig          ` ??              state         ` ??              res                ST_AmsGetTimeZoneInformation `??                 sNetID           ''    
   T_AmsNetID  ??              bExecute            ??              tTimeout    ?     ??                 bBusy            ??              bError            ??	              nErrID           ??
              tzID               E_TimeZoneID  ??              tzInfo                     ST_TimeZoneInformation  ??                       ?"pK  ?   ????           FB_HASHTABLECTRL           p                     T_HashTableEntry      `??              n                     T_HashTableEntry      `??              nHash         ` ??                 key           ??       d    Entry key: used by A_Lookup, A_Remove method, the key.lookup variable is also used by A_Add method    putValue           ??           Entry value 	   putPosPtr                     T_HashTableEntry       ??	                 bOk            ??           TRUE = success, FALSE = error    getValue           ??           	   getPosPtr                     T_HashTableEntry       ??       R    returned by A_GetFirstEntry, A_GetNextEntry, A_Add, A_Lookup and A_Remove method       hTable         	               T_HHASHTABLE ??           Hash table handle variable         ?"pK  ?   ????           FB_LINKEDLISTCTRL           p                   T_LinkedListEntry      `??           Temp. previous node    n                   T_LinkedListEntry      `??           Temp. next node       putValue           ??           Linked list node value 	   putPosPtr                   T_LinkedListEntry       ??           Linked list node pointer       bOk            ??           TRUE = success, FALSE = error    getValue           ??           Linked list node value 	   getPosPtr                   T_LinkedListEntry       ??           Linked list node pointer       hList         	               T_HLINKEDLIST ??           Linked list table handle         ?"pK  ?   ????           FB_LOCALSYSTEMTIME     	      rtrig                 R_TRIG `??              state         ` ??              fbNT        	            
   NT_GetTime `??              fbTZ                          FB_GetTimeZoneInformation `??              fbSET                           NT_SetTimeToRTCTime `??              fbRTC                             RTC_EX2 `??              timer                    TON `??              nSync         ` ??              bNotSup          ` ??                 sNetID           ''    
   T_AmsNetID  ??       +    The target TwinCAT system network address    bEnable            ??       `    Enable/start cyclic time synchronisation (output is synchronized to Local Windows System Time)    dwCycle           ?Q            ??       &    Time synchronisation cycle (seconds)    dwOpt          ??       R    Additional option flags: If bit 0 is set => Synchronize Windows Time to RTC time    tTimeout    ?     ??       J    Max. ADS function block execution time (internal communication timeout).       bValid            ??       \    TRUE => The systemTime and tzID output is valid, FALSE => systemTime and tzID is not valid 
   systemTime                   
   TIMESTRUCT  ??       "    Local Windows System Time struct    tzID           eTimeZoneID_Invalid       E_TimeZoneID  ??       )    Daylight/standard time zone information             ?"pK  ?   ????           FB_MEMBUFFERMERGE           pDest         ` ??              cbDest         ` ??                 eCmd           eEnumCmd_First       E_EnumCmdType  ??              pBuffer           ??           Pointer to destination buffer    cbBuffer           ??       &    Max. byte size of destination buffer    pSegment           ??       .    Pointer to data segment (optional, may be 0) 	   cbSegment           ??       -    Number of data segments (optional, may be 0)      bOk            ??       M    TRUE => Successfull, FALSE => End of enumeration or invalid input parameter    cbSize           ??           Data buffer fill state             ?"pK  ?   ????           FB_MEMBUFFERSPLIT           pSrc         ` ??              cbSrc         ` ??                 eCmd           eEnumCmd_First       E_EnumCmdType  ??              pBuffer           ??           Pointer to source data buffer    cbBuffer           ??       !    Byte size of source data buffer    cbSize           ??           Max. segment byte size       bOk            ??
       N    TRUE => Successfull, FALSE => End of segmentation or invalid input parameter    pSegment           ??           Pointer to data segment 	   cbSegment           ??           Byte size of data segment    bEOS            ??       7    TRUE = End/last segment, FALSE = Next segment follows             ?"pK  ?   ????           FB_MEMRINGBUFFER           idxLast         ` ??            byte index of last buffer byte    idxFirst         ` ??       "    byte buffer of first buffer byte    idxGet         ` ??              pTmp         ` ??              cbTmp         ` ??              cbCopied         ` ??                 pWrite           ??           pointer to write data    cbWrite           ??           byte size of write data    pRead           ??	           pointer to read data buffer    cbRead           ??
           byte size of read data buffer    pBuffer           ??       #    pointer to ring buffer data bytes    cbBuffer           ??           max. ring buffer byte size       bOk            ??       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    nCount           ??           number of fifo entries    cbSize           ??       "    current byte length of fifo data    cbReturn           ??       ?    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             ?"pK  ?   ????           FB_MEMRINGBUFFEREX           idxLast         ` ??       *    byte index of last (newest) buffer entry    idxFirst         ` ??       +    byte index of first (oldest) buffer entry    idxGet         ` ??           temporary index    idxEnd         ` ??       "    index of unused/free end segment    cbEnd         ` ??       &    byte size of unused/free end segment    cbAdd         ` ??!                 pWrite           ??           pointer to write data    cbWrite           ??           byte size of write data    pBuffer           ??       #    pointer to ring buffer data bytes    cbBuffer           ??           max. ring buffer byte size       bOk            ??       W    TRUE = new entry added or get, freed succesfully, FALSE = fifo overflow or fifo empty    pRead           ??       (    A_GetHead returns pointer to read data    cbRead           ??       *    A_GetHead returns byte size of read data    nCount           ??           number of fifo entries    cbSize           ??       "    current byte length of fifo data    cbFree           ??            biggest available free segment             ?"pK  ?   ????           FB_REGQUERYVALUE           fbAdsRdWrtEx                          
   ADSRDWRTEX `??              bExecOld          ` ??              bBusyOld          ` ??              s1Len         ` ??              s2Len         ` ??              ptr         ` ??              cbBuff         ` ??              tmpBuff                ST_HKeySrvRead `??                 sNetId            
   T_AmsNetId  ??           ams net id    sSubKey               T_MaxString  ??           sub key name    sValName               T_MaxString  ??           value name    cbData           ??           number of data bytes to read    pData           ??       $    points to registry key data buffer    bExecute            ??           control input    tTimeOut    ?     ??	                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??       '    number of succesfully read data bytes             ?"pK  ?   ????           FB_REGSETVALUE        
   fbAdsWrite                          ADSWRITE `??              bExecOld          ` ??              bBusyOld          ` ??              s1Len         ` ??              s2Len         ` ??              s3Len         ` ??              ptr         ` ??              nType         ` ??              cbBuff         ` ??              cbRealWrite         ` ??              tmpBuff                  ST_HKeySrvWrite `??                 sNetId            
   T_AmsNetId  ??           ams net id    sSubKey               T_MaxString  ??              sValName               T_MaxString  ??           value name    eValType               E_RegValueType  ??              cbData           ??           size of value data in bytes    pData           ??           pointer to value data buffer   bExecute            ??	           control input    tTimeOut    ?     ??
                 bBusy            ??              bError            ??              nErrId           ??              cbWrite           ??                       ?"pK  ?   ????           FB_REMOVEROUTEENTRY        
   fbAdsWrite                          ADSWRITE `??                 sNetID            
   T_AmsNetID  ??       '    TwinCAT network address (ams net id )    sName                 ??           Route name as string    bExecute            ??       -    Rising edge starts function block execution    tTimeout    ?     ??                 bBusy            ??
              bError            ??              nErrID           ??                       ?"pK  ?   ????           FB_RESETSCOPESERVERCONTROL        
   fbAdsWrite                          ADSWRITE   ??              nState            ??                 sNetId            
   T_AmsNetId  ??              bExecute            ??              tTimeout    ?     ??                 bBusy            ??              bDone            ??	              bError            ??
              nErrorId           ??                       ?"pK  ?   ????           FB_SAVESCOPESERVERDATA           nState            ??           
   fbAdsWrite                          ADSWRITE   ??                 sNetId            
   T_AmsNetId  ??              bExecute            ??           	   sSaveFile    Q       Q    ??              tTimeout    ?     ??                 bBusy            ??	              bDone            ??
              bError            ??              nErrorId           ??                       ?"pK  ?   ????           FB_SCOPESERVERCONTROL           eCurrentState           SCOPE_SERVER_IDLE       E_ScopeServerState   ??           	   fbConnect                                  FB_ConnectScopeServer   ??              fbStart        
                FB_StartScopeServer   ??              fbStop        
                FB_StopScopeServer   ??              fbSave        
                FB_SaveScopeServerData   ??              fbDisconnect        	               FB_DisconnectScopeServer   ??              fbReset        	               FB_ResetScopeServerControl   ??                  sNetId            
   T_AmsNetId  ??           	   eReqState               E_ScopeServerState  ??              sConfigFile    Q       Q    ??           	   sSaveFile    Q       Q    ??              tTimeout    ?     ??                 bBusy            ??              bDone            ??              bError            ??              nErrorId           ??                       ?"pK  ?   ????           FB_SETTIMEZONEINFORMATION        
   fbAdsWrite                          ADSWRITE `??              bOldTrig          ` ??              state         ` ??              req                ST_AmsGetTimeZoneInformation `??                 sNetID           ''    
   T_AmsNetID  ??              tzInfo       ]   ( (*West Euoropa Standard Time *)
					bias:=-60,
					standardName:='W. Europe Standard Time',
					standardDate:=(wYear:=0, wMonth:=10, wDayOfWeek:=0, wDay:=5, wHour:=3),
					standardBias:=0,
					daylightName:='W. Europe Daylight Time',
					daylightDate:=(wYear:=0, wMonth:=3, wDayOfWeek:=0, wDay:=5, wHour:=2),
					daylightBias:=-60 )    ????        W. Europe Standard Time                
   TIMESTRUCT             
                                W. Europe Daylight Time                
   TIMESTRUCT                                 ????   ST_TimeZoneInformation  ??              bExecute            ??              tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrID           ??                       ?"pK  ?   ????           FB_STARTSCOPESERVER           nState            ??           
   fbAdsWrite                          ADSWRITE   ??              nDummy   	                    0,0                     ??                 sNetId            
   T_AmsNetId  ??              bExecute            ??              tTimeout    ?     ??                 bBusy            ??              bDone            ??	              bError            ??
              nErrorId           ??                       ?"pK  ?   ????           FB_STOPSCOPESERVER           nState            ??           
   fbAdsWrite                          ADSWRITE   ??              nDummy   	                    0,0                     ??                 sNetId            
   T_AmsNetId  ??              bExecute            ??              tTimeout    ?     ??                 bBusy            ??              bDone            ??	              bError            ??
              nErrorId           ??                       ?"pK  ?   ????           FB_STRINGRINGBUFFER           fbBuffer                              FB_MemRingBuffer `??       4    Internal (low level) buffer control function block    
   bOverwrite            ??       8    TRUE = overwrite oldest entry, FALSE = don't overwrite    putValue           ''       T_MaxString  ??       %    String to add (write) to the buffer    pBuffer           ??	       #    Pointer to ring buffer data bytes    cbBuffer           ??
           Max. ring buffer byte size       bOk            ??       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    getValue           ''       T_MaxString  ??       #    String removed (read) from buffer    nCount           ??           Number of fifo entries    cbSize           ??       "    Current byte length of fifo data             ?"pK  ?   ????           FB_TEXTFILERINGBUFFER           fbOpen                             FB_FileOpen `??              fbClose                      FB_FileClose `??              fbPuts                         FB_FilePuts `??              nStep         ` ??       @    0=idle, 1=init, 10,11=open, 40,41=write, 50,51=close, 100=exit    eCmd           eFileRBuffer_None       E_FileRBufferCmd `??                 sNetId           ''    
   T_AmsNetId `??           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString `??       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath `??           default: Open generic file    bAppend         ` ??       #    TRUE = append, FALSE = not append    putLine           ''       T_MaxString `??	              cbBuffer        ` ??
       5    max. file buffer byte size(RESERVED for future use)    tTimeout    ?   ` ??                 bBusy          ` ??              bError          ` ??              nErrID         ` ??              bOpened          ` ??       )    TRUE = file opened, FALSE = file closed    getLine           ''       T_MaxString `??                       ?"pK  ?   ????           FB_WRITEPERSISTENTDATA        
   ADSWRTCTL1                       	   ADSWRTCTL `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              PORT           ??              START            ??              TMOUT    ?     ??              MODE               E_PersistentMode  ??       D    =SPDM_2PASS: optimized boost; =SPDM_VAR_BOOST: boost per variable;       BUSY            ??
              ERR            ??              ERRID           ??                       ?"pK  ?   ????           FILETIME_TO_DT           ui64                T_ULARGE_INTEGER `??	                 fileTime             
   T_FILETIME  ??           Windows file time.       FILETIME_TO_DT                                     ?"pK  ?   ????           FILETIME_TO_SYSTEMTIME     	      D         ` ??              M         ` ??              Y         ` ??           
   uiPastDays                T_ULARGE_INTEGER `??	              uiPastYears                T_ULARGE_INTEGER `??
              uiRemainder                T_ULARGE_INTEGER `??           
   dwPastDays         ` ??              dwPastYears         ` ??           
   dwYearDays         ` ??                 fileTime             
   T_FILETIME  ??                 FILETIME_TO_SYSTEMTIME                   
   TIMESTRUCT                            ?"pK  ?   ????           FIX16_TO_LREAL               in                 T_FIX16  ??                 FIX16_TO_LREAL                                                  ?"pK  ?   ????           FIX16_TO_WORD               in                 T_FIX16  ??           16 bit fixed point number       FIX16_TO_WORD                                     ?"pK  ?   ????           FIX16ADD               augend                 T_FIX16  ??              addend                 T_FIX16  ??                 FIX16Add                 T_FIX16                            ?"pK  ?   ????        
   FIX16ALIGN               in                 T_FIX16  ??       #    16 bit signed fixed point number.    n                           ??       ,    Number of fractional bits (decimal places)    
   FIX16Align                 T_FIX16                            ?"pK  ?   ????           FIX16DIV           tmpA         ` ??	                 dividend                 T_FIX16  ??              divisor                 T_FIX16  ??                 FIX16Div                 T_FIX16                            ?"pK  ?   ????           FIX16MUL           tmp         ` ??	                 multiA                 T_FIX16  ??              multiB                 T_FIX16  ??                 FIX16Mul                 T_FIX16                            ?"pK  ?   ????           FIX16SUB               minuend                 T_FIX16  ??           
   subtrahend                 T_FIX16  ??                 FIX16Sub                 T_FIX16                            ?"pK  ?   ????           GETREMOTEPCINFO           ADSREAD1                          ADSREAD `??           
   RisingEdge                 R_TRIG `??              FallingEdge                 F_TRIG `??           
   RouterInfo   	  c            
                ROUTERINFOSTRUCT         `??              iIndex         ` ??              tmpNetId            
   T_AmsNetId `??              idx         ` ??                 NETID            
   T_AmsNetId  ??       D    Target NetID, usually left as empty string for reading local infos    START            ??           Rising edge starts the FB   TMOUT    ?     ??       1    Set Timeout according to local or remote access       BUSY            ??	       
    Ads busy    ERR            ??
           Ads error    ERRID           ??           Ads Error    RemotePCInfo               REMOTEPCINFOSTRUCT  ??       N    field with all NetID?s and PC names found in router, ordered as router gives             ?"pK  ?   ????           HEXSTR_TO_DATA           pSrc               ` ??
              pDest               ` ??              ascii         ` ??              nibble         ` ??              bAdd          ` ??              bLN          ` ??           hi/lo nibble       sHex               T_MaxString  ??           Hex string to convert    pData           ??           Pointer to destination buffer    cbData           ??       !    Byte size of destination buffer       HEXSTR_TO_DATA                                     ?"pK  ?   ????           HOST_TO_BE128               in                T_UHUGE_INTEGER  ??                 HOST_TO_BE128                T_UHUGE_INTEGER                            ?"pK  ?   ????           HOST_TO_BE16               in           ??                 HOST_TO_BE16                                     ?"pK  ?   ????           HOST_TO_BE32           parr    	                            ` ??                 in           ??                 HOST_TO_BE32                                     ?"pK  ?   ????           HOST_TO_BE64               in                T_ULARGE_INTEGER  ??                 HOST_TO_BE64                T_ULARGE_INTEGER                            ?"pK  ?   ????           INT64_TO_LREAL               in                T_LARGE_INTEGER  ??                 INT64_TO_LREAL                                                  ?"pK  ?   ????        
   INT64ADD64           bOV          ` ??	                 i64a                T_LARGE_INTEGER  ??              i64b                T_LARGE_INTEGER  ??              
   Int64Add64                T_LARGE_INTEGER                            ?"pK  ?   ????           INT64ADD64EX               augend                T_LARGE_INTEGER  ??              addend                T_LARGE_INTEGER  ??                 Int64Add64Ex                T_LARGE_INTEGER                      bOV            ??       3    TRUE => arithmetic overflow, FALSE => no overflow         ?"pK  ?   ????        
   INT64CMP64               i64a                T_LARGE_INTEGER  ??              i64b                T_LARGE_INTEGER  ??	              
   Int64Cmp64                                     ?"pK  ?   ????           INT64DIV64EX           bIsNegative          ` ??           
   sRemainder                T_ULARGE_INTEGER `??                 dividend                T_LARGE_INTEGER  ??              divisor                T_LARGE_INTEGER  ??                 Int64Div64Ex                T_LARGE_INTEGER                   	   remainder                 T_LARGE_INTEGER ??                   ?"pK  ?   ????           INT64ISZERO               i64                T_LARGE_INTEGER  ??                 Int64IsZero                                      ?"pK  ?   ????           INT64NEGATE               i64                T_LARGE_INTEGER  ??                 Int64Negate                T_LARGE_INTEGER                            ?"pK  ?   ????           INT64NOT               i64                T_LARGE_INTEGER  ??                 Int64Not                T_LARGE_INTEGER                            ?"pK  ?   ????        
   INT64SUB64               i64a                T_LARGE_INTEGER  ??       	    minuend    i64b                T_LARGE_INTEGER  ??           substrahend    
   Int64Sub64                T_LARGE_INTEGER                            ?"pK  ?   ????           ISFINITE        	   ptrDouble    	                            ` ??           	   ptrSingle               ` ??	                 x                 T_ARG  ??                 IsFinite                                      ?"pK  ?   ????           LARGE_INTEGER            
   dwHighPart           ??           	   dwLowPart           ??                 LARGE_INTEGER                T_LARGE_INTEGER                            ?"pK  ?   ????           LARGE_TO_ULARGE               in                T_LARGE_INTEGER  ??                 LARGE_TO_ULARGE                T_ULARGE_INTEGER                            ?"pK  ?   ????           LREAL_TO_FIX16               in                        ??           LREAL number to convert    n                          ??       ,    Number of fractional bits (decimal places)       LREAL_TO_FIX16                 T_FIX16                            ?"pK  ?   ????           LREAL_TO_FMTSTR           rec              
   T_FloatRec `??              pOut               ` ??              iStart         ` ??              iEnd         ` ??              i         ` ??                 in                        ??
           
   iPrecision           ??              bRound            ??                 LREAL_TO_FMTSTR    ?      ?                             ?"pK  ?   ????           LREAL_TO_INT64               in                        ??                 LREAL_TO_INT64                T_LARGE_INTEGER                            ?"pK  ?   ????           LREAL_TO_UINT64           tmp                      ` ??                 in                        ??                 LREAL_TO_UINT64                T_ULARGE_INTEGER                            ?"pK  ?   ????           NT_ABORTSHUTDOWN        
   ADSWRTCTL1                       	   ADSWRTCTL `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              START            ??              TMOUT    ?     ??                 BUSY            ??              ERR            ??	              ERRID           ??
                       ?"pK  ?   ????        
   NT_GETTIME           ADSREAD1                          ADSREAD `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              START            ??              TMOUT    ?     ??                 BUSY            ??              ERR            ??	              ERRID           ??
              TIMESTR                   
   TIMESTRUCT  ??                       ?"pK  ?   ????        	   NT_REBOOT        
   ADSWRTCTL1                       	   ADSWRTCTL `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              DELAY           ??              START            ??              TMOUT    ?     ??                 BUSY            ??	              ERR            ??
              ERRID           ??                       ?"pK  ?   ????           NT_SETLOCALTIME        
   fbAdsWrite                          ADSWRITE `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              TIMESTR                   
   TIMESTRUCT  ??           new local system time    START            ??       4    rising edge activates the function block execution    TMOUT    ?     ??                 BUSY            ??	              ERR            ??
              ERRID           ??                       ?"pK  ?   ????           NT_SETTIMETORTCTIME        
   fbAdsWrite                          ADSWRITE `??           
   fbRegQuery                                 FB_RegQueryValue `??           
   RisingEdge                 R_TRIG `??              bTmp         ` ??              state         ` ??              bInit         ` ??           	   numOfCPUs         ` ??                 NETID            
   T_AmsNetId  ??              SET            ??       3    rising edge on this input starts the fb execution    TMOUT    ?     ??                 BUSY            ??              ERR            ??	              ERRID           ??
                       ?"pK  ?   ????           NT_SHUTDOWN        
   ADSWRTCTL1                       	   ADSWRTCTL `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              DELAY           ??              START            ??              TMOUT    ?     ??                 BUSY            ??	              ERR            ??
              ERRID           ??                       ?"pK  ?   ????           NT_STARTPROCESS        	   ADSWRITE1                          ADSWRITE `??           
   RisingEdge                 R_TRIG `??              FallingEdge                 F_TRIG `??              LenPath         ` ??              LenDir         ` ??           
   LenComLine         ` ??              pData                  STARTPROC_BUFFER `??           data buffer       NETID            
   T_AmsNetId  ??              PATHSTR               T_MaxString  ??              DIRNAME               T_MaxString  ??           	   COMNDLINE               T_MaxString  ??              START            ??              TMOUT    ?     ??                 BUSY            ??              ERR            ??              ERRID           ??                       ?"pK  ?   ????           OTSTRUCT_TO_TIME           tmpMilli         ` ??                 OTIN                    OTSTRUCT  ??                 OTSTRUCT_TO_TIME                                     ?"pK  ?   ????           PBOOL_TO_BOOL               in                  ??                 PBOOL_TO_BOOL                                      ?"pK  ?   ????           PBYTE_TO_BYTE               in                 ??                 PBYTE_TO_BYTE                                     ?"pK  ?   ????           PDATE_TO_DATE               in                 ??                 PDATE_TO_DATE                                     ?"pK  ?   ????           PDINT_TO_DINT               in                 ??                 PDINT_TO_DINT                                     ?"pK  ?   ????        	   PDT_TO_DT               in                 ??              	   PDT_TO_DT                                     ?"pK  ?   ????           PDWORD_TO_DWORD               in                 ??                 PDWORD_TO_DWORD                                     ?"pK  ?   ????           PHUGE_TO_HUGE               in                 T_HUGE_INTEGER       ??                 PHUGE_TO_HUGE                T_HUGE_INTEGER                            ?"pK  ?   ????           PINT_TO_INT               in                 ??                 PINT_TO_INT                                     ?"pK  ?   ????           PLARGE_TO_LARGE               in                 T_LARGE_INTEGER       ??                 PLARGE_TO_LARGE                T_LARGE_INTEGER                            ?"pK  ?   ????           PLC_READSYMINFO           ADSREAD1                          ADSREAD `??           
   RisingEdge                 R_TRIG `??              SymInfoStruct   	                       ` ??                 NETID            
   T_AmsNetId  ??              PORT           ??              START            ??              TMOUT    ?     ??                 BUSY            ??	              ERR            ??
              ERRID           ??              SYMCOUNT           ??              SYMSIZE           ??                       ?"pK  ?   ????           PLC_READSYMINFOBYNAME        	   ADSRDWRT1                            ADSRDWRT `??           
   RisingEdge                 R_TRIG `??              FallingEdge                 F_TRIG `??              symInfoBuffer                           SYMINFO_BUFFER `??           
   nameLength         ` ??           
   typeLength         ` ??              commentLength         ` ??                 NETID            
   T_AmsNetId  ??              PORT           ??              SYMNAME               T_MaxString  ??              START            ??              TMOUT    ?     ??                 BUSY            ??
              ERR            ??              ERRID           ??              SymInfo                     SYMINFOSTRUCT  ??                       ?"pK  ?   ????        	   PLC_RESET        
   ADSWRTCTL1                       	   ADSWRTCTL `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              PORT           ??              RESET            ??              TMOUT    ?     ??                 BUSY            ??	              ERR            ??
              ERRID           ??                       ?"pK  ?   ????        	   PLC_START        
   ADSWRTCTL1                       	   ADSWRTCTL `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              PORT           ??              START            ??              TMOUT    ?     ??                 BUSY            ??	              ERR            ??
              ERRID           ??                       ?"pK  ?   ????           PLC_STOP        
   ADSWRTCTL1                       	   ADSWRTCTL `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              PORT           ??              STOP            ??              TMOUT    ?     ??                 BUSY            ??	              ERR            ??
              ERRID           ??                       ?"pK  ?   ????           PLREAL_TO_LREAL               in                              ??                 PLREAL_TO_LREAL                                                  ?"pK  ?   ????           PMAXSTRING_TO_MAXSTRING               in                 T_MaxString       ??                 PMAXSTRING_TO_MAXSTRING               T_MaxString                            ?"pK  ?   ????           PREAL_TO_REAL               in                  ??                 PREAL_TO_REAL                                      ?"pK  ?   ????           PROFILER     	      RisingEdgeStart                 R_TRIG `??              RisingEdgeReset                 R_TRIG `??              FallingEdgeStart                 F_TRIG `??              GETCPUACCOUNT1                GETCPUACCOUNT `??              OldCpuCntDW         ` ??              MeasureData   	  d                     ` ??              TimeSum         ` ??              MaxData        ` ??              idx         ` ??                 START            ??       0   rising edge starts measurement and falling stops   RESET            ??                 BUSY            ??              DATA                   PROFILERSTRUCT  ??                         MAX_DATABUFF_SIZE    d   @ ??           ?"pK  ?   ????           PSINT_TO_SINT               in                 ??                 PSINT_TO_SINT                                     ?"pK  ?   ????           PSTRING_TO_STRING               in     Q       Q         ??                 PSTRING_TO_STRING    Q       Q                              ?"pK  ?   ????           PTIME_TO_TIME               in                 ??                 PTIME_TO_TIME                                     ?"pK  ?   ????           PTOD_TO_TOD               in                 ??                 PTOD_TO_TOD                                     ?"pK  ?   ????           PUDINT_TO_UDINT               in                 ??                 PUDINT_TO_UDINT                                     ?"pK  ?   ????           PUHUGE_TO_UHUGE               in                 T_UHUGE_INTEGER       ??                 PUHUGE_TO_UHUGE                T_UHUGE_INTEGER                            ?"pK  ?   ????           PUINT64_TO_UINT64               in                 T_ULARGE_INTEGER       ??                 PUINT64_TO_UINT64                T_ULARGE_INTEGER                            ?"pK  ?   ????           PUINT_TO_UINT               in                 ??                 PUINT_TO_UINT                                     ?"pK  ?   ????           PULARGE_TO_ULARGE               in                 T_ULARGE_INTEGER       ??                 PULARGE_TO_ULARGE                T_ULARGE_INTEGER                            ?"pK  ?   ????           PUSINT_TO_USINT               in                 ??                 PUSINT_TO_USINT                                     ?"pK  ?   ????           PWORD_TO_WORD               in                 ??                 PWORD_TO_WORD                                     ?"pK  ?   ????        
   RAD_TO_DEG               ANGLE                        ??              
   RAD_TO_DEG                                                  ?"pK  ?   ????           ROUTETRANSPORT_TO_STRING               eType               E_RouteTransportType  ??                 ROUTETRANSPORT_TO_STRING    Q       Q                              ?"pK  ?   ????           RTC           fbGetCpuCounter                 GETCPUCOUNTER `??           
   risingEdge                 R_TRIG `??              oldTick         ` ??              currTick         ` ??              nanoDiff         ` ??              nanoRest         ` ??              secDiff         ` ??              init         ` ??                 EN            ??              PDT           ??                 Q            ??              CDT           ??	                       ?"pK  ?   ????           RTC_EX           fbGetCpuCounter                 GETCPUCOUNTER `??           
   risingEdge                 R_TRIG `??              oldTick         ` ??              currTick         ` ??              nanoDiff         ` ??              nanoRest         ` ??              secDiff         ` ??              init         ` ??                 EN            ??              PDT           ??              PMSEK           ??                 Q            ??	              CDT           ??
              CMSEK           ??                       ?"pK  ?   ????           RTC_EX2     	      fbGetCpuCounter                 GETCPUCOUNTER `??           
   risingEdge                 R_TRIG `??              oldTick         ` ??              currTick         ` ??              nanoDiff         ` ??              nanoRest         ` ??              secDiff         ` ??              dateTime         ` ??              init         ` ??                 EN            ??              PDT                   
   TIMESTRUCT  ??              PMICRO           ??                 Q            ??	              CDT       ;    ( wYear := 1970, wMonth := 1, wDay := 1, wDayOfWeek := 4 )    ?                  
   TIMESTRUCT  ??
              CMICRO           ??                       ?"pK  ?   ????           SCOPEASCIIEXPORT        
   fbAdsWrite                          ADSWRITE   ??                 bExecute            ??           	   sFilePath               T_MaxString  ??              tTimeout    ?     ??                 bBusy            ??              bError            ??	              iErrorId           ??
                       ?"pK  ?   ????        	   SCOPEEXIT        
   fbAdsWrite                          ADSWRITE   ??           
   RisingEdge                 R_TRIG   ??              step            ??              fbDelay                    TON   ??                 bExecute            ??       -    Rising edge starts function block execution    tTimeOut    ?     ??       >    Maximum time allowed for the execution of the function block       bBusy            ??              bError            ??              iErrorId           ??	                       ?"pK  ?   ????           SCOPEGETRECORDLEN        	   fbAdsRead                          ADSREAD   ??                 bExecute            ??                 bBusy            ??              bError            ??              iErrorId           ??           
   fRecordLen                        ??	                       ?"pK  ?   ????           SCOPEGETSTATE        	   fbAdsRead                          ADSREAD   ??              State            ??                 bExecute            ??                 bBusy            ??              bError            ??              iErrorId           ??              bOnline            ??	                       ?"pK  ?   ????           SCOPELOADFILE        
   fbAdsWrite                          ADSWRITE   ??                 bExecute            ??           	   sFilePath               T_MaxString  ??              tTimeout    ?     ??                 bBusy            ??              bError            ??	              iErrorId           ??
                       ?"pK  ?   ????           SCOPEMANUALTRIGGER        
   fbAdsWrite                          ADSWRITE   ??                 bExecute            ??                 bBusy            ??              bError            ??              iErrorId           ??                       ?"pK  ?   ????           SCOPESAVEAS        
   RisingEdge                 R_TRIG   ??           
   fbAdsWrite                          ADSWRITE   ??              step            ??                 bExecute            ??       -    Rising edge starts function block execution 	   sFilePath               T_MaxString  ??           e.g. c:\Axis1.scp   tTimeout    ?     ??       >    Maximum time allowed for the execution of the function block       bBusy            ??              bError            ??	              iErrorId           ??
                       ?"pK  ?   ????           SCOPESETOFFLINE        
   fbAdsWrite                          ADSWRITE   ??                 bExecute            ??                 bBusy            ??              bError            ??              iErrorId           ??                       ?"pK  ?   ????           SCOPESETONLINE        
   fbAdsWrite                          ADSWRITE   ??                 bExecute            ??                 bBusy            ??              bError            ??              iErrorId           ??                       ?"pK  ?   ????           SCOPESETRECORDLEN        
   fbAdsWrite                          ADSWRITE   ??                 bExecute            ??           
   fRecordLen                        ??                 bBusy            ??              bError            ??              iErrorId           ??	                       ?"pK  ?   ????           SCOPEVIEWEXPORT        
   fbAdsWrite                          ADSWRITE   ??                 bExecute            ??           	   sFilePath               T_MaxString  ??              tTimeout    ?     ??                 bBusy            ??              bError            ??	              iErrorId           ??
                       ?"pK  ?   ????           STRING_TO_SYSTEMTIME           b   	                 ?   16#31, 16#36, 16#30, 16#31, 	(* year 1601 *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* month *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* day *)
								16#2D(*-*), 16#30, 16#30(*00*),	(* hour *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* minute *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* second *)
								16#2E(*.*), 16#30, 16#30, 16#30(*000*), (* milliseconds *)
								16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` ??           null delimiter    ts       *    ( wYear := 1601, wMonth := 1, wDay := 1 )    A               
   TIMESTRUCT `??              n         ` ??              bFmt          ` ??              dwYears         ` ??              dwDays         ` ??           	   Index7001                            in               ??       1    Input string, format: '2007-03-05-17:35:09.223'       STRING_TO_SYSTEMTIME                   
   TIMESTRUCT                            ?"pK  ?   ????           STRING_TO_UINT64           ptr               ` ??              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER `??	                 in               ??                 STRING_TO_UINT64                T_ULARGE_INTEGER                            ?"pK  ?   ????           SYSTEMTIME_TO_DT           b   	                 ?    16#44, 16#54, 16#23(*DT#*),
										16#31, 16#39, 16#37, 16#30(*1970*),
										16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#00      D      T      #      1      9      7      0      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0           ` ??              str             ` ??
              nSeconds         ` ??           	   Index7001                            TIMESTR                   
   TIMESTRUCT  ??                 SYSTEMTIME_TO_DT                                     ?"pK  ?   ????           SYSTEMTIME_TO_FILETIME           tmp1                T_ULARGE_INTEGER `??	              tmp2                T_ULARGE_INTEGER `??
              pastDays         ` ??              i         ` ??              
   systemTime                   
   TIMESTRUCT  ??                 SYSTEMTIME_TO_FILETIME             
   T_FILETIME                            ?"pK  ?   ????           SYSTEMTIME_TO_STRING           b   	                 ?   16#31, 16#36, 16#30, 16#31(*1601*),		(* year *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* month *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* day *)
										16#2D(*-*), 16#30, 16#30(*00*),				(* hour *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* minute *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* second *)
										16#2E(*.*), 16#30, 16#30, 16#30(*000*),		(* milliseconds *)
										16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` ??           	   Index7001                            in                   
   TIMESTRUCT  ??                 SYSTEMTIME_TO_STRING                                         ?"pK  ?   ????        	   TC_CONFIG        
   ADSWRTCTL1                       	   ADSWRTCTL `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              SET            ??              TMOUT    ?     ??                 BUSY            ??              ERR            ??	              ERRID           ??
                       ?"pK  ?   ????           TC_CPUUSAGE           ADSREAD1                          ADSREAD `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              START            ??              TMOUT    ?     ??                 BUSY            ??              ERR            ??	              ERRID           ??
              USAGE           ??          in %            ?"pK  ?   ????        
   TC_RESTART        
   ADSWRTCTL1                       	   ADSWRTCTL `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              RESTART            ??              TMOUT    ?     ??                 BUSY            ??              ERR            ??	              ERRID           ??
                       ?"pK  ?   ????           TC_STOP        
   ADSWRTCTL1                       	   ADSWRTCTL `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              STOP            ??              TMOUT    ?     ??                 BUSY            ??              ERR            ??	              ERRID           ??
                       ?"pK  ?   ????           TC_SYSLATENCY           ADSREAD1                          ADSREAD `??           
   RisingEdge                 R_TRIG `??              FallingEdge                 F_TRIG `??              tmpData   	                      ` ??                 NETID            
   T_AmsNetId  ??           Ams net id    START            ??       6    Rising edge on this input activates the fb execution    TMOUT    ?     ??           Max fb execution time       BUSY            ??              ERR            ??	              ERRID           ??
              ACTUAL           ??           Actual latency in ?s    MAXIMUM           ??           Maximum latency in ?s             ?"pK  ?   ????           TIME_TO_OTSTRUCT           tmpMilli         ` ??                 TIN           ??                 TIME_TO_OTSTRUCT                    OTSTRUCT                            ?"pK  ?   ????           UINT32X32TO64           Tmp1         ` ??	              Tmp2         ` ??
              Tmp3         ` ??              Tmp4         ` ??              DW1         ` ??              DW2         ` ??              DW3         ` ??              DW4         ` ??                 ui32a           ??              ui32b           ??                 UInt32x32To64                T_ULARGE_INTEGER                            ?"pK  ?   ????           UINT64_TO_LREAL               in                T_ULARGE_INTEGER  ??                 UINT64_TO_LREAL                                                  ?"pK  ?   ????           UINT64_TO_STRING        	   remainder                T_ULARGE_INTEGER `??              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER `??	                 in                T_ULARGE_INTEGER  ??                 UINT64_TO_STRING                                         ?"pK  ?   ????           UINT64ADD64           bOV          ` ??	                 ui64a                T_ULARGE_INTEGER  ??              ui64b                T_ULARGE_INTEGER  ??                 UInt64Add64                T_ULARGE_INTEGER                            ?"pK  ?   ????           UINT64ADD64EX               augend                T_ULARGE_INTEGER  ??              addend                T_ULARGE_INTEGER  ??                 UInt64Add64Ex                T_ULARGE_INTEGER                      bOV            ??       3    TRUE => arithmetic overflow, FALSE => no overflow         ?"pK  ?   ????        	   UINT64AND               ui64a                T_ULARGE_INTEGER  ??              ui64b                T_ULARGE_INTEGER  ??              	   UInt64And                T_ULARGE_INTEGER                            ?"pK  ?   ????           UINT64CMP64               ui64a                T_ULARGE_INTEGER  ??              ui64b                T_ULARGE_INTEGER  ??	                 UInt64Cmp64                                     ?"pK  ?   ????           UINT64DIV16EX        	   pDividend    	                            ` ??              pResult    	                            ` ??              rest         ` ??                 dividend                T_ULARGE_INTEGER  ??              divisor           ??                 UInt64Div16Ex                T_ULARGE_INTEGER                   	   remainder                 T_ULARGE_INTEGER ??                   ?"pK  ?   ????           UINT64DIV64        	   remainder                T_ULARGE_INTEGER `??	                 dividend                T_ULARGE_INTEGER  ??              divisor                T_ULARGE_INTEGER  ??                 UInt64Div64                T_ULARGE_INTEGER                            ?"pK  ?   ????           UINT64DIV64EX           msBit       /    ( dwHighPart := 16#80000000, 	dwLowPart := 0 )            ?   T_ULARGE_INTEGER `??              bitShift         ` ??              cmp         ` ??              in   	                      T_ULARGE_INTEGER         `??              out   	                      T_ULARGE_INTEGER         `??           
   cbReturned         ` ??           	   Index7001                            dividend                T_ULARGE_INTEGER  ??              divisor                T_ULARGE_INTEGER  ??                 UInt64Div64Ex                T_ULARGE_INTEGER                   	   remainder                 T_ULARGE_INTEGER ??                   ?"pK  ?   ????           UINT64ISZERO               ui64                T_ULARGE_INTEGER  ??                 UInt64isZero                                      ?"pK  ?   ????           UINT64LIMIT               ui64min                T_ULARGE_INTEGER  ??              ui64in                T_ULARGE_INTEGER  ??              ui64max                T_ULARGE_INTEGER  ??                 UInt64Limit                T_ULARGE_INTEGER                            ?"pK  ?   ????        	   UINT64MAX               ui64a                T_ULARGE_INTEGER  ??              ui64b                T_ULARGE_INTEGER  ??              	   UInt64Max                T_ULARGE_INTEGER                            ?"pK  ?   ????        	   UINT64MIN               ui64a                T_ULARGE_INTEGER  ??              ui64b                T_ULARGE_INTEGER  ??              	   UInt64Min                T_ULARGE_INTEGER                            ?"pK  ?   ????           UINT64MOD64               dividend                T_ULARGE_INTEGER  ??              divisor                T_ULARGE_INTEGER  ??                 UInt64Mod64                T_ULARGE_INTEGER                            ?"pK  ?   ????           UINT64MUL64           bOV          ` ??	                 multiplicand                T_ULARGE_INTEGER  ??           
   multiplier                T_ULARGE_INTEGER  ??                 UInt64Mul64                T_ULARGE_INTEGER                            ?"pK  ?   ????           UINT64MUL64EX           bCarry          ` ??           	   bSumCarry          ` ??              n         ` ??              m         ` ??                 multiplicand                T_ULARGE_INTEGER  ??           
   multiplier                T_ULARGE_INTEGER  ??                 UInt64Mul64Ex                T_ULARGE_INTEGER                      bOV            ??       3    TRUE => Arithmetic overflow, FALSE => no overflow         ?"pK  ?   ????        	   UINT64NOT               ui64                T_ULARGE_INTEGER  ??              	   UInt64Not                T_ULARGE_INTEGER                            ?"pK  ?   ????           UINT64OR               ui64a                T_ULARGE_INTEGER  ??              ui64b                T_ULARGE_INTEGER  ??                 UInt64Or                T_ULARGE_INTEGER                            ?"pK  ?   ????        	   UINT64ROL           bMSB          ` ??	                 ui64                T_ULARGE_INTEGER  ??              n           ??              	   UInt64Rol                T_ULARGE_INTEGER                            ?"pK  ?   ????        	   UINT64ROR           bLSB          ` ??	                 ui64                T_ULARGE_INTEGER  ??              n           ??              	   UInt64Ror                T_ULARGE_INTEGER                            ?"pK  ?   ????        	   UINT64SHL               ui64                T_ULARGE_INTEGER  ??              n           ??              	   UInt64Shl                T_ULARGE_INTEGER                            ?"pK  ?   ????        	   UINT64SHR               ui64                T_ULARGE_INTEGER  ??              n           ??              	   UInt64Shr                T_ULARGE_INTEGER                            ?"pK  ?   ????           UINT64SUB64               ui64a                T_ULARGE_INTEGER  ??              ui64b                T_ULARGE_INTEGER  ??                 UInt64Sub64                T_ULARGE_INTEGER                            ?"pK  ?   ????        	   UINT64XOR               ui64a                T_ULARGE_INTEGER  ??              ui64b                T_ULARGE_INTEGER  ??              	   UInt64Xor                T_ULARGE_INTEGER                            ?"pK  ?   ????           ULARGE_INTEGER            
   dwHighPart           ??           	   dwLowPart           ??                 ULARGE_INTEGER                T_ULARGE_INTEGER                            ?"pK  ?   ????           ULARGE_TO_LARGE               in                T_ULARGE_INTEGER  ??                 ULARGE_TO_LARGE                T_LARGE_INTEGER                            ?"pK  ?   ????           WORD_TO_FIX16               in           ??           16 bit fixed point number    n                           ??           number of fractional bits       WORD_TO_FIX16                 T_FIX16                            ?"pK  ?   ????           WRITEPERSISTENTDATA        
   ADSWRTCTL1                       	   ADSWRTCTL `??           
   RisingEdge                 R_TRIG `??                 NETID            
   T_AmsNetId  ??              PORT           ??              START            ??              TMOUT    ?     ??                 BUSY            ??	              ERR            ??
              ERRID           ??                       ?"pK  ?   ????    w   C:\TWINCAT\PLC\LIB\TcSocketHelper.lib @                                                                                          F_CREATESERVERHND            	   sSrvNetID           ''    
   T_AmsNetID  ??       Z    The network address of the TcpIpServer.exe. If empty string=>server runs on local system 
   sLocalHost               ??	       W    Local (server) address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           ??
       -    Local (server) Internet Protocol (IP) port.    nMode          ??           Listen mode flags    bEnable           ??       -    TRUE opens and FALSE closes listener socket       F_CreateServerHnd                                hServer                           	   T_HSERVER ??           TCP/IP plc server handle         @??J  ?   ????           F_GETVERSIONTCSOCKETHELPER               nVersionElement           ??                 F_GetVersionTcSocketHelper                                     @??J  ?   ????           FB_CLIENTSERVERCONNECTION           eStep               E_ConnEstablishState `??           Internal state 	   fbConnect                            FB_SocketConnect `??              fbClose        
                FB_SocketClose `??              timer           ( PT := T#0s )                TON `??       [    This timer specifies when open is retried. At the first time open is retried immediatelly.   fallingEdge                 F_TRIG `??           
   bConnected          ` ??           Internal flag    sHSocket    Q       Q  ` ??              	   sSrvNetID           ''    
   T_AmsNetID  ??       Z    The network address of the TcpIpServer.exe. If empty string=>server runs on local system    nMode           ??           OR CONNECT_MODE_ENABLEDBG    sRemoteHost               ??       X    Remote (server) address. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           ??       .    Remote (server) Internet Protocol (IP) port.    bEnable            ??       4    TRUE = connect, FALSE = disconnect or don't connect
   tReconnect    ȯ     ??	       /    This timer specifies when connect is retried.       bBusy            ??              bError            ??              nErrId           ??              hSocket              	   T_HSOCKET  ??           Socket handle    eState           eSOCKET_DISCONNECTED       E_SocketConnectionState  ??           Connection state             @??J  ?   ????           FB_SERVERCLIENTCONNECTION     	   
   risingEdge                 R_TRIG `??              fallingEdge                 F_TRIG `??              timer                    TON `??       -    This timer specifies when accept is retried    timer2                    TON `??       -    This timer specifies when listen is retried 
   bConnected          ` ??       7    Internal flag, TRUE = Connection successfull accepted 
   bListening          ` ??       T    Internal flat, TRUE = Listener socket is opened, FALSE = Listener socket is closed    eStep               E_ConnEstablishState `??           Internal state    pLocked         ` ??              sHSocket    Q       Q  ` ??                 eMode           eACCEPT_ALL       E_SocketAcceptMode  ??           Connection accept flags    sRemoteHost               ??       X    Remote (client) address. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           ??	       .    Remote (client) Internet Protocol (IP) port.    bEnable            ??
       $    TRUE = connect, FALSE = disconnect.
   tReconnect    ?     ??       .    This timer specifies when accept is retried.       bBusy            ??              bError            ??              nErrID           ??              hSocket              	   T_HSOCKET  ??           Socket handle    eState           eSOCKET_DISCONNECTED       E_SocketConnectionState  ??           Connection state       hServer                           	   T_HSERVER ??           TCP/IP plc server handle         @??J  ?   ????           FB_SOCKETLISTENEX           nStep         ` ??           
   fbAdsRdWrt                            ADSRDWRT `??           
   RisingEdge                 R_TRIG `??              request                ST_SockAddr `??              response                ST_TcIpConnSvrResponse `??           
   fbCloseAll        	               FB_SocketCloseAll `??              	   sSrvNetId           ''    
   T_AmsNetId  ??       Y    The network address of the TcpIpServer.exe. If empty string=>server runs on local system
   sLocalHost               ??       W    Local (server) address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           ??       -    Local (server) Internet Protocol (IP) port.    nMode          ??              bExecute            ??       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ?     ??       3    States the time before the function is cancelled.       bBusy            ??              bError            ??              nErrId           ??           	   hListener              	   T_HSOCKET  ??       _   This returned value is a handle for the listener socket on which the actual connection is made.              TCPADSCONLST_IOF_GETHNDLBYADDR        `??           @??J  ?   ????           FB_SOCKETRECEIVEEX        	   fbReceive                           FB_SocketReceive `??           
   RisingEdge                 R_TRIG `??              timer                    FB_ThrottleTimer `??              nStep         ` ??              	   sSrvNetId           ''    
   T_AmsNetId  ??       Y    The network address of the TcIpConnSvr.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  ??       ?    Handle for the socket on which the actual connection is made.    cbLen           ??       3    Contains the max. number of bytes to be received.    pDest           ??       ;    Contains the address OF the buffer FOR the received data.    bExecute            ??       F    FUNCTION block execution is triggered BY a rising edge AT this input.   tTimeout    ?     ??	       3    States the time before the function is cancelled.    throttleTimes       f    T#0s, T#10ms, T#20ms, T#40ms, T#60ms, T#80ms, T#100ms, T#200ms, T#400ms, T#600ms, T#800ms, T#1s, T#2s       T_ThrottleTimes  ??
                 bBusy            ??              bError            ??              nErrId           ??           	   nRecBytes           ??       2    Contains the number of bytes currently received.             @??J  ?   ????           FB_THROTTLETIMER           timer                    TON `??              selector         ` ??                 bIn            ??       ?    Starts timer with rising edge, resets timer with falling edge    tT               T_ThrottleTimes  ??                 bOut            ??              tElapsed           ??	                       @??J  ?   ????           HSOCKET_TO_STRING               hSocket              	   T_HSOCKET  ??                 HSOCKET_TO_STRING    Q       Q                              @??J  ?   ????    o   C:\TWINCAT\PLC\LIB\TcBase.lib @                                                                                          FW_ADSCLEAREVENTS           STAMP_I            ??              ACCESSCNT_I            ??              BUSY_I             ??              ERR_I             ??              ERRID_I            ??           
   READ_SAV_I             ??              TICKSTART_I            ??                 sNetId               ??              bClear            ??              nMode           ??              tTimeout           ??                 bBusy            ??	              bError            ??
              nErrId           ??                       ??J  ?   ????           FW_ADSLOGDINT            	   nCtrlMask           ??              sMsgFmt               ??              nArg           ??                 FW_AdsLogDINT                                     ??J  ?   ????           FW_ADSLOGEVENT        
   STAMPREQ_I            ??           
   STAMPRES_I            ??           
   STAMPSIG_I            ??           
   STAMPCON_I            ??              ACCESSCNT_I            ??           	   AMSADDR_I   	                         ??              EVENT_I                      
   FW_TcEvent   ??              pTCEVENTSTREAM_I            ??              CBEVENTSTREAM_I            ??              nSTATE_I            ??              nSTATEREQ_I            ??              nSTATERES_I            ??              nSTATESIG_I            ??               nSTATECON_I            ??!              ERR_I             ??"              ERRID_I            ??#              bEVENT_SAV_I             ??$              bEVENTQUIT_SAV_I             ??%              TICKSTART_I            ??&           	      sNetId               ??              nPort           ??              bEvent            ??           
   bEventQuit            ??              stEventConfigData                      
   FW_TcEvent  ??              pEventDataAddress           ??       	    pointer    cbEventDataLength           ??	           
   bFbCleanup            ??
              tTimeout           ??                 nEventState           ??              bError            ??              nErrId           ??              bQuit            ??                       ??J  ?   ????           FW_ADSLOGLREAL            	   nCtrlMask           ??              sMsgFmt               ??              fArg                        ??                 FW_AdsLogLREAL                                     ??J  ?   ????           FW_ADSLOGSTR            	   nCtrlMask           ??              sMsgFmt               ??              sArg               ??                 FW_AdsLogSTR                                     ??J  ?   ????           FW_ADSRDWRT           STAMP_I            ??              ACCESSCNT_I            ??              BUSY_I             ??              ERR_I             ??              ERRID_I            ??              WRTRD_SAV_I             ??              PDESTADDR_I            ??              TICKSTART_I            ??           
      sNetId               ??              nPort           ??              nIdxGrp           ??              nIdxOffs           ??           
   cbWriteLen           ??           	   cbReadLen           ??           
   pWriteBuff           ??	           	   pReadBuff           ??
              bExecute            ??              tTimeout           ??                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??           count of bytes actually read             ??J  ?   ????           FW_ADSRDWRTIND           CLEAR_I             ??                 bClear            ??           	      bValid            ??              sNetId               ??              nPort           ??           	   nInvokeId           ??	              nIdxGrp           ??
              nIdxOffs           ??           	   cbReadLen           ??           
   cbWriteLen           ??           
   pWriteBuff           ??                       ??J  ?   ????           FW_ADSRDWRTRES        	   RESPOND_I             ??                 sNetId               ??              nPort           ??           	   nInvokeId           ??              nErrId           ??           	   cbReadLen           ??           	   pReadBuff           ??              bRespond            ??	                           ??J  ?   ????        
   FW_ADSREAD           STAMP_I            ??              ACCESSCNT_I            ??              BUSY_I             ??              ERR_I             ??              ERRID_I            ??           
   READ_SAV_I             ??              TICKSTART_I            ??                 sNetId               ??              nPort           ??              nIdxGrp           ??              nIdxOffs           ??           	   cbReadLen           ??           	   pReadBuff           ??              bExecute            ??	              tTimeout           ??
                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??           count of bytes actually read             ??J  ?   ????           FW_ADSREADDEVICEINFO           STAMP_I            ??              ACCESSCNT_I            ??              BUSY_I             ??              ERR_I             ??              ERRID_I            ??              RDINFO_SAV_I             ??              TICKSTART_I            ??                 sNetId               ??              nPort           ??              bExecute            ??              tTimeout           ??                 bBusy            ??	              bError            ??
              nErrId           ??              sDevName               ??              nDevVersion           ??                       ??J  ?   ????           FW_ADSREADIND           CLEAR_I             ??                 bClear            ??                 bValid            ??              sNetId               ??              nPort           ??           	   nInvokeId           ??	              nIdxGrp           ??
              nIdxOffs           ??           	   cbReadLen           ??                       ??J  ?   ????           FW_ADSREADRES        	   RESPOND_I             ??                 sNetId               ??              nPort           ??           	   nInvokeId           ??              nErrId           ??           	   cbReadLen           ??           	   pReadBuff           ??              bRespond            ??	                           ??J  ?   ????           FW_ADSREADSTATE           STAMP_I            ??              ACCESSCNT_I            ??              BUSY_I             ??              ERR_I             ??              ERRID_I            ??              RDSTATE_SAV_I             ??              TICKSTART_I            ??                 sNetId               ??              nPort           ??              bExecute            ??              tTimeout           ??                 bBusy            ??	              bError            ??
              nErrId           ??           	   nAdsState           ??           	   nDevState           ??                       ??J  ?   ????           FW_ADSWRITE           STAMP_I            ??              ACCESSCNT_I            ??              BUSY_I             ??              ERR_I             ??              ERRID_I            ??              WRITE_SAV_I             ??              TICKSTART_I            ??                 sNetId               ??              nPort           ??              nIdxGrp           ??              nIdxOffs           ??           
   cbWriteLen           ??           
   pWriteBuff           ??              bExecute            ??	              tTimeout           ??
                 bBusy            ??              bError            ??              nErrId           ??                       ??J  ?   ????           FW_ADSWRITECONTROL           STAMP_I            ??              ACCESSCNT_I            ??              BUSY_I             ??              ERR_I             ??              ERRID_I            ??              WRITE_SAV_I             ??              TICKSTART_I            ??                 sNetId               ??              nPort           ??           	   nAdsState           ??           	   nDevState           ??           
   cbWriteLen           ??           
   pWriteBuff           ??              bExecute            ??	              tTimeout           ??
                 bBusy            ??              bError            ??              nErrId           ??                       ??J  ?   ????           FW_ADSWRITEIND           CLEAR_I             ??                 bClear            ??                 bValid            ??              sNetId               ??              nPort           ??           	   nInvokeId           ??	              nIdxGrp           ??
              nIdxOffs           ??           
   cbWriteLen           ??           
   pWriteBuff           ??                       ??J  ?   ????           FW_ADSWRITERES        	   RESPOND_I             ??                 sNetId               ??              nPort           ??           	   nInvokeId           ??              nErrId           ??              bRespond            ??                           ??J  ?   ????           FW_DRAND           FirstCall_i             ??	           
   HoldRand_i            ??
              R250_Buffer_i   	  ?                        ??           
   R250_Index            ??                 nSeed           ??                 fRndNum                        ??                       ??J  ?   ????           FW_GETCPUACCOUNT                   dwCpuAccount           ??                       ??J  ?   ????           FW_GETCPUCOUNTER                
   dwCpuCntLo           ??           
   dwCpuCntHi           ??                       ??J  ?   ????           FW_GETCURTASKINDEX                   nIndex           ??                       ??J  ?   ????           FW_GETSYSTEMTIME                   dwTimeLo           ??              dwTimeHi           ??                       ??J  ?   ????           FW_GETVERSIONTCBASE               nVersionElement           ??                 FW_GetVersionTcBase                                     ??J  ?   ????           FW_LPTSIGNAL            	   nPortAddr           ??              nPinNo           ??              bOnOff            ??	                 FW_LptSignal                                      ??J  ?   ????        	   FW_MEMCMP               pBuf1           ??           First buffer    pBuf2           ??           Second buffer    cbLen           ??           Number of characters    	   FW_MemCmp                                     ??J  ?   ????        	   FW_MEMCPY               pDest           ??           New buffer    pSrc           ??           Buffer to copy from    cbLen           ??           Number of characters to copy    	   FW_MemCpy                                     ??J  ?   ????        
   FW_MEMMOVE               pDest           ??           New buffer    pSrc           ??           Buffer to copy from    cbLen           ??           Number of characters to copy    
   FW_MemMove                                     ??J  ?   ????        	   FW_MEMSET               pDest           ??           Pointer to destination 	   nFillByte           ??           Character to set    cbLen           ??           Number of characters    	   FW_MemSet                                     ??J  ?   ????           FW_PORTREAD            	   nPortAddr           ??           	   eNoOfByte               FW_NoOfByte  ??                 FW_PortRead                                     ??J  ?   ????           FW_PORTWRITE            	   nPortAddr           ??           	   eNoOfByte               FW_NoOfByte  ??              nValue           ??                 FW_PortWrite                                      ??J  ?   ????    q   C:\TWINCAT\PLC\LIB\standard.lib @                                                                                          CONCAT               STR1               ??              STR2               ??                 CONCAT                                         ??66  ?   ????           CTD           M             ??           Variable for CD Edge Detection      CD            ??           Count Down on rising edge    LOAD            ??           Load Start Value    PV           ??           Start Value       Q            ??           Counter reached 0    CV           ??           Current Counter Value             ??66  ?   ????           CTU           M             ??            Variable for CU Edge Detection       CU            ??       
    Count Up    RESET            ??           Reset Counter to 0    PV           ??           Counter Limit       Q            ??           Counter reached the Limit    CV           ??           Current Counter Value             ??66  ?   ????           CTUD           MU             ??            Variable for CU Edge Detection    MD             ??            Variable for CD Edge Detection       CU            ??	       
    Count Up    CD            ??
           Count Down    RESET            ??           Reset Counter to Null    LOAD            ??           Load Start Value    PV           ??           Start Value / Counter Limit       QU            ??           Counter reached Limit    QD            ??           Counter reached Null    CV           ??           Current Counter Value             ??66  ?   ????           DELETE               STR               ??              LEN           ??              POS           ??                 DELETE                                         ??66  ?   ????           F_TRIG           M             ??
                 CLK            ??           Signal to detect       Q            ??           Edge detected             ??66  ?   ????           FIND               STR1               ??              STR2               ??                 FIND                                     ??66  ?   ????           INSERT               STR1               ??              STR2               ??              POS           ??                 INSERT                                         ??66  ?   ????           LEFT               STR               ??              SIZE           ??                 LEFT                                         ??66  ?   ????           LEN               STR               ??                 LEN                                     ??66  ?   ????           MID               STR               ??              LEN           ??              POS           ??                 MID                                         ??66  ?   ????           R_TRIG           M             ??
                 CLK            ??           Signal to detect       Q            ??           Edge detected             ??66  ?   ????           REPLACE               STR1               ??              STR2               ??              L           ??              P           ??                 REPLACE                                         ??66  ?   ????           RIGHT               STR               ??              SIZE           ??                 RIGHT                                         ??66  ?   ????           RS               SET            ??              RESET1            ??                 Q1            ??
                       ??66  ?   ????           SEMA           X             ??                 CLAIM            ??	              RELEASE            ??
                 BUSY            ??                       ??66  ?   ????           SR               SET1            ??              RESET            ??                 Q1            ??	                       ??66  ?   ????           TOF           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with falling edge, resets timer with rising edge    PT           ??           time to pass, before Q is set       Q            ??	       2    is FALSE, PT seconds after IN had a falling edge    ET           ??
           elapsed time             ??66  ?   ????           TON           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with rising edge, resets timer with falling edge    PT           ??           time to pass, before Q is set       Q            ??	       0    is TRUE, PT seconds after IN had a rising edge    ET           ??
           elapsed time             ??66  ?   ????           TP        	   StartTime            ??           internal variable       IN            ??       !    Trigger for Start of the Signal    PT           ??       '    The length of the High-Signal in 10ms       Q            ??	           The pulse    ET           ??
       &    The current phase of the High-Signal             ??66  ?   ????    v   C:\TWINCAT\PLC\LIB\ClientStrSock.lib @                                                                                
          F_ADSLOGERROR               sPrefix               ??       O    Debug message prefix string (allows the identification of log message source)    nErrID           ??           Error code       F_ADSLOGERROR                                     Gk?P  ?   ????           F_ADSLOGSTRING               sPrefix               ??       O    Debug message prefix string (allows the identification of log message source)    sMsg               T_MaxString  ??           Message string       F_ADSLOGSTRING                                     Gk?P  ?   ????        
   F_DATAPREP           i            ??              j            ??              str           ''       T_MaxString   ??              str2    ?       ?     ??              str3          10     ??              value            ??              	   msgheader               ??           
   msgMsgType               ??              msgSystemType               ??              msgDeviceType               ??           	   msgDevNum               ??              msgDataType               ??              msgDevision               ??	           	   msgSubDev               ??
              msgReserved_1               ??              msgReserved_2               ??           
   dataheader               ??              data1dig   	  ?                       ??              data3dig   	                          ??              data3dig_Htr    ?      ??              data3dig_Ltr           ??              data4dig   	                          ??              data8dig   	                         ??              dataS    ?       ?    ??              
   F_DataPrep               T_MaxString                            Gk?P  ?   ????        
   F_VALSCALE           v            ??                 value           ??              trs_H           ??              trs_L           ??              
   F_ValScale                                     Gk?P  ?   ????        
   F_VALTOSTR           i            ??              val            ??              dig            ??	              str1    Q       Q     ??
              str2    Q       Q     ??              str3          000     ??                 value           ??       0    ????????, ??????? ?????????? ????????? ? ??????   digit           ??       g    ?????????? ????????, ??????? ?????? ???? ? ???????? ?????????????. ??? "??????" ??????? ??????????? 0    
   F_ValToStr    Q       Q                              Gk?P  ?   ????           FB_CLIENTAPPLICATION     
      lengthS1            ??              lengthS2            ??           	   sToServer           ''       T_MaxString   ??              sFromServer           ''       T_MaxString   ??               fbClient                                         FB_LocalClient   ??!       -    Client data exchange control function block    tx        	               FB_FrameStringFifo   ??"       	    Tx fifo    rx        	               FB_FrameStringFifo   ??#       	    Rx fifo    errors                      FB_ProtErrorFifo   ??$           Error fifo    sndTimer                    TON   ??%              rcvTimer                    TON   ??&       $   	state		: BYTE;(* application state       bDbg           ??       /    TRUE => Enable debug output, FALSE => Disable    sRemoteHost       	   127.0.0.1    ??              nRemotePort    '     ??              bEnable            ??              bRequest            ??              msgToServer           ''       T_MaxString  ??              state           ??              send_status_reset            ??                 eState           eSOCKET_DISCONNECTED       E_SocketConnectionState  ??           TCP/IP connection state    answer           ''       T_MaxString  ??           
   bDataReady            ??           
   receive_ok            ??              send_ok            ??                       Gk?P  ?   ????           FB_FRAMESTRINGFIFO           buffer   	  ?  ????                 ??           Internal buffer memory    fbBuffer           (bOverwrite := FALSE)	                    FB_StringRingBuffer   ??       :    Basic (lower level) string buffer control function block       sDesc          Unknown    ??       T    Debug message description string (allows the identification of log message source)    bDbg            ??       /    TRUE => Enable debug output, FALSE => Disable    putValue           ''       T_MaxString  ??       %    String to add (write) to the buffer       bOk            ??	       T    TRUE = New entry added or removed succesfully, FALSE = Fifo overflow or fifo empty    getValue           ''       T_MaxString  ??
       #    String removed (read) from buffer    nCount           ??           Number of fifo entries    cbFree           ??           Free buffer space             Gk?P  ?   ????           FB_LOCALCLIENT        	   fbConnect           ( tReconnect := T#45s )                ȯ          FB_ClientServerConnection   ??-       "    create/release TCP/IP connection    fbSend                          FB_SocketSend   ??.           send TCP/IP data 	   fbReceive                           FB_SocketReceive   ??/           receive TCP/IP data    state            ??0           global state    tx_state            ??1       
    tx state    rx_state            ??2       
    rx state    bDisconnect             ??3       3    disconnect flag, if set the socket will be closed 	   pollTimer                    TON   ??4           
   cbReceived            ??5           count of received data bytes    cbRx            ??6            byte length of received string    rxFrame               T_MaxString   ??7              txFrame               T_MaxString   ??8              buffer   	  ?                       ??9           Temp. RX buffer    i            ??:              bAbort             ??;              sID                ??<              bWaitForAnswer             ??>                 bDbg           ??        <    TRUE => Enable debug output, FALSE => Disable debug output    sRemoteHost          192.168.3.229    ??!           IP address of remote server    nRemotePort    ?"     ??"           Remote server port    bEnable            ??#       5    TRUE => Enable/connect, FALSE => Disable/disconnect 
   tReconnect    ȯ     ??$       "    Try to reconnect after this time       eState           eSOCKET_DISCONNECTED       E_SocketConnectionState  ??(           TCP/IP connection state    received_string               T_MaxString  ??)          	bDataReady: BOOL:=FALSE;      tx         	               FB_FrameStringFifo ??       	    TX fifo    rx         	               FB_FrameStringFifo ??       	    RX fifo    errors                 FB_ProtErrorFifo ??           Error message fifo         Gk?P  ?   ????           FB_PROTERRORFIFO           buffer   	     ????                 ??           Internal buffer memory    fbBuffer                              FB_MemRingBuffer   ??       3    Basic (lower level) buffer control function block       sDesc          Unknown    ??       P    Debug message description string (allows the identification of message source)    bDbg            ??       /    TRUE => Enable debug output, FALSE => Disable    putError           ??       '    Error code to add (write) to the fifo       bOk            ??	       T    TRUE = New entry added or removed succesfully, FALSE = Fifo overflow or fifo empty    getError           ??
       )    Error code get/removed (read) from fifo    nCount           ??           Number of fifo entries             Gk?P  ?   ????        
   SCODE_CODE               sc           ??              
   SCODE_CODE                                     Gk?P  ?   ????    q   C:\TWINCAT\PLC\LIB\TcSystem.lib @                                                                                L          ADSCLEAREVENTS           fbAdsClearEvents                            FW_AdsClearEvents   ??                 NetID            
   T_AmsNetId  ??              bClear            ??              iMode           ??              tTimeout    ?     ??                 bBusy            ??	              bErr            ??
              iErrId           ??                       
?K  ?   ????        
   ADSLOGDINT               msgCtrlMask           ??           	   msgFmtStr               T_MaxString  ??              dintArg           ??              
   ADSLOGDINT                                     
?K  ?   ????           ADSLOGEVENT           fbAdsLogEvent                                               FW_AdsLogEvent   ??           	      NETID            
   T_AmsNetId  ??              PORT           ??              Event            ??           	   EventQuit            ??              EventConfigData               TcEvent  ??              EventDataAddress           ??       	    pointer    EventDataLength           ??	           	   FbCleanup            ??
              TMOUT    ?     ??              
   EventState           ??              Err            ??              ErrId           ??              Quit            ??                       
?K  ?   ????           ADSLOGLREAL               msgCtrlMask           ??           	   msgFmtStr               T_MaxString  ??              lrealArg                        ??                 ADSLOGLREAL                                     
?K  ?   ????        	   ADSLOGSTR               msgCtrlMask           ??           	   msgFmtStr               T_MaxString  ??              strArg               T_MaxString  ??              	   ADSLOGSTR                                     
?K  ?   ????           ADSRDDEVINFO           fbAdsReadDeviceInfo                              FW_AdsReadDeviceInfo   ??                 NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              RDINFO            ??              TMOUT    ?     ??                 BUSY            ??	              ERR            ??
              ERRID           ??              DEVNAME               ??              DEVVER           ??                       
?K  ?   ????        
   ADSRDSTATE           fbAdsReadState                              FW_AdsReadState   ??                 NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              RDSTATE            ??              TMOUT    ?     ??                 BUSY            ??	              ERR            ??
              ERRID           ??              ADSSTATE           ??              DEVSTATE           ??                       
?K  ?   ????           ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??           
      NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              IDXGRP           ??              IDXOFFS           ??              WRITELEN           ??              READLEN           ??              SRCADDR           ??	              DESTADDR           ??
              WRTRD            ??              TMOUT    ?     ??                 BUSY            ??              ERR            ??              ERRID           ??                       
?K  ?   ????        
   ADSRDWRTEX        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??           
      NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              IDXGRP           ??              IDXOFFS           ??              WRITELEN           ??              READLEN           ??              SRCADDR           ??	              DESTADDR           ??
              WRTRD            ??              TMOUT    ?     ??                 BUSY            ??              ERR            ??              ERRID           ??              COUNT_R           ??           count of bytes actually read             
?K  ?   ????           ADSRDWRTIND           fbAdsRdWrtInd                         FW_AdsRdWrtInd   ??                 CLEAR            ??           	      VALID            ??              NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              INVOKEID           ??	              IDXGRP           ??
              IDXOFFS           ??              RDLENGTH           ??           	   WRTLENGTH           ??              DATAADDR           ??                       
?K  ?   ????           ADSRDWRTRES           fbAdsRdWrtRes                      FW_AdsRdWrtRes   ??                 NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              INVOKEID           ??              RESULT           ??              LEN           ??              DATAADDR           ??              RESPOND            ??	                           
?K  ?   ????           ADSREAD        	   fbAdsRead                              
   FW_AdsRead   ??                 NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              IDXGRP           ??              IDXOFFS           ??              LEN           ??              DESTADDR           ??              READ            ??	              TMOUT    ?     ??
                 BUSY            ??              ERR            ??              ERRID           ??                       
?K  ?   ????        	   ADSREADEX        	   fbAdsRead                              
   FW_AdsRead   ??                 NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              IDXGRP           ??              IDXOFFS           ??              LEN           ??              DESTADDR           ??              READ            ??	              TMOUT    ?     ??
                 BUSY            ??              ERR            ??              ERRID           ??              COUNT_R           ??           count of bytes actually read             
?K  ?   ????        
   ADSREADIND           fbAdsReadInd        	               FW_AdsReadInd   ??                 CLEAR            ??                 VALID            ??              NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              INVOKEID           ??	              IDXGRP           ??
              IDXOFFS           ??              LENGTH           ??                       
?K  ?   ????        
   ADSREADRES           fbAdsReadRes                      FW_AdsReadRes   ??                 NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              INVOKEID           ??              RESULT           ??              LEN           ??              DATAADDR           ??              RESPOND            ??	                           
?K  ?   ????           ADSWRITE        
   fbAdsWrite                                FW_AdsWrite   ??                 NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              IDXGRP           ??              IDXOFFS           ??              LEN           ??              SRCADDR           ??              WRITE            ??	              TMOUT    ?     ??
                 BUSY            ??              ERR            ??              ERRID           ??                       
?K  ?   ????           ADSWRITEIND           fbAdsWriteInd        
                FW_AdsWriteInd   ??                 CLEAR            ??                 VALID            ??              NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              INVOKEID           ??	              IDXGRP           ??
              IDXOFFS           ??              LENGTH           ??              DATAADDR           ??                       
?K  ?   ????           ADSWRITERES           fbAdsWriteRes                    FW_AdsWriteRes   ??                 NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              INVOKEID           ??              RESULT           ??              RESPOND            ??                           
?K  ?   ????        	   ADSWRTCTL           fbAdsWriteControl                                FW_AdsWriteControl   ??                 NETID            
   T_AmsNetId  ??              PORT            	   T_AmsPort  ??              ADSSTATE           ??              DEVSTATE           ??              LEN           ??              SRCADDR           ??              WRITE            ??	              TMOUT    ?     ??
                 BUSY            ??              ERR            ??              ERRID           ??                       
?K  ?   ????           ANALYZEEXPRESSION               InputExp            ??           	   DoAnalyze            ??              	   ExpResult            ??           	   OutString               ??                       
?K  ?   ????           ANALYZEEXPRESSIONCOMBINED           Index            ??                 InputExp            ??           	   DoAnalyze            ??              	   ExpResult            ??              OutTable   	                        ExpressionResult          ??           	   OutString               ??	                       
?K  ?   ????           ANALYZEEXPRESSIONTABLE           Index            ??                 InputExp            ??           	   DoAnalyze            ??              	   ExpResult            ??              OutTable   	                        ExpressionResult          ??                       
?K  ?   ????           APPENDERRORSTRING               strOld               ??              strNew               ??                 AppendErrorString                                         
?K  ?   ????        
   CLEARBIT32           dwConst           ??                 inVal32           ??              bitNo           ??              
   CLEARBIT32                                     
?K  ?   ????        	   CSETBIT32           dwConst           ??                 inVal32           ??              bitNo           ??              bitVal            ??       &    value to which the bit should be set    	   CSETBIT32                                     
?K  ?   ????           DRAND           fbDRand                    FW_DRand   ??	                 Seed           ??                 Num                        ??                       
?K  ?   ????           F_COMPAREFWVERSION               major         ` ??           requiered major version    minor         ` ??	           requiered minor version    revision         ` ??
       )    requiered revision/service pack version    patch         ` ??       0    required patch version (reserved, default = 0 )      F_CompareFwVersion                                      
?K  ?   ????           F_CREATEAMSNETID           idx         ` ??                 nIds               T_AmsNetIdArr  ??           Ams Net ID as array of bytes.       F_CreateAmsNetId            
   T_AmsNetId                            
?K  ?   ????           F_CREATEIPV4ADDR           idx         ` ??                 nIds               T_IPv4AddrArr  ??       <    Internet Protocol dotted address (ipv4) as array of bytes.       F_CreateIPv4Addr            
   T_IPv4Addr                            
?K  ?   ????           F_GETVERSIONTCSYSTEM               nVersionElement           ??                 F_GetVersionTcSystem                                     
?K  ?   ????           F_IOPORTREAD               nAddr           ??           Port address    eSize               E_IOAccessSize  ??           Number of bytes to read       F_IOPortRead                                     
?K  ?   ????           F_IOPORTWRITE               nAddr           ??           Port address    eSize               E_IOAccessSize  ??           Number of bytes to write    nValue           ??           Value to write       F_IOPortWrite                                      
?K  ?   ????           F_SCANAMSNETIDS           pNetID               ` ??              b               T_AmsNetIdArr `??              w         ` ??	              id         ` ??
           	   Index7001                            sNetID            
   T_AmsNetID  ??       :    String containing the Ams Net ID. E.g. '127.16.17.3.1.1'       F_ScanAmsNetIds               T_AmsNetIdArr                            
?K  ?   ????           F_SCANIPV4ADDRIDS           b               T_AmsNetIdArr `??           	   Index7001                            sIPv4            
   T_IPv4Addr  ??       M    String containing the Internet Protocol dotted address. E.g. '172.16.7.199'       F_ScanIPv4AddrIds               T_IPv4AddrArr                            
?K  ?   ????           F_SPLITPATHNAME           pPath                  ??              pSlash                  ??              pDot                  ??              p                  ??              length            ??              	   sPathName               T_MaxString  ??                 F_SplitPathName                                sDrive               ??              sDir                T_MaxString ??           	   sFileName                T_MaxString ??              sExt                T_MaxString ??	                   
?K  ?   ????           F_TOASC           pChar                  ??                 str    Q       Q    ??                 F_ToASC                                     
?K  ?   ????           F_TOCHR           pChar    	                               ??                 c           ??                 F_ToCHR    Q       Q                              
?K  ?   ????           FB_CREATEDIR        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??                 sNetId            
   T_AmsNetId  ??           ams net id 	   sPathName               T_MaxString  ??           max directory length = 255    ePath           PATH_GENERIC    
   E_OpenPath  ??       +    Default: Create directory at generic path    bExecute            ??       %    rising edge start command execution    tTimeout    ?     ??                 bBusy            ??
              bError            ??              nErrId           ??                       
?K  ?   ????           FB_EOF        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??              nEOF            ??           
   RisingEdge                 R_TRIG   ??              FallingEdge                 F_TRIG   ??                 sNetId            
   T_AmsNetId  ??           ams net id    hFile           ??           file handle    bExecute            ??           control input    tTimeout    ?     ??                 bBusy            ??	              bError            ??
              nErrId           ??              bEOF            ??                       
?K  ?   ????           FB_FILECLOSE        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??                 sNetId            
   T_AmsNetId  ??           ams net id    hFile           ??       %    file handle obtained through 'open'    bExecute            ??           close control input    tTimeout    ?     ??                 bBusy            ??	              bError            ??
              nErrId           ??                       
?K  ?   ????           FB_FILEDELETE        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??              tmpOpenMode            ??                 sNetId            
   T_AmsNetId  ??           ams net id 	   sPathName               T_MaxString  ??           file path and name    ePath           PATH_GENERIC    
   E_OpenPath  ??           Default: Open generic file    bExecute            ??           open control input    tTimeout    ?     ??                 bBusy            ??
              bError            ??              nErrId           ??                       
?K  ?   ????           FB_FILEGETS        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??           
   RisingEdge                 R_TRIG   ??              FallingEdge                 F_TRIG   ??                 sNetId            
   T_AmsNetId  ??           ams net id    hFile           ??           file handle    bExecute            ??           control input    tTimeout    ?     ??                 bBusy            ??	              bError            ??
              nErrId           ??              sLine               T_MaxString  ??              bEOF            ??                       
?K  ?   ????           FB_FILEOPEN        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??              tmpOpenMode            ??              tmpHndl            ??           
   RisingEdge                 R_TRIG   ??              FallingEdge                 F_TRIG   ??                 sNetId            
   T_AmsNetId  ??           ams net id 	   sPathName               T_MaxString  ??           max filename length = 255    nMode           ??           open mode flags    ePath           PATH_GENERIC    
   E_OpenPath  ??           Default: Open generic file    bExecute            ??           open control input    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??              hFile           ??           file handle             
?K  ?   ????           FB_FILEPUTS        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??           
   RisingEdge                 R_TRIG   ??              FallingEdge                 F_TRIG   ??                 sNetId            
   T_AmsNetId  ??           ams net id    hFile           ??           file handle    sLine               T_MaxString  ??           string to write    bExecute            ??           control input    tTimeout    ?     ??                 bBusy            ??
              bError            ??              nErrId           ??                       
?K  ?   ????           FB_FILEREAD        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??           
   RisingEdge                 R_TRIG   ??              FallingEdge                 F_TRIG   ??                 sNetId            
   T_AmsNetId  ??           ams net id    hFile           ??           file handle 	   pReadBuff           ??           buffer address for read 	   cbReadLen           ??           count of bytes for read    bExecute            ??           read control input    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??           count of bytes actually read    bEOF            ??                       
?K  ?   ????           FB_FILERENAME        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??              tmpOpenMode            ??           
   sBothNames   	                    T_MaxString           ??           = SIZEOF( T_MaxString ) * 2    nOldLen            ??              nNewLen            ??           
   RisingEdge                 R_TRIG   ??              FallingEdge                 F_TRIG   ??                 sNetId            
   T_AmsNetId  ??           ams net id    sOldName               T_MaxString  ??           max filename length = 255    sNewName               T_MaxString  ??           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath  ??           Default: generic file path   bExecute            ??           open control input    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??                       
?K  ?   ????           FB_FILESEEK        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??           
   tmpSeekPos   	                          ??                 sNetId            
   T_AmsNetId  ??           ams net id    hFile           ??	           file handle    nSeekPos           ??
           new seek pointer position    eOrigin       	    SEEK_SET       E_SeekOrigin  ??              bExecute            ??           seek control input    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??                       
?K  ?   ????           FB_FILETELL        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??                 sNetId            
   T_AmsNetId  ??           ams net id    hFile           ??           file handle    bExecute            ??           control input    tTimeout    ?     ??                 bBusy            ??	              bError            ??
              nErrId           ??              nSeekPos           ??          	On error, nSEEKPOS returns -1             
?K  ?   ????           FB_FILEWRITE        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??           
   RisingEdge                 R_TRIG   ??              FallingEdge                 F_TRIG   ??                 sNetId            
   T_AmsNetId  ??           ams net id    hFile           ??           file handle 
   pWriteBuff           ??           buffer address for write 
   cbWriteLen           ??           count of bytes for write    bExecute            ??           write control input    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??              cbWrite           ??       !    count of bytes actually written             
?K  ?   ????           FB_PCWATCHDOG           bRetVal             ??              iTime            ??              iIdx            ??              iPortArr   	                 >    16#2E, 16#2E, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E	      .      .      .      /      .      /      .      /      .      ??              iArrEn   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#05, 16#30, 16#01, 16#AA	      ?      ?                  ?            0            ?      ??              iArrDis   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#00, 16#30, 16#00, 16#AA	      ?      ?                  ?             0             ?      ??                 tTimeOut           ??       ;    Watchdog TimeOut Time 1s..255s, disabled if tTimeOut < 1s    bEnable            ??           Enable / Disable Watchdog       bEnabled            ??       2    TRUE: Watchdog Enabled; FALSE: Watchdog Disabled    bBusy            ??           FB still busy    bError            ??	           FB has error     nErrId           ??
           FB error ID               
?K  ?   ????           FB_REMOVEDIR        
   fbAdsRdWrt                                    FW_AdsRdWrt   ??                 sNetId            
   T_AmsNetId  ??           ams net id 	   sPathName               T_MaxString  ??           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath  ??       +    Default: Delete directory at generic path    bExecute            ??       &    rising edge starts command execution    tTimeout    ?     ??                 bBusy            ??
              bError            ??              nErrId           ??                       
?K  ?   ????           FB_SIMPLEADSLOGEVENT           fbEvent                            ADSLOGEVENT   ??              cfgEvent               TcEvent   ??              bInit            ??                 SourceID           ??              EventID           ??           	   bSetEvent           ??              bQuit            ??                 ErrId           ??	              Error            ??
                       
?K  ?   ????        	   FILECLOSE        
   fbAdsWrite                                FW_AdsWrite   ??                 NETID            
   T_AmsNetId  ??           ams net id    HFILE           ??       )    file handle obtained through 'FILEOPEN'    CLOSE            ??           close control input    TMOUT    ?     ??                 BUSY            ??	              ERR            ??
              ERRID           ??                       
?K  ?   ????           FILEOPEN        
   fbAdsWrite                                FW_AdsWrite   ??           
   RisingEdge                 R_TRIG   ??              FallingEdge                 F_TRIG   ??                 NETID            
   T_AmsNetId  ??           ams net id 	   FPATHNAME               T_MaxString  ??       #    default max filename length = 255    OPENMODE           ??           open mode flags    OPEN            ??           open control input    TMOUT    ?     ??                 BUSY            ??
              ERR            ??              ERRID           ??              HFILE           ??           file handle             
?K  ?   ????           FILEREAD        	   fbAdsRead                              
   FW_AdsRead   ??                 NETID            
   T_AmsNetId  ??           ams net id    HFILE           ??           file handle    BUFADDR           ??           buffer address for read    COUNT           ??           count of bytes for read    READ            ??           read control input    TMOUT    ?     ??                 BUSY            ??              ERR            ??              ERRID           ??              COUNT_R           ??           count of bytes actually read             
?K  ?   ????           FILESEEK        
   fbAdsWrite                                FW_AdsWrite   ??                 NETID            
   T_AmsNetId  ??           ams net id    HFILE           ??           file handle    SEEKPOS           ??           new seek pointer position    SEEK            ??           seek control input    TMOUT    ?     ??                 BUSY            ??
              ERR            ??              ERRID           ??                       
?K  ?   ????        	   FILEWRITE        
   fbAdsWrite                                FW_AdsWrite   ??           
   RisingEdge                 R_TRIG   ??              FallingEdge                 F_TRIG   ??              tmpCount            ??                 NETID            
   T_AmsNetId  ??           ams net id    HFILE           ??           file handle    BUFADDR           ??           buffer address for write    COUNT           ??           count of bytes for write    WRITE            ??           write control input    TMOUT    ?     ??                 BUSY            ??              ERR            ??              ERRID           ??              COUNT_W           ??       !    count of bytes actually written             
?K  ?   ????           FW_CALLGENERICFB           fbCall       w    ( 	sNetID := '', nPort := 16#1234,
								bExecute := FALSE, tTimeout := T#0s,
								ACCESSCNT_I := 16#0000BEC1 )     ??                 4                          FW_AdsRdWrt `??                 funGrp         ` ??       #    Function block group (identifier)    funNum         ` ??       $    Function block number (identifier)    pWrite         ` ??       +    Byte length of output parameter structure    cbWrite         ` ??       *    Byte length of input parameter structure    pRead         ` ??	           Points ot output buffer    cbRead         ` ??
           Points to input buffer       nErrID         ` ??           0 => no error, <> 0 => error
   cbReturned         ` ??       ,    Number of successfully returned data bytes             
?K  ?   ????           FW_CALLGENERICFUN           fbCall       y    ( 	sNetID := '', nPort := 16#1234,
									bExecute := FALSE, tTimeout := T#0s,
									ACCESSCNT_I := 16#0000BEC2 )     ¾                 4                          FW_AdsRdWrt `??           don't use it!        funGrp         ` ??           Function group (identifier)    funNum         ` ??       $    Function block number (identifier)    pWrite         ` ??       +    Byte length of output parameter structure    cbWrite         ` ??	       *    Byte length of input parameter structure    pRead         ` ??
           Points ot output buffer    cbRead         ` ??           Points to input buffer    pcbReturned               ` ??       ,    Number of successfully returned data bytes       FW_CallGenericFun                                     
?K  ?   ????           GETBIT32           dwConst           ??                 inVal32           ??              bitNo           ??                 GETBIT32                                      
?K  ?   ????           GETCPUACCOUNT           fbGetCpuAccount               FW_GetCpuAccount   ??                     cpuAccountDW           ??                       
?K  ?   ????           GETCPUCOUNTER           fbGetCpuCounter                FW_GetCpuCounter   ??	                  
   cpuCntLoDW           ??           
   cpuCntHiDW           ??                       
?K  ?   ????           GETCURTASKINDEX           fbGetCurTaskIndex               FW_GetCurTaskIndex   ??                     index           ??                       
?K  ?   ????           GETSYSTEMTIME           fbGetSystemTime                FW_GetSystemTime   ??	                     timeLoDW           ??              timeHiDW           ??                       
?K  ?   ????           GETTASKTIME           out   	                       ` ??	           
   cbReturned         ` ??
                     timeLoDW           ??              timeHiDW           ??                       
?K  ?   ????        	   LPTSIGNAL               PortAddr           ??              PinNo           ??              OnOff            ??	              	   LPTSIGNAL                                      
?K  ?   ????           MEMCMP               pBuf1           ??           First buffer    pBuf2           ??           Second buffer    n           ??           Number of characters       MEMCMP                                     
?K  ?   ????           MEMCPY               destAddr           ??           New buffer    srcAddr           ??           Buffer to copy from    n           ??           Number of characters to copy       MEMCPY                                     
?K  ?   ????           MEMMOVE               destAddr           ??           New buffer    srcAddr           ??           Buffer to copy from    n           ??           Number of characters to copy       MEMMOVE                                     
?K  ?   ????           MEMSET               destAddr           ??           Pointer to destination    fillByte           ??           Character to set    n           ??           Number of characters       MEMSET                                     
?K  ?   ????           ROL32               inVal32           ??              n           ??                 ROL32                                     
?K  ?   ????           ROR32               inVal32           ??              n           ??                 ROR32                                     
?K  ?   ????           SETBIT32           dwConst           ??                 inVal32           ??              bitNo           ??                 SETBIT32                                     
?K  ?   ????           SFCACTIONCONTROL     
      S_FF                 RS   ??              L_TMR                    TON   ??              D_TMR                    TON   ??              P_TRIG                 R_TRIG   ??              SD_TMR                    TON   ??              SD_FF                 RS   ??              DS_FF                 RS   ??              DS_TMR                    TON   ??              SL_FF                 RS   ??              SL_TMR                    TON   ??           
      N            ??              R0            ??              S0            ??              L            ??              D            ??              P            ??              SD            ??	              DS            ??
              SL            ??              T           ??                 Q            ??                       
?K  ?   ????           SHL32               inVal32           ??              n           ??                 SHL32                                     
?K  ?   ????           SHR32               inVal32           ??              n           ??                 SHR32                                     
?K  ?   ????    t   C:\TWINCAT\PLC\LIB\TcModbusSrv.lib @                                                                                          F_GETIPADDRFROMSTR           pIp                  ??              b   	                          ??              w            ??              id            ??	           	   Index7001                            sIPAddr               ??                 F_GetIPAddrFromStr   	                                                   ?
!O  ?   ????           F_GETVERSIONTCMODBUSSRV               nVersionElement           ??                 F_GetVersionTcModbusSrv                                     ?
!O  ?   ????           FB_MBCLOSEALL           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsWrite       M    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBADS_IGR_CLOSEALL )             
   T_AmsNetId                 	   T_AmsPort                      ADSWRITE `??              cbWLen         ` ??                 bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??	                       ?
!O  ?   ????           FB_MBDIAGNOSE           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsRDWRT       I    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_DIAGNOSE )             
   T_AmsNetId                 	   T_AmsPort                         ADSRDWRT `??              stMBAddr              	   ST_MBAddr `??                 sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device    nSubFnc           ??           
   nWriteData           ??              bExecute            ??	       4    Rising edge at this input starts command execution    tTimeout    ?     ??
                 bBusy            ??              bError            ??              nErrId           ??           	   nReadData           ??                       ?
!O  ?   ????           FB_MBREADCOILS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsRDWRT       J    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_READCOILS )             
   T_AmsNetId                 	   T_AmsPort                       
   ADSRDWRTEX `??              stMBAddr              	   ST_MBAddr `??              cbRLen         ` ??           	      sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device 	   nQuantity           ??       %    Number of coils to read (data bits)    nMBAddr           ??       )    Address of start coil (data bit offset)    cbLength           ??	       &    Max. byte size of destination buffer 	   pDestAddr           ??
           Pointer to destination buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??                       ?
!O  ?   ????           FB_MBREADINPUTREGS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsRDWRT       S    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_READINPUTREGISTERS )             
   T_AmsNetId                 	   T_AmsPort                       
   ADSRDWRTEX `??              stMBAddr              	   ST_MBAddr `??              cbRLen         ` ??           	      sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device 	   nQuantity           ??       0    Number of input registers to read (data words)    nMBAddr           ??       4    Address of start input register (data word offset)    cbLength           ??	       &    Max. byte size of destination buffer 	   pDestAddr           ??
           Pointer to destination buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??                       ?
!O  ?   ????           FB_MBREADINPUTS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsRDWRT       K    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_READINPUTS )             
   T_AmsNetId                 	   T_AmsPort                       
   ADSRDWRTEX `??              stMBAddr              	   ST_MBAddr `??              cbRLen         ` ??           	      sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device 	   nQuantity           ??       &    Number of inputs to read (data bits)    nMBAddr           ??       *    Address of start input (data bit offset)    cbLength           ??	       &    Max. byte size of destination buffer 	   pDestAddr           ??
           Pointer to destination buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??                       ?
!O  ?   ????           FB_MBREADREGS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsRDWRT       N    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_READREGISTERS )             
   T_AmsNetId                 	   T_AmsPort                       
   ADSRDWRTEX `??              stMBAddr              	   ST_MBAddr `??              cbRLen         ` ??           	      sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device 	   nQuantity           ??       *    Number of registers to read (data words)    nMBAddr           ??       .    Address of start register (data word offset)    cbLength           ??	       &    Max. byte size of destination buffer 	   pDestAddr           ??
           Pointer to destination buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??                       ?
!O  ?   ????           FB_MBREADWRITEREGS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsRDWRT       S    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_READWRITEREGISTERS )             
   T_AmsNetId                 	   T_AmsPort                       
   ADSRDWRTEX `??              stMBReadWrite                     ST_MBReadWrite `??              cbRLen         ` ??              cbWLen         ` ??                 sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device    nReadQuantity           ??       *    Number of registers to read (data words)    nMBReadAddr           ??       3    Address of start read register (data word offset)    nWriteQuantity           ??	       +    Number of registers to write (data words)    nMBWriteAddr           ??
       4    Address of start write register (data word offset)    cbDestLength           ??       &    Max. byte size of destination buffer 	   pDestAddr           ??           Pointer to destination buffer    cbSrcLength           ??       !    Max. byte size of source buffer    pSrcAddr           ??           Pointer to source buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??                       ?
!O  ?   ????           FB_MBUDPDIAGNOSE           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsRDWRT       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                      ADSRDWRT `??              stMBAddr              	   ST_MBAddr `??                 sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device    nSubFnc           ??           
   nWriteData           ??              bExecute            ??	       4    Rising edge at this input starts command execution    tTimeout    ?     ??
                 bBusy            ??              bError            ??              nErrId           ??           	   nReadData           ??                       ?
!O  ?   ????           FB_MBUDPREADCOILS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsRDWRT       .    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV)             
   T_AmsNetId                 	   T_AmsPort                    
   ADSRDWRTEX `??              stMBAddr              	   ST_MBAddr `??              cbRLen         ` ??           	      sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device 	   nQuantity           ??       %    Number of coils to read (data bits)    nMBAddr           ??       )    Address of start coil (data bit offset)    cbLength           ??	       &    Max. byte size of destination buffer 	   pDestAddr           ??
           Pointer to destination buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??                       ?
!O  ?   ????           FB_MBUDPREADINPUTREGS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsRDWRT       .    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV)             
   T_AmsNetId                 	   T_AmsPort                    
   ADSRDWRTEX `??              stMBAddr              	   ST_MBAddr `??              cbRLen         ` ??           	      sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device 	   nQuantity           ??       0    Number of input registers to read (data words)    nMBAddr           ??       4    Address of start input register (data word offset)    cbLength           ??	       &    Max. byte size of destination buffer 	   pDestAddr           ??
           Pointer to destination buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??                       ?
!O  ?   ????           FB_MBUDPREADINPUTS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsRDWRT       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                    
   ADSRDWRTEX `??              stMBAddr              	   ST_MBAddr `??              cbRLen         ` ??           	      sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device 	   nQuantity           ??       &    Number of inputs to read (data bits)    nMBAddr           ??       *    Address of start input (data bit offset)    cbLength           ??	       &    Max. byte size of destination buffer 	   pDestAddr           ??
           Pointer to destination buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??                       ?
!O  ?   ????           FB_MBUDPREADREGS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsRDWRT       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                    
   ADSRDWRTEX `??              stMBAddr              	   ST_MBAddr `??              cbRLen         ` ??           	      sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device 	   nQuantity           ??       *    Number of registers to read (data words)    nMBAddr           ??       .    Address of start register (data word offset)    cbLength           ??	       &    Max. byte size of destination buffer 	   pDestAddr           ??
           Pointer to destination buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??                       ?
!O  ?   ????           FB_MBUDPREADWRITEREGS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsRDWRT       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                    
   ADSRDWRTEX `??              stMBReadWrite                     ST_MBReadWrite `??              cbRLen         ` ??              cbWLen         ` ??                 sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device    nReadQuantity           ??       *    Number of registers to read (data words)    nMBReadAddr           ??       3    Address of start read register (data word offset)    nWriteQuantity           ??	       +    Number of registers to write (data words)    nMBWriteAddr           ??
       4    Address of start write register (data word offset)    cbDestLength           ??       &    Max. byte size of destination buffer 	   pDestAddr           ??           Pointer to destination buffer    cbSrcLength           ??       !    Max. byte size of source buffer    pSrcAddr           ??           Pointer to source buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??              cbRead           ??                       ?
!O  ?   ????           FB_MBUDPWRITECOILS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsWrite       .    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV)             
   T_AmsNetId                 	   T_AmsPort                    ADSWRITE `??           	   stMBWrite                
   ST_MBWrite `??              cbWLen         ` ??           	      sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device 	   nQuantity           ??       &    Number of coils to write (data bits)    nMBAddr           ??       )    Address of start coil (data bit offset)    cbLength           ??	       !    Max. byte size of source buffer    pSrcAddr           ??
           Pointer to source buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??                       ?
!O  ?   ????           FB_MBUDPWRITEREGS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsWrite       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                    ADSWRITE `??           	   stMBWrite                
   ST_MBWrite `??              cbWLen         ` ??           	      sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device 	   nQuantity           ??       +    Number of registers to write (data words)    nMBAddr           ??       .    Address of start register (data word offset)    cbLength           ??	       !    Max. byte size of source buffer    pSrcAddr           ??
           Pointer to source buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??                       ?
!O  ?   ????           FB_MBUDPWRITESINGLECOIL           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsWrite       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                    ADSWRITE `??           	   stMBWrite                  ST_MBWriteSingle `??                 sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device    nMBAddr           ??       !    Coil address (data bit offset )    nValue           ??       J    New coil value (16#FF00 switches the output on, 16#0000 switches it off)    bExecute            ??	       4    Rising edge at this input starts command execution    tTimeout    ?     ??
                 bBusy            ??              bError            ??              nErrId           ??                       ?
!O  ?   ????           FB_MBUDPWRITESINGLEREG           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsWrite       /    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV )             
   T_AmsNetId                 	   T_AmsPort                    ADSWRITE `??           	   stMBWrite                  ST_MBWriteSingle `??                 sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device    nMBAddr           ??       %    Register address (data word offset)    nValue           ??           New register value (16 bit)    bExecute            ??	       4    Rising edge at this input starts command execution    tTimeout    ?     ??
                 bBusy            ??              bError            ??              nErrId           ??                       ?
!O  ?   ????           FB_MBWRITECOILS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsWrite       K    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_WRITECOILS )             
   T_AmsNetId                 	   T_AmsPort                       ADSWRITE `??           	   stMBWrite                
   ST_MBWrite `??              cbWLen         ` ??           	      sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device 	   nQuantity           ??       &    Number of coils to write (data bits)    nMBAddr           ??       )    Address of start coil (data bit offset)    cbLength           ??	       !    Max. byte size of source buffer    pSrcAddr           ??
           Pointer to source buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??                       ?
!O  ?   ????           FB_MBWRITEREGS           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsWrite       O    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_WRITEREGISTERS )             
   T_AmsNetId                 	   T_AmsPort                       ADSWRITE `??           	   stMBWrite                
   ST_MBWrite `??              cbWLen         ` ??           	      sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device 	   nQuantity           ??       +    Number of registers to write (data words)    nMBAddr           ??       .    Address of start register (data word offset)    cbLength           ??	       !    Max. byte size of source buffer    pSrcAddr           ??
           Pointer to source buffer    bExecute            ??       4    Rising edge at this input starts command execution    tTimeout    ?     ??                 bBusy            ??              bError            ??              nErrId           ??                       ?
!O  ?   ????           FB_MBWRITESINGLECOIL           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsWrite       P    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_WRITESINGLECOIL )             
   T_AmsNetId                 	   T_AmsPort                       ADSWRITE `??           	   stMBWrite                  ST_MBWriteSingle `??                 sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device    nMBAddr           ??       !    Coil address (data bit offset )    nValue           ??       J    New coil value (16#FF00 switches the output on, 16#0000 switches it off)    bExecute            ??	       4    Rising edge at this input starts command execution    tTimeout    ?     ??
                 bBusy            ??              bError            ??              nErrId           ??                       ?
!O  ?   ????           FB_MBWRITESINGLEREG           state         ` ??           
   RisingEdge                 R_TRIG `??           
   fbAdsWrite       T    ( NETID := '', PORT := AMSPORT_R3_MODBUSSERV, IDXGRP := MBFCT_WRITESINGLEREGISTER )             
   T_AmsNetId                 	   T_AmsPort                       ADSWRITE `??           	   stMBWrite                  ST_MBWriteSingle `??                 sIPAddr               ??       #    IPv4 address of the target device    nTCPPort    ?     ??       "    Port number of the target device    nUnitID    ?      ??       6    Identification number of a serial sub-network device    nMBAddr           ??       %    Register address (data word offset)    nValue           ??           New register value (16 bit)    bExecute            ??	       4    Rising edge at this input starts command execution    tTimeout    ?     ??
                 bBusy            ??              bError            ??              nErrId           ??                       ?
!O  ?   ????    q   C:\TWINCAT\PLC\LIB\TcKL6301.lib @                                                                                0          DINT_TO_EIB_4OCTETSIGN           result            ??              Data   	                          ??              DataM            ??	           	   Index7001                            Value           ??              pDest           ??                 DINT_TO_EIB_4OctetSign                                     0n?L  ?   ????           EIB_2OCTET_FLOAT_REC               Group_Address                 EIB_GROUP_ADDR  ??              strData_Rec                         EIB_REC  ??                 bDataReceive            ??              rData            ??                       0n?L  ?   ????           EIB_2OCTET_FLOAT_SEND           Cycle            ??              str_Send                    EIB_SEND   ??              i            ??           
   FirstCycle            ??              bSend             ??              fb_Timer                    TON   ??              fbTimerW                    TOF   ??              rDataM             ??                 Group_Address                 EIB_GROUP_ADDR  ??              rData            ??              str_Rec                         EIB_REC  ??                 bError            ??              iErrorID               EIB_ERROR_CODE  ??	                       0n?L  ?   ????           EIB_2OCTET_SIGN_REC           iData_            ??                 Group_Address                 EIB_GROUP_ADDR  ??              strData_Rec                         EIB_REC  ??                 bDataReceive            ??              iData           ??                       0n?L  ?   ????           EIB_2OCTET_SIGN_SEND           Cycle            ??              str_Send                    EIB_SEND   ??              i            ??              bSend             ??              fb_Timer                    TON   ??              iDataM            ??              fbTimerW                    TOF   ??           
   FirstCycle            ??                 Group_Address                 EIB_GROUP_ADDR  ??              iData           ??              str_Rec                         EIB_REC  ??                 bError            ??              iErrorID               EIB_ERROR_CODE  ??	                       0n?L  ?   ????           EIB_2OCTET_UNSIGN_REC           uiData_            ??                 Group_Address                 EIB_GROUP_ADDR  ??              strData_Rec                         EIB_REC  ??                 bDataReceive            ??              uiData           ??                       0n?L  ?   ????           EIB_2OCTET_UNSIGN_SEND           Cycle            ??              str_Send                    EIB_SEND   ??              i            ??           
   FirstCycle            ??              bSend             ??              fb_Timer                    TON   ??              uiDataM            ??              fbTimerW                    TOF   ??                 Group_Address                 EIB_GROUP_ADDR  ??              uiData           ??              str_Rec                         EIB_REC  ??                 bError            ??              iErrorID               EIB_ERROR_CODE  ??	                       0n?L  ?   ????           EIB_3BIT_CONTROL_REC               Group_Address                 EIB_GROUP_ADDR  ??              strData_Rec                         EIB_REC  ??                 bDataReceive            ??              bControl            ??              byRange           ??	                       0n?L  ?   ????           EIB_3BIT_CONTROL_SEND     	      Cycle            ??              str_Send                    EIB_SEND   ??              i            ??           
   FirstCycle            ??              bSend             ??              fb_Timer                    TON   ??           	   bControlM             ??              fbTimerW                    TOF   ??              byRangeM            ??                 Group_Address                 EIB_GROUP_ADDR  ??              bControl            ??              byRange           ??              str_Rec                         EIB_REC  ??                 bError            ??	              iErrorID               EIB_ERROR_CODE  ??
                       0n?L  ?   ????           EIB_4OCTET_FLOAT_REC               Group_Address                 EIB_GROUP_ADDR  ??              strData_Rec                         EIB_REC  ??                 bDataReceive            ??              rData            ??                       0n?L  ?   ????           EIB_4OCTET_FLOAT_SEND           Cycle            ??              str_Send                    EIB_SEND   ??              i            ??           
   FirstCycle            ??              bSend             ??              fb_Timer                    TON   ??              fbTimerW                    TOF   ??              rDataM             ??                 Group_Address                 EIB_GROUP_ADDR  ??              rData            ??              str_Rec                         EIB_REC  ??                 bError            ??              iErrorID               EIB_ERROR_CODE  ??	                       0n?L  ?   ????           EIB_4OCTET_SIGN_REC           uiData_1            ??              uiData_2            ??                 Group_Address                 EIB_GROUP_ADDR  ??              strData_Rec                         EIB_REC  ??                 bDataReceive            ??              uiData           ??                       0n?L  ?   ????           EIB_4OCTET_SIGN_SEND           Cycle            ??              str_Send                    EIB_SEND   ??              i            ??           
   FirstCycle            ??              uiDataM            ??              bSend             ??              fb_Timer                    TON   ??              fbTimerW                    TOF   ??                 Group_Address                 EIB_GROUP_ADDR  ??              uiData           ??              str_Rec                         EIB_REC  ??                 bError            ??              iErrorID               EIB_ERROR_CODE  ??	                       0n?L  ?   ????           EIB_4OCTET_UNSIGN_REC           uiData_1            ??              uiData_2            ??                 Group_Address                 EIB_GROUP_ADDR  ??              strData_Rec                         EIB_REC  ??                 bDataReceive            ??              uiData           ??                       0n?L  ?   ????           EIB_4OCTET_UNSIGN_SEND           Cycle            ??              str_Send                    EIB_SEND   ??              i            ??           
   FirstCycle            ??              uiDataM            ??              bSend             ??              fb_Timer                    TON   ??              fbTimerW                    TOF   ??                 Group_Address                 EIB_GROUP_ADDR  ??              uiData           ??              str_Rec                         EIB_REC  ??                 bError            ??              iErrorID               EIB_ERROR_CODE  ??	                       0n?L  ?   ????           EIB_4OCTETSIGN_TO_DINT           result            ??              Value   	                          ??              ValueM            ??           	   Index7001                            pINPUT           ??                 EIB_4OctetSign_TO_DINT                                     0n?L  ?   ????           EIB_4OCTETUNSIGN_TO_UDINT           result            ??              Value   	                          ??              ValueM            ??           	   Index7001                            pINPUT           ??                 EIB_4OctetUnsign_TO_UDINT                                     0n?L  ?   ????           EIB_8BIT_SIGN_REC               Group_Address                 EIB_GROUP_ADDR  ??              Scaling_Mode           ??       #   0 - 0..100%, 1- 0..360?, 2- 0..255    strData_Rec                         EIB_REC  ??                 bDataReceive            ??              iData           ??	                       0n?L  ?   ????           EIB_8BIT_SIGN_SEND           Cycle            ??              str_Send                    EIB_SEND   ??              i            ??              bSend             ??              fb_Timer                    TON   ??              iDataM            ??              fbTimerW                    TOF   ??              iDataS            ??                 Group_Address                 EIB_GROUP_ADDR  ??              iData           ??              Scaling_Mode           ??       #   0 - 0..100%, 1- 0..360?, 2- 0..255    str_Rec                         EIB_REC  ??                 bError            ??	              iErrorID               EIB_ERROR_CODE  ??
                       0n?L  ?   ????           EIB_8BIT_SIGN_SEND_EX           str_Send                    EIB_SEND   ??              i            ??              bSend             ??              fb_Timer                    TON   ??              iDataM            ??              fbTimerW                    TOF   ??              iDataS            ??              fbFlanke                 R_TRIG   ??                 bStart            ??           Activate FB    iMode           ??       !    0-Manuel, 1-polling, 2-OnChange    Group_Address                 EIB_GROUP_ADDR  ??              iData           ??              Scaling_Mode           ??       $    0 - 0..100%, 1- 0..360?, 2- 0..255    str_Rec                         EIB_REC  ??              CyclePolling    ?     ??	           IF iMode=1, MIN: 200ms    MinSendTime    ?     ??
                 bBusy            ??              bError            ??              iErrorID               EIB_ERROR_CODE  ??                       0n?L  ?   ????           EIB_8BIT_UNSIGN_REC               Group_Address                 EIB_GROUP_ADDR  ??              strData_Rec                         EIB_REC  ??                 bDataReceive            ??              byData           ??                       0n?L  ?   ????           EIB_8BIT_UNSIGN_SEND           Cycle            ??              str_Send                    EIB_SEND   ??              i            ??              bSend             ??              fb_Timer                    TON   ??              fbTimerW                    TOF   ??              byDataM            ??                 Group_Address                 EIB_GROUP_ADDR  ??              byData           ??              str_Rec                         EIB_REC  ??                 bError            ??              iErrorID               EIB_ERROR_CODE  ??	                       0n?L  ?   ????           EIB_8BIT_UNSIGN_SEND_EX           str_Send                    EIB_SEND   ??              i            ??              bSend             ??              fb_Timer                    TON   ??              fbTimerW                    TOF   ??              byDataM            ??              fbFlanke                 R_TRIG   ??                 bStart            ??              iMode           ??          0-Manuel, 1-polling, 2-OnChange   Group_Address                 EIB_GROUP_ADDR  ??              byData           ??              str_Rec                         EIB_REC  ??              CyclePolling    ?     ??              MinSendTime    ?     ??	                 bBusy            ??              bError            ??              iErrorID               EIB_ERROR_CODE  ??                       0n?L  ?   ????           EIB_ALL_DATA_TYPES_REC               Group_Address                 EIB_GROUP_ADDR  ??              strData_Rec                         EIB_REC  ??                 bDataReceive            ??              EIB_Data_Receive   	                        ??              EIB_Data_Len           ??	                       0n?L  ?   ????           EIB_ALL_DATA_TYPES_REC_EX               strData_Rec                         EIB_REC  ??                 bDataReceive            ??              Group_Address                 EIB_GROUP_ADDR  ??              EIB_Data_Receive   	                        ??              EIB_Data_Len           ??	                       0n?L  ?   ????           EIB_ALL_DATA_TYPES_SEND           str_Send                    EIB_SEND   ??              i            ??              bSend             ??              fb_Timer                    TON   ??              fbTimerW                    TOF   ??              DATA_M   	                         ??              Result            ??              fbFlanke                 R_TRIG   ??           	      bStart            ??              iMode           ??          0-Manuel, 1-polling, 2-OnChange   Group_Address                 EIB_GROUP_ADDR  ??              DATA   	                        ??              EIB_Data_Len          ??              PRIORITY          EIB_PRIORITY_LOW       EIB_PRIORITY  ??              CyclePolling    d      ??	              MinSendTime    ?     ??
              str_Rec                         EIB_REC  ??                 bBusy            ??              bError            ??              iErrorID               EIB_ERROR_CODE  ??                       0n?L  ?   ????           EIB_BIT_CONTROL_REC               Group_Address                 EIB_GROUP_ADDR  ??              strData_Rec                         EIB_REC  ??                 bDataReceive            ??              bControl            ??              bValue            ??	                       0n?L  ?   ????           EIB_BIT_CONTROL_SEND     	      Cycle            ??              str_Send                    EIB_SEND   ??              i            ??           	   bControlM             ??              bValueM             ??              bSend             ??              fb_Timer                    TON   ??           
   FirstCycle            ??              fbTimerW                    TOF   ??                 Group_Address                 EIB_GROUP_ADDR  ??              bControl            ??              bValue            ??              str_Rec                         EIB_REC  ??                 bError            ??	              iErrorID               EIB_ERROR_CODE  ??
                       0n?L  ?   ????           EIB_BIT_REC               Group_Address                 EIB_GROUP_ADDR  ??              strData_Rec                         EIB_REC  ??                 bDataReceive            ??              bData            ??                       0n?L  ?   ????           EIB_BIT_SEND           Cycle            ??              str_Send                    EIB_SEND   ??              i            ??              bDataM             ??              bSend             ??              fb_Timer                    TON   ??           
   FirstCycle            ??              fbTimerW                    TOF   ??                 Group_Address                 EIB_GROUP_ADDR  ??              bData            ??              str_Rec                         EIB_REC  ??                 bError            ??              iErrorID               EIB_ERROR_CODE  ??	                       0n?L  ?   ????           EIB_BIT_SEND_MANUAL           str_Send                    EIB_SEND   ??              i            ??              bSend_M             ??           	   fb_Flanke                 R_TRIG   ??                 Group_Address                 EIB_GROUP_ADDR  ??              bSend            ??              bData            ??              str_Rec                         EIB_REC  ??                 bBusy            ??	              bError            ??
              iErrorID               EIB_ERROR_CODE  ??                       0n?L  ?   ????           EIB_DATE_REC               Group_Address                 EIB_GROUP_ADDR  ??              strData_Rec                         EIB_REC  ??                 bDataReceive            ??              wDay           ??              wMonth           ??	              wYear           ??
                       0n?L  ?   ????           EIB_DATE_SEND           Cycle    ??     ??              str_Send                    EIB_SEND   ??              i            ??           
   FirstCycle             ??              bSend             ??              fb_Timer                    TON   ??              wYear_            ??                 Group_Address                 EIB_GROUP_ADDR  ??              wDay           ??              wMonth           ??              wYear           ??              str_Rec                         EIB_REC  ??                 bError            ??
              iErrorID               EIB_ERROR_CODE  ??                       0n?L  ?   ????           EIB_FLOAT_TO_REAL           result            ??              Value   	                          ??              M1            ??           	   Index7001                            pINPUT           ??                 EIB_FLOAT_TO_REAL                                      0n?L  ?   ????           EIB_READ_SEND           str_Send                    EIB_SEND   ??              i            ??              fbFlanke                 R_TRIG   ??                 Group_Address                 EIB_GROUP_ADDR  ??              bRead            ??              str_Rec                         EIB_REC  ??                 bError            ??              iErrorID               EIB_ERROR_CODE  ??	              bBusy            ??
                       0n?L  ?   ????           EIB_STRING_TO_STRING           result            ??                 pINPUT           ??                 EIB_STRING_TO_STRING                                         0n?L  ?   ????           EIB_TIME_REC               Group_Address                 EIB_GROUP_ADDR  ??              strData_Rec                         EIB_REC  ??                 bDataReceive            ??              wHoure           ??              wMinute           ??	              wSecond           ??
                       0n?L  ?   ????           EIB_TIME_SEND           Cycle    ??     ??              str_Send                    EIB_SEND   ??              i            ??           
   FirstCycle             ??              bSend             ??              fb_Timer                    TON   ??                 Group_Address                 EIB_GROUP_ADDR  ??              wHoure           ??              wMinute           ??              wSecond           ??              str_Rec                         EIB_REC  ??                 bError            ??
              iErrorID               EIB_ERROR_CODE  ??                       0n?L  ?   ????        !   EIB_TWO_OCTET_FLOAT_VALUE_TO_REAL           result            ??              Value            ??              Exp_            ??              Value_            ??	                 pINPUT           ??              !   EIB_Two_Octet_Float_Value_TO_REAL                                      0n?L  ?   ????           F_CONV_2GROUP_TO_3GROUP               IN                EIB_GROUP_ADDR_2GROUP  ??                 F_CONV_2GROUP_TO_3GROUP                 EIB_GROUP_ADDR                            0n?L  ?   ????           F_CONV_3GROUP_TO_2GROUP               IN                 EIB_GROUP_ADDR  ??                 F_CONV_3GROUP_TO_2GROUP                EIB_GROUP_ADDR_2GROUP                            0n?L  ?   ????           KL6301     $      wWriteGroupAddr                 EIB_GROUP_ADDR   ??           
   pWriteData            ??              EIB_PRIORITY          EIB_PRIORITY_LOW       EIB_PRIORITY   ??              uiLen            ??           	   pReadData            ??              bWrite             ??           Send write    bRead             ??          -------
   bWriteBusy             ??!           	   bReadBusy             ??"              bReceiveData             ??#              iLenDataRead            ??$              GroupReceive                 EIB_GROUP_ADDR   ??%          -------   str_Send                    EIB_SEND   ??(              i            ??)              t            ??*              Result            ??+           	   fbFlankeW                 R_TRIG   ??,              Merker            ??-           	   fbFlankeR                 R_TRIG   ??.              iLenDataReadM            ??/              m           ??0           	   fbTimerTP                    TON   ??1              w            ??2              GroupID            ??3              Read_EIB_Typ               EIB_Read_Typ   ??4              fbTimerStart                    TON   ??5              CounterEIB_Rec            ??6              fbTimer_EIB_REC                    TON   ??7           
   RecPercent            ??8              FW            ??9              Filter           ??:           
   Filter_len    @       ??;              i_Filter            ??<              fbTimerWatchdog                    TON   ??=              iWarningCnt            ??>           	   Data_Diag   	                         ???              	   bActivate            ??              idx          ??              EIB_PHYS_ADDR                 EIB_PHYS_ADDR  ??           address from the KL6301   EIB_GROUP_FILTER   	                     EIB_GROUP_FILTER          ??              iMode           ??       <    "0" Group Filer 4/64, "1" Group Filter 8/32, "100" monitor       bActive            ??
              bReady            ??              bError            ??              iErrorId               EIB_Error_Code  ??              str_Data_Rec                         EIB_REC  ??              	   KL6301_IN    	                       ??           
   KL6301_OUT    	                       ??                   0n?L  ?   ????           KL6301_PROFESSIONAL           str_Send                    EIB_SEND   ??!              i            ??"              t            ??#              Result            ??$           	   fbFlankeW                 R_TRIG   ??%              Merker            ??&           	   fbFlankeR                 R_TRIG   ??'              iLenDataReadM            ??(              m           ??)           	   fbTimerTP                    TON   ??*              w            ??+              GroupID            ??,              Read_EIB_Typ               EIB_Read_Typ   ??-              fbTimerStart                    TON   ??.              CounterEIB_Rec            ??/              fbTimer_EIB_REC                    TON   ??0           
   RecPercent            ??1           
   	   bActivate            ??              bWrite            ??           Send write    bRead            ??           Send read    EIB_PHYS_ADDR                 EIB_PHYS_ADDR  ??           address from the KL6301   EIB_GROUP_FILTER   	                     EIB_GROUP_FILTER          ??              wWriteGroupAddr                 EIB_GROUP_ADDR  ??           
   pWriteData           ??	              EIB_PRIORITY          EIB_PRIORITY_LOW       EIB_PRIORITY  ??
              uiLen           ??           	   pReadData           ??           
      bActive            ??           
   bWriteBusy            ??           	   bReadBusy            ??              bReceiveData            ??              bReady            ??              bError            ??              iErrorId               EIB_Error_Code  ??              iLenDataRead           ??              GroupReceive                 EIB_GROUP_ADDR  ??              str_Data_Rec                         EIB_REC  ??              	   KL6301_IN    	                       ??           
   KL6301_OUT    	                       ??                   0n?L  ?   ????           KL6301_VERSION                   KL6301_Version    Q       Q                              0n?L  ?   ????           REAL_TO_EIB_FLOAT           result            ??              Data   	                          ??              M1            ??	           	   Index7001                            Value            ??              pDest           ??                 REAL_TO_EIB_FLOAT                                     0n?L  ?   ????           REAL_TO_TWO_OCTET_FLOAT_VALUE        	   ValueDINT            ??              Value_            ??              result            ??	              Value_1            ??
              SetMinus             ??                 Value            ??              pDest           ??                 REAL_TO_Two_Octet_Float_Value                                     0n?L  ?   ????           STRING_TO_EIB_STRING           result            ??                 Value               ??              pDest           ??                 STRING_TO_EIB_STRING                                     0n?L  ?   ????           UDINT_TO_EIB_4OCTETUNSIGN           result            ??              Data   	                          ??              DataM            ??	           	   Index7001                            Value           ??              pDest           ??                 UDINT_TO_EIB_4OctetUnsign                                     0n?L  ?   ????    R    @                                                                                       	   AUTORESET           AutoResetCX        	            	   PLC_Reset   ?              AutoStartCX        	            	   PLC_Start   ?                               Y?Z  @   ????        	   CALCPOWER        
   koef_power       ?   0.5    ?               koef_voltage    ???=   0.1    ?               koef_current    
ף;   0.005    ?                                ?Z  @   ????        
   CHECKLIGHT           ADSWRITE                                FW_AdsWrite   ?               timer                    TON   ?               ttimer1                    TOF   ?               timer2                    TON   ?               AdsWriteLandscape                                FW_AdsWrite   ? 	              timer2l                    TON   ? 
              timer22                    TON   ?               AdsWriteNight                                FW_AdsWrite   ?               timer23                    TON   ?               AdsWriteUOG                                FW_AdsWrite   ?               timer24                    TON   ?            	   ADSnew222                          ADSWRITE   ?               _ImpVar_242_312                                             ?Z  @   ????           FLETCHER_CHECKSUM           Data_massive1   	                             MB?                  %           Data_massive2   	  ?                          MB?                  %           i                          j                          Sum1                          Sum2                          Sum3            	              Sum4            
                               ?Z  @   ????           KNX_INIT     V      Group_1_1_1            (MAIN:=1,SUB_MAIN:=1,NUMBER:=1)                  EIB_GROUP_ADDR   ?               Group_1_1_2            (MAIN:=1,SUB_MAIN:=1,NUMBER:=2)                  EIB_GROUP_ADDR   ?               Group_1_1_3            (MAIN:=1,SUB_MAIN:=1,NUMBER:=3)                  EIB_GROUP_ADDR   ?               Group_1_1_4            (MAIN:=1,SUB_MAIN:=1,NUMBER:=4)                  EIB_GROUP_ADDR   ?               Group_1_1_5            (MAIN:=1,SUB_MAIN:=1,NUMBER:=5)                  EIB_GROUP_ADDR   ? 	              Group_1_1_6            (MAIN:=1,SUB_MAIN:=1,NUMBER:=6)                  EIB_GROUP_ADDR   ? 
              Group_1_1_7            (MAIN:=1,SUB_MAIN:=1,NUMBER:=7)                  EIB_GROUP_ADDR   ?               Group_1_1_8            (MAIN:=1,SUB_MAIN:=1,NUMBER:=8)                  EIB_GROUP_ADDR   ?               Group_1_1_9            (MAIN:=1,SUB_MAIN:=1,NUMBER:=9)            	      EIB_GROUP_ADDR   ?               Group_1_1_10       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=10)            
      EIB_GROUP_ADDR   ?               Group_1_1_11       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=11)                  EIB_GROUP_ADDR   ?               Group_1_1_12       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=12)                  EIB_GROUP_ADDR   ?               Group_1_1_13       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=13)                  EIB_GROUP_ADDR   ?               Group_1_1_14       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=14)                  EIB_GROUP_ADDR   ?               Group_1_1_15       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=15)                  EIB_GROUP_ADDR   ?               Group_1_1_16       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=16)                  EIB_GROUP_ADDR   ?               Group_1_1_17       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=17)                  EIB_GROUP_ADDR   ?               Group_1_1_18       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=18)                  EIB_GROUP_ADDR   ?               Group_1_1_19       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=19)                  EIB_GROUP_ADDR   ?               Group_1_1_20       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=20)                  EIB_GROUP_ADDR   ?               Group_1_1_21       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=21)                  EIB_GROUP_ADDR   ?               Group_1_1_22       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=22)                  EIB_GROUP_ADDR   ?               Group_1_1_23       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=23)                  EIB_GROUP_ADDR   ?               Group_1_1_24       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=24)                  EIB_GROUP_ADDR   ?               Group_1_1_25       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=25)                  EIB_GROUP_ADDR   ?               Group_1_1_26       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=26)                  EIB_GROUP_ADDR   ?               Group_1_1_27       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=27)                  EIB_GROUP_ADDR   ?               Group_1_1_28       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=28)                  EIB_GROUP_ADDR   ?                Group_1_1_29       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=29)                  EIB_GROUP_ADDR   ? !              Group_1_1_30       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=30)                  EIB_GROUP_ADDR   ? "              Group_1_1_31       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=31)                  EIB_GROUP_ADDR   ? #              Group_1_1_32       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=32)                   EIB_GROUP_ADDR   ? $              Group_1_1_33       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=33)            !      EIB_GROUP_ADDR   ? %              Group_1_1_34       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=34)            "      EIB_GROUP_ADDR   ? &              Group_1_1_35       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=35)            #      EIB_GROUP_ADDR   ? '              Group_1_1_36       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=36)            $      EIB_GROUP_ADDR   ? (              Group_1_1_37       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=37)            %      EIB_GROUP_ADDR   ? )              Group_1_1_38       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=38)            &      EIB_GROUP_ADDR   ? *              KNXSYSTEM_WEATHERST_BRIGHTNES_L            (MAIN:=5,SUB_MAIN:=1,NUMBER:=2)                  EIB_GROUP_ADDR   ? +              KNXSYSTEM_WEATHERST_BRIGHTNES_C            (MAIN:=5,SUB_MAIN:=1,NUMBER:=3)                  EIB_GROUP_ADDR   ? ,              KNXSYSTEM_WEATHERST_BRIGHTNES_R            (MAIN:=5,SUB_MAIN:=1,NUMBER:=4)                  EIB_GROUP_ADDR   ? -              KNXSYSTEM_WEATHERST_ISDAY            (MAIN:=5,SUB_MAIN:=1,NUMBER:=6)                  EIB_GROUP_ADDR   ? .              KNXSYSTEM_WEATHERST_ISTWILIGHT       !    (MAIN:=5,SUB_MAIN:=1,NUMBER:=40)            (      EIB_GROUP_ADDR   ? /              init1        	               EIB_READ_SEND   ? 1              init2        	               EIB_READ_SEND   ? 2              init4        	               EIB_READ_SEND   ? 3              init3        	               EIB_READ_SEND   ? 4              init5        	               EIB_READ_SEND   ? 5              init6        	               EIB_READ_SEND   ? 6              init7        	               EIB_READ_SEND   ? 7              init8        	               EIB_READ_SEND   ? 8              init9        	               EIB_READ_SEND   ? 9              init10        	               EIB_READ_SEND   ? :              init11        	               EIB_READ_SEND   ? ;              init12        	               EIB_READ_SEND   ? <              init24        	               EIB_READ_SEND   ? =              init23        	               EIB_READ_SEND   ? >              init22        	               EIB_READ_SEND   ? ?              init21        	               EIB_READ_SEND   ? @              init20        	               EIB_READ_SEND   ? A              init19        	               EIB_READ_SEND   ? B              init13        	               EIB_READ_SEND   ? C              init14        	               EIB_READ_SEND   ? D              init15        	               EIB_READ_SEND   ? E              init16        	               EIB_READ_SEND   ? F              init17        	               EIB_READ_SEND   ? G              init18        	               EIB_READ_SEND   ? H              init25        	               EIB_READ_SEND   ? I              init26        	               EIB_READ_SEND   ? J              init27        	               EIB_READ_SEND   ? K              init28        	               EIB_READ_SEND   ? L              init29        	               EIB_READ_SEND   ? M              init30        	               EIB_READ_SEND   ? N              init31        	               EIB_READ_SEND   ? O              init32        	               EIB_READ_SEND   ? P              init33        	               EIB_READ_SEND   ? Q              init34        	               EIB_READ_SEND   ? R              init35        	               EIB_READ_SEND   ? S              init36        	               EIB_READ_SEND   ? T              init37        	               EIB_READ_SEND   ? U              init38        	               EIB_READ_SEND   ? V              init39        	               EIB_READ_SEND   ? W              init40        	               EIB_READ_SEND   ? X              init41        	               EIB_READ_SEND   ? Y              init42        	               EIB_READ_SEND   ? Z              init43        	               EIB_READ_SEND   ? [                               ?Z  @   ????           MAIN     	      fbReadCoils                                FB_MBReadCoils                
   bReadCoils                             nValue                         CX Controller    fb_KL6301_0        0                                                      KL6301                EIB functonblock    i                         CASE    EIB_DATA_SEND_0                             EIB_SEND_DATA                	   fbTimer_0                    TON                   TimerOn                             FLAG_01                                             ?Z  @   ????           MAIN_EIB_REC     Z      EIB_BIT_REC_0                  EIB_BIT_REC   R        >  	EIB_BIT_REC_1: EIB_BIT_REC;
	EIB_REAL_REC_0:EIB_2OCTET_FLOAT_REC;
	EIB_REAL_REC_Temp:EIB_2OCTET_FLOAT_REC;
	EIB_8Bit:EIB_8BIT_SIGN_REC;
	EIB_3Bit:EIB_3BIT_CONTROL_REC;
	EIB_3Bit_1:EIB_3BIT_CONTROL_REC;
	EIB_2BYTE_UINT:EIB_2OCTET_UNSIGN_REC;
	EIB_4UDINT:EIB_4OCTET_SIGN_REC;
	EIB_4Float:EIB_4OCTET_FLOAT_REC;     Group_1_1_1            (MAIN:=1,SUB_MAIN:=1,NUMBER:=1)                  EIB_GROUP_ADDR   R               Group_1_1_2            (MAIN:=1,SUB_MAIN:=1,NUMBER:=2)                  EIB_GROUP_ADDR   R               Group_1_1_3            (MAIN:=1,SUB_MAIN:=1,NUMBER:=3)                  EIB_GROUP_ADDR   R               Group_1_1_4            (MAIN:=1,SUB_MAIN:=1,NUMBER:=4)                  EIB_GROUP_ADDR   R               Group_1_1_5            (MAIN:=1,SUB_MAIN:=1,NUMBER:=5)                  EIB_GROUP_ADDR   R               Group_1_1_6            (MAIN:=1,SUB_MAIN:=1,NUMBER:=6)                  EIB_GROUP_ADDR   R               Group_1_1_7            (MAIN:=1,SUB_MAIN:=1,NUMBER:=7)                  EIB_GROUP_ADDR   R               Group_1_1_8            (MAIN:=1,SUB_MAIN:=1,NUMBER:=8)                  EIB_GROUP_ADDR   R               Group_1_1_9            (MAIN:=1,SUB_MAIN:=1,NUMBER:=9)            	      EIB_GROUP_ADDR   R               Group_1_1_10       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=10)            
      EIB_GROUP_ADDR   R               Group_1_1_11       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=11)                  EIB_GROUP_ADDR   R               Group_1_1_12       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=12)                  EIB_GROUP_ADDR   R               Group_1_1_13       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=13)                  EIB_GROUP_ADDR   R               Group_1_1_14       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=14)                  EIB_GROUP_ADDR   R               Group_1_1_15       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=15)                  EIB_GROUP_ADDR   R               Group_1_1_16       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=16)                  EIB_GROUP_ADDR   R               Group_1_1_17       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=17)                  EIB_GROUP_ADDR   R               Group_1_1_18       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=18)                  EIB_GROUP_ADDR   R                Group_1_1_19       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=19)                  EIB_GROUP_ADDR   R !              Group_1_1_20       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=20)                  EIB_GROUP_ADDR   R "              Group_1_1_21       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=21)                  EIB_GROUP_ADDR   R #              Group_1_1_22       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=22)                  EIB_GROUP_ADDR   R $              Group_1_1_23       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=23)                  EIB_GROUP_ADDR   R %              Group_1_1_24       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=24)                  EIB_GROUP_ADDR   R &              Group_1_1_25       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=25)                  EIB_GROUP_ADDR   R '              Group_1_1_26       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=26)                  EIB_GROUP_ADDR   R (              Group_1_1_27       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=27)                  EIB_GROUP_ADDR   R )              Group_1_1_28       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=28)                  EIB_GROUP_ADDR   R *              Group_1_1_29       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=29)                  EIB_GROUP_ADDR   R +       Z   zdes bilo MAIN:=5,SUB_MAIN:=1,NUMBER:=6. Sozdal otdelnuyu peremennuyu s etim adresom nizhe   Group_1_1_30       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=30)                  EIB_GROUP_ADDR   R ,              Group_1_1_31       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=31)                  EIB_GROUP_ADDR   R .              Group_1_1_32       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=32)                   EIB_GROUP_ADDR   R /              Group_1_1_33       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=33)            !      EIB_GROUP_ADDR   R 0              Group_1_1_34       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=34)            "      EIB_GROUP_ADDR   R 1              Group_1_1_35       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=35)            #      EIB_GROUP_ADDR   R 2              Group_1_1_36       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=36)            $      EIB_GROUP_ADDR   R 3              Group_1_1_37       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=37)            %      EIB_GROUP_ADDR   R 4              Group_1_1_38       !    (MAIN:=1,SUB_MAIN:=1,NUMBER:=38)            &      EIB_GROUP_ADDR   R 5              KNXSYSTEM_WEATHERST_BRIGHTNES_L            (MAIN:=5,SUB_MAIN:=1,NUMBER:=2)                  EIB_GROUP_ADDR   R 7              KNXSYSTEM_WEATHERST_BRIGHTNES_C            (MAIN:=5,SUB_MAIN:=1,NUMBER:=3)                  EIB_GROUP_ADDR   R 8              KNXSYSTEM_WEATHERST_BRIGHTNES_R            (MAIN:=5,SUB_MAIN:=1,NUMBER:=4)                  EIB_GROUP_ADDR   R 9              KNXSYSTEM_WEATHERST_ISTWILIGHT       !    (MAIN:=5,SUB_MAIN:=1,NUMBER:=40)            (      EIB_GROUP_ADDR   R :              KNXSYSTEM_WEATHERST_ISDAY            (MAIN:=5,SUB_MAIN:=1,NUMBER:=6)                  EIB_GROUP_ADDR   R ;              EIB_BIT_REC_1                  EIB_BIT_REC   R =              EIB_BIT_REC_2                  EIB_BIT_REC   R >              EIB_BIT_REC_3                  EIB_BIT_REC   R ?              EIB_BIT_REC_4                  EIB_BIT_REC   R @              EIB_BIT_REC_5                  EIB_BIT_REC   R A              EIB_BIT_REC_6                  EIB_BIT_REC   R B              EIB_BIT_REC_7                  EIB_BIT_REC   R C              EIB_BIT_REC_8                  EIB_BIT_REC   R D              EIB_BIT_REC_9                  EIB_BIT_REC   R E              EIB_BIT_REC_10                  EIB_BIT_REC   R F              EIB_BIT_REC_11                  EIB_BIT_REC   R G              EIB_BIT_REC_12                  EIB_BIT_REC   R H              EIB_BIT_REC_13                  EIB_BIT_REC   R I              EIB_BIT_REC_14                  EIB_BIT_REC   R J              EIB_BIT_REC_15                  EIB_BIT_REC   R K              EIB_BIT_REC_16                  EIB_BIT_REC   R L              EIB_BIT_REC_17                  EIB_BIT_REC   R M              EIB_BIT_REC_18                  EIB_BIT_REC   R N              EIB_BIT_REC_19                  EIB_BIT_REC   R O              EIB_BIT_REC_20                  EIB_BIT_REC   R P              EIB_BIT_REC_21                  EIB_BIT_REC   R Q              EIB_BIT_REC_22                  EIB_BIT_REC   R R              EIB_BIT_REC_23                  EIB_BIT_REC   R S              EIB_BIT_REC_24                  EIB_BIT_REC   R T              EIB_BIT_REC_25                  EIB_BIT_REC   R U              EIB_BIT_REC_26                  EIB_BIT_REC   R V              EIB_BIT_REC_27                  EIB_BIT_REC   R W              EIB_BIT_REC_28                  EIB_BIT_REC   R X              EIB_BIT_REC_29                  EIB_BIT_REC   R Y              EIB_BIT_REC_30                  EIB_BIT_REC   R Z              EIB_BIT_REC_31                  EIB_BIT_REC   R [              EIB_BIT_REC_32                  EIB_BIT_REC   R \              EIB_BIT_REC_33                  EIB_BIT_REC   R ]              EIB_BIT_REC_34                  EIB_BIT_REC   R ^              EIB_BIT_REC_35                  EIB_BIT_REC   R _              EIB_BIT_REC_36                  EIB_BIT_REC   R `              EIB_BIT_REC_37                  EIB_BIT_REC   R a              EIB_BIT_REC_38                  EIB_BIT_REC   R b              EIB_BIT_REC_39                  EIB_BIT_REC   R c              EIB_BIT_REC_40                  EIB_BIT_REC   R d              EIB_BIT_REC_41                  EIB_BIT_REC   R e              EIB_ALL_DATA_TYPES_REC_40                    EIB_4OCTET_SIGN_REC   R f              EIB_ALL_DATA_TYPES_REC_41                    EIB_4OCTET_SIGN_REC   R g              EIB_ALL_DATA_TYPES_REC_42                    EIB_4OCTET_SIGN_REC   R h              fb_GetTi        	            
   NT_GetTime   R i              Timer1                    TON   R j                               ?Z  @   ????        
   PEERTOPEER           rHOST_IP          192.168.3.204                
   rHOST_port    	?                 
   lHOST_port    #?                    fbSockClAll        	               FB_SocketCloseAll                 fbSockUdpCr                            FB_SocketUdpCreate              	   UdpSocket              	   T_HSocket                 fbSockUdpRecFr                              FB_SocketUdpReceiveFrom   	              fbSockUdpST                             FB_SocketUdpSendTo   
              fbSockUdpSTConf                             FB_SocketUdpSendTo                 Timer1                    TON                 Timer2                    TON                 HandleString    Q       Q                   Timer3                    TON                 _ImpVar_790_29                            _ImpVar_790_76                                             ?Z  @   ????           POWER_OFF_TEST            init            ?            
   test_power      ?A   20.0    ?               test_power_new      HB   50    ?               test_power_first      hB   58    ?            
   time_limit      ??   1    ?               my_time           0    ?               flag             ?               start             ?            Central function. All Off Garage   Group_3_1_0            (MAIN:=3,SUB_MAIN:=1,NUMBER:=0)                   EIB_GROUP_ADDR   ?                Group_3_1_1            (MAIN:=3,SUB_MAIN:=1,NUMBER:=1)                  EIB_GROUP_ADDR   ? !              Group_3_1_2            (MAIN:=3,SUB_MAIN:=1,NUMBER:=2)                  EIB_GROUP_ADDR   ? "              Group_3_1_3            (MAIN:=3,SUB_MAIN:=1,NUMBER:=3)                  EIB_GROUP_ADDR   ? #              Group_3_1_4            (MAIN:=3,SUB_MAIN:=1,NUMBER:=4)                  EIB_GROUP_ADDR   ? $              Group_3_1_5            (MAIN:=3,SUB_MAIN:=1,NUMBER:=5)                  EIB_GROUP_ADDR   ? %              Group_3_1_6            (MAIN:=3,SUB_MAIN:=1,NUMBER:=6)                  EIB_GROUP_ADDR   ? &              Group_3_1_7            (MAIN:=3,SUB_MAIN:=1,NUMBER:=7)                  EIB_GROUP_ADDR   ? '              Group_3_1_8            (MAIN:=3,SUB_MAIN:=1,NUMBER:=8)                  EIB_GROUP_ADDR   ? (              Group_3_1_9            (MAIN:=3,SUB_MAIN:=1,NUMBER:=9)            	      EIB_GROUP_ADDR   ? )              Group_3_1_10       !    (MAIN:=3,SUB_MAIN:=1,NUMBER:=10)            
      EIB_GROUP_ADDR   ? *              Group_3_1_11       !    (MAIN:=3,SUB_MAIN:=1,NUMBER:=11)                  EIB_GROUP_ADDR   ? +           	   EIB_SEND1                           EIB_BIT_SEND   ? -           	   EIB_SEND2                           EIB_BIT_SEND   ? .           	   EIB_SEND3                           EIB_BIT_SEND   ? /           	   EIB_SEND4                           EIB_BIT_SEND   ? 0           	   EIB_SEND5                           EIB_BIT_SEND   ? 1           	   EIB_SEND6                           EIB_BIT_SEND   ? 2           	   EIB_SEND7                           EIB_BIT_SEND   ? 3           	   EIB_SEND8                           EIB_BIT_SEND   ? 4           	   EIB_SEND9                           EIB_BIT_SEND   ? 5           
   EIB_SEND10                           EIB_BIT_SEND   ? 6           
   EIB_SEND11                           EIB_BIT_SEND   ? 7              counter            ? 9                               ?Z  @   ????           READADS           ReadADS                              
   FW_AdsRead   	              timer2                    TON   	              bBusy             	              bError             	              nErrId            	              cbRead            		              bBusy2             	              bError2             	              nErrId2            	              cbRead2            	           
   ReadLights                              
   FW_AdsRead   	              timer3                    TON   	              timer32                    TON   	              bBusy3             	              bError3             	           	   ReadSCHAV                              
   FW_AdsRead   	              SchAV_Muhamed                                FW_AdsWrite   	                               ?Z  @   ????           UDP_RECEIVE_PACKET_INIT           Checksum_rec                          k                          l                          i                          h                          g                          J            	                               ?Z  @   ????           UDP_SEND_PACKET_INIT           i                         j                         k                         l                                          ?Z  @   ????            
 ?           ?     ?   R   ?   	  ?           ?   ?      ( ?'     K   ?'    K   ?'    K   ?'    K   ?'                ?'        +     ??localhost A     3??w$?        ???? ?\?        ? ?>?w0 ?w????3??wX?    $? iA         X???          ???                 ? c?A    ?? `?  ??? h? L? ???wx?w????:??w$? iA        $? iA     4? ?? 4? ? ?? ??'???? ? ѹ?     ,   ,                                                        ?        @   ?Z?) /*BECKCONFI3*/
        !??? @   @   ?   ?     3               
   NeueTask     d   	PowerCalc     ?  AdsSend     ?   NewTask            	]?1]                       VAR_GLOBAL
END_VAR
                                                                                  "   , V  ??              NeueTask
         MAIN();????                	PowerCalcd        CalcPower();????                AdsSend?       CheckLight();????                NewTask?        POWER_OFF_TEST();
ReadADS();????               ]?1]                 $????, ? ? ??                                  Standard 6W?B	6W?B                                       	]?1]      ?&?&           VAR_CONFIG
END_VAR
                                                                                   '           ?   , ? ?J           Global_Variables_Power ]?1]	]?1]?     ?r??           ?  VAR_GLOBAL

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

                                                                                               '              , mb <?            Globale_Variablen ?Z	??Z                     ?  VAR_GLOBAL
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
	Temp_of_int AT %MB3006 : ARRAY[1..213] OF INT; (*??????? ?????? ????????? ? Force_udp_packet*)
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

	(*????????? ???????? ????????????*)
	CoolerByte		: BYTE;

	(* EIB terminal KL6301 process data 24 Byte input and 24 Byte output data K-Bus*)
	ShNOG_Garage_OG_22 AT %MB4 : BOOL:=FALSE;  (*???????????? ???????? ?? ?????? ??????????. ???? ? ?????? - ??????? ???????????? ?????? ?????? ABB KNX*)
	ShAV_Vent_V3 AT %MB5 : BOOL:=FALSE;  (*???????????? ???????? ?? ?????? ??????????. ???? ? ???????*)
	LightLandscape	: BOOL:=FALSE;  (*???????????? ???????? ?? ?????? ??????????. ???? ?????????*)
	LightNight AT %MB6 : BOOL := FALSE;  (*???????????? ???????? ?? ?????? ??????????. "????"*)
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
	LightGatesLight AT %MB7 : BOOL:=FALSE;  (*???????????? ???????? ?? ?????? ??????????. ??????????? ????? ????? ? ??????? ??????*)


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
                                                                                               '             , Z @ ??           Globale_Variablen_EIB ?Z	?Z                 ?  VAR_GLOBAL
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
                                                                                               '           ?   , ? ? ??           TwinCAT_Configuration ?Z	]?1]?     ?r?          K  (* Generated automatically by TwinCAT - (read only) *)
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
END_VAR                                                                                               '           	   , X t ??           Variable_Configuration ?Z	?Z	                        VAR_CONFIG
END_VAR
                                                                                                 E   |0|0 @;    @   Verdana @                ?????              ?                ?      ?   ???  ?3 ???   ? ???                  DEFAULT             System      K   |0|0 @A    @   MS Sans Serif @                ?????                         hh':'mm':'ss   dd'-'MM'-'yyyy'           c:\images\grsch-bg.jpg   , ?&m?           ST_FifoEntry ?Z	?Z                        TYPE ST_FifoEntry :
STRUCT
	sRemoteHost		: STRING(15);		(* Remote address. String containing an (Ipv4) Internet Protocol dotted address. *)
	nRemotePort		: UDINT;			(* Remote Internet Protocol (IP) port. *)
	msg				: STRING;			(* Udp packet data *)
END_STRUCT
END_TYPE               , m  <b            Udp_Confirm ?Z	?Z      ,	','0,	        ?   TYPE Udp_Confirm :
STRUCT
	title_packet_num : INT;
	title_packet_code : INT;
	title_packet_crc : INT;
	data_pointer : INT;
	data_new_value : INT;
END_STRUCT
END_TYPE               , m? <&        
   Udp_Packet ?Z	?Z      e.				C         V  TYPE Udp_Packet :
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
END_TYPE              ?  , ? ? ??        	   AutoReset ??Z	Y?Z      Id?? D         S   PROGRAM AutoReset
VAR
	AutoResetCX: PLC_Reset;
	AutoStartCX: PLC_Start;
END_VAR)    ????            
   RESET_EdgeL        ????                AutoResetCXI 	   PLC_Reset@             n                                                          n   ????               801     p   ????   
             AutoStartCXA 	   PLC_Start8             r   q                                                       q   ????            
   RESET_EdgeL     r   ????               801     d                  ?   , ?? m&        	   CalcPower ?Z	?Z                      v   PROGRAM CalcPower
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
KL3403_5_I := ABS(KL3403_5_P1 + KL3403_5_P2 + KL3403_5_P3)*koef_current/3;               ?   , ?b m?         
   CheckLight ?Z	?Z       R D            PROGRAM CheckLight
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
END_VAR) 9  ????      
         garage_OG_10\     :  ????      
         garage_OG_11\     =  ????               t#300s&     8  ????
                      OR         9  :                                  <  ????                ttimer1'    TOF         8  =                                      ;  ????      $         ShAV_Vent_V3[ <        a  ????      
         garage_OG_22\     b  ????      $         ShNOG_Garage_OG_22? a        B  ????   	      	      '192.168.3.223.1.1'i     C  ????   
      
      800     D  ????               16#40201     E  ????               10     F  ????               SIZEOF(SCHNOG)q     G  ????               ADR(SCHNOG)_     H  ????               t#900ms1     I  ????               t#10s     J  ????	                timer2l'    TON         J  H                                     K  ????      &          AdsWriteLandscape{    FW_AdsWriteS         B  C  D  E  F  G  J  I                                                                  V  ????               '192.168.3.223.1.1'i     W  ????               800     X  ????               16#F0212     Y  ????               16#64#     Z  ????               1     [  ????               ADR(LightGarageSecurity)?     ]  ????               t#10s     \  ????               t#900ms1     ^  ????                timer23+    TON         ^  \                                     _  ????      '          AdsWriteUOGU    FW_AdsWriteS         V  W  X  Y  Z  [  ^  ]                                                                  d                    , ?  mb            Fletcher_checksum ?Z	?Z      f? ?f?        ?   PROGRAM Fletcher_checksum
VAR
	Data_massive1 AT %MB756: ARRAY[1..4] OF BYTE;
	Data_massive2 AT %MB2006: ARRAY[1..424] OF BYTE;
	i: INT;
	j: INT;
	Sum1: INT;
	Sum2: INT;
	Sum3: INT;
	Sum4: INT;
END_VAR?  Checksum_send := 0;
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
Checksum_send := SHL(Sum4, 8) + Sum3;               ?   , ? &??           KNX_Init ?Z	?Z      IBRR_CE;          PROGRAM KNX_Init
VAR

(*????*)
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
END_VAR)?    ????               Group_1_1_1L        ????                init1    EIB_READ_SENDd                                                               ????      
         TRUE!        ????               MAIN.fb_KL6301_0.str_Data_Rec?     +  ????   	      	      Group_1_1_2L     ,  ????                init2    EIB_READ_SENDd         +  -  .                                              -  ????   
   
   
      TRUE!     .  ????               MAIN.fb_KL6301_0.str_Data_Rec?     /  ????               Group_1_1_3L     0  ????                init3    EIB_READ_SENDd         /  1  2                                              1  ????      
         TRUE!     2  ????               MAIN.fb_KL6301_0.str_Data_Rec?     3  ????               Group_1_1_4L     4  ????                init4    EIB_READ_SENDd         3  5  6                                              5  ????      
         TRUE!     6  ????               MAIN.fb_KL6301_0.str_Data_Rec?     7  ????               Group_1_1_5L     8  ????                init5    EIB_READ_SENDd         7  9  :                                              9  ????      
         TRUE!     :  ????               MAIN.fb_KL6301_0.str_Data_Rec?     ;  ????               Group_1_1_6L     <  ????                 init6    EIB_READ_SENDd         ;  =  >                                              =  ????      
         TRUE!     >  ????               MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????&      ,         Group_1_1_7L     @  ????3      @          init7    EIB_READ_SENDd         ?  A  B                                              A  ????(      +         TRUE!     B  ????%      1         MAIN.fb_KL6301_0.str_Data_Rec?     C  ????&   	   ,   	      Group_1_1_8L     D  ????3      @          init8    EIB_READ_SENDd         C  E  F                                              E  ????(   
   +   
      TRUE!     F  ????%      1         MAIN.fb_KL6301_0.str_Data_Rec?     G  ????&      ,         Group_1_1_9L     H  ????3      @          init9    EIB_READ_SENDd         G  I  J                                              I  ????(      +         TRUE!     J  ????%      1         MAIN.fb_KL6301_0.str_Data_Rec?     K  ????&      ,         Group_1_1_10S     L  ????3      @          init10    EIB_READ_SENDd         K  M  N                                              M  ????(      +         TRUE!     N  ????&      2         MAIN.fb_KL6301_0.str_Data_Rec?     O  ????&      ,         Group_1_1_11S     P  ????3      @          init11    EIB_READ_SENDd         O  Q  R                                              Q  ????(      +         TRUE!     R  ????&      2         MAIN.fb_KL6301_0.str_Data_Rec?     S  ????&      ,         Group_1_1_12S     T  ????3      @           init12    EIB_READ_SENDd         S  U  V                                              U  ????(      +         TRUE!     V  ????&      2         MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????   "      "      Group_1_1_13S     ?  ????          %       init13    EIB_READ_SENDd         ?  ?  ?                                              ?  ????   #   
   #      TRUE!     ?  ????   $      $      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????   '      '      Group_1_1_14S     ?  ????   %      *       init14    EIB_READ_SENDd         ?  ?  ?                                              ?  ????   (   
   (      TRUE!     ?  ????   )      )      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????   ,      ,      Group_1_1_15S     ?  ????   *      /       init15    EIB_READ_SENDd         ?  ?  ?                                              ?  ????   -   
   -      TRUE!     ?  ????   .      .      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????   1      1      Group_1_1_16S     ?  ????   /      4       init16    EIB_READ_SENDd         ?  ?  ?                                              ?  ????   2   
   2      TRUE!     ?  ????   3      3      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????   6      6      Group_1_1_17S     ?  ????   4      9       init17    EIB_READ_SENDd         ?  ?  ?                                              ?  ????   7   
   7      TRUE!     ?  ????
   8      8      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????   ;      ;      Group_1_1_18S     ?  ????   9      >       init18    EIB_READ_SENDd         ?  ?  ?                                              ?  ????   <   
   <      TRUE!     ?  ????
   =      =      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????&   "   ,   "      Group_1_1_19S     ?  ????3       @   %       init19    EIB_READ_SENDd         ?  ?  ?                                              ?  ????(   #   +   #      TRUE!     ?  ????%   $   1   $      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????&   '   ,   '      Group_1_1_20S     ?  ????3   %   @   *       init20    EIB_READ_SENDd         ?  ?  ?                                              ?  ????(   (   +   (      TRUE!     ?  ????%   )   1   )      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????&   ,   ,   ,      Group_1_1_21S     ?  ????3   *   @   /       init21    EIB_READ_SENDd         ?  ?  ?                                              ?  ????(   -   +   -      TRUE!     ?  ????%   .   1   .      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????&   1   ,   1      Group_1_1_22S     ?  ????3   /   @   4       init22    EIB_READ_SENDd         ?  ?  ?                                              ?  ????(   2   +   2      TRUE!     ?  ????&   3   2   3      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????&   6   ,   6      Group_1_1_23S     ?  ????3   4   @   9       init23    EIB_READ_SENDd         ?  ?  ?                                              ?  ????(   7   +   7      TRUE!     ?  ????&   8   2   8      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????&   ;   ,   ;      Group_1_1_24S     ?  ????3   9   @   >       init24    EIB_READ_SENDd         ?  ?  ?                                              ?  ????(   <   +   <      TRUE!     ?  ????&   =   2   =      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????   B      B      Group_1_1_25S     ?  ????   @   (   E       init25    EIB_READ_SENDd         ?  ?  ?                                              ?  ????   C      C      TRUE!     ?  ????   D      D      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????   G      G      Group_1_1_26S     ?  ????   E   (   J       init26    EIB_READ_SENDd         ?  ?  ?                                              ?  ????   H      H      TRUE!     ?  ????   I      I      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????   L      L      Group_1_1_27S     ?  ????   J   (   O       init27    EIB_READ_SENDd         ?  ?  ?                                              ?  ????   M      M      TRUE!     ?  ????   N      N      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????   R      R      Group_1_1_28S     ?  ????   P   (   U       init28    EIB_READ_SENDd         ?  ?  ?                                              ?  ????   S      S      TRUE!     ?  ????   T      T      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????   X      X      Group_1_1_29S     ?  ????   V   (   [       init29    EIB_READ_SENDd         ?  ?  ?                                              ?  ????   Y      Y      TRUE!     ?  ????   Z      Z      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????   ^      ^      Group_1_1_30S     ?  ????   \   (   a       init30    EIB_READ_SENDd         ?  ?  ?                                              ?  ????   _      _      TRUE!     ?  ????   `      `      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????3   B   9   B      Group_1_1_31S     ?  ????@   @   M   E       init31    EIB_READ_SENDd         ?  ?  ?                                              ?  ????5   C   8   C      TRUE!     ?  ????3   D   ?   D      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????3   G   9   G      Group_1_1_32S     ?  ????@   E   M   J       init32    EIB_READ_SENDd         ?  ?  ?                                              ?  ????5   H   8   H      TRUE!     ?  ????3   I   ?   I      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????3   L   9   L      Group_1_1_33S     ?  ????@   J   M   O       init33    EIB_READ_SENDd         ?  ?  ?                                              ?  ????5   M   8   M      TRUE!     ?  ????3   N   ?   N      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????3   R   9   R      Group_1_1_34S     ?  ????@   P   M   U       init34    EIB_READ_SENDd         ?  ?  ?                                              ?  ????5   S   8   S      TRUE!     ?  ????3   T   ?   T      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????3   X   9   X      Group_1_1_35S     ?  ????@   V   M   [       init35    EIB_READ_SENDd         ?  ?  ?                                              ?  ????5   Y   8   Y      TRUE!     ?  ????3   Z   ?   Z      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????3   ^   9   ^      Group_1_1_36S     ?  ????@   \   M   a       init36    EIB_READ_SENDd         ?  ?  ?                                              ?  ????5   _   8   _      TRUE!     ?  ????3   `   ?   `      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????3   d   9   d      Group_1_1_37S     ?  ????@   b   M   g       init37    EIB_READ_SENDd         ?  ?  ?                                              ?  ????5   e   8   e      TRUE!     ?  ????3   f   ?   f      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????3   j   9   j      Group_1_1_38S     ?  ????@   h   M   m       init38    EIB_READ_SENDd         ?  ?  ?                                              ?  ????5   k   8   k      TRUE!     ?  ????3   l   ?   l      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????0   q   ?   q      KNXSYSTEM_WEATHERST_BRIGHTNES_L?     ?  ????@   o   M   t       init39    EIB_READ_SENDd         ?  ?  ?                                              ?  ????5   r   8   r      TRUE!     ?  ????3   s   ?   s      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????0   v   ?   v      KNXSYSTEM_WEATHERST_BRIGHTNES_C?     ?  ????@   t   M   y       init40    EIB_READ_SENDd         ?  ?  ?                                              ?  ????5   w   8   w      TRUE!     ?  ????3   x   ?   x      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????0   {   ?   {      KNXSYSTEM_WEATHERST_BRIGHTNES_R?     ?  ????@   y   M   ~       init41    EIB_READ_SENDd         ?  ?  ?                                              ?  ????5   |   8   |      TRUE!     ?  ????3   }   ?   }      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????1   ?   ?   ?      KNXSYSTEM_WEATHERST_ISTWILIGHT?        ????@   ~   M   ?       init42    EIB_READ_SENDd         ?                                                    ????5   ?   8   ?      TRUE!       ????3   ?   ?   ?      MAIN.fb_KL6301_0.str_Data_Rec?       ????3   ?   ?   ?      KNXSYSTEM_WEATHERST_ISDAY?       ????@   ?   M   ?       init43    EIB_READ_SENDd                                                             ????5   ?   8   ?      TRUE!       ????3   ?   ?   ?      MAIN.fb_KL6301_0.str_Data_Rec?     d                      , ? ? ?&           MAIN i?Z	?Z                      ?  PROGRAM MAIN
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
(*??????? ??? ????. ?? ??????? ????, ????????? *)
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
END_IF;               R   , ? b ??            Main_EIB_REC ?Z	?Z       ?V@         G  PROGRAM Main_EIB_REC
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
END_VAR)?    ????               Group_1_1_23S        ????               MAIN.fb_KL6301_0.str_Data_Rec?     ?   ????               Group_1_1_21S     ?   ????               Group_1_1_22S        ????                EIB_BIT_REC_0[    EIB_BIT_RECM                                                      ????&      ,         garage_OG_1N         ?   ????                EIB_BIT_REC_2[    EIB_BIT_RECM         ?                                          ?   ????&      ,         garage_OG_3N ?        ?   ????                EIB_BIT_REC_3[    EIB_BIT_RECM         ?                                          ?   ????&      ,         garage_OG_4N ?        ?   ????1      =         MAIN.fb_KL6301_0.str_Data_Rec?     ?   ????1   	   7   	      Group_1_1_14S     ?   ????1      7         Group_1_1_15S     ?   ????1      7         Group_1_1_27S     ?   ????>      K          EIB_BIT_REC_18b    EIB_BIT_RECM         ?   ?                                       ?   ????R   
   X   
      garage_OG_10U ?        ?   ????>      K          EIB_BIT_REC_19b    EIB_BIT_RECM         ?   ?                                       ?   ????R      X         garage_OG_11U ?        ?   ????>      K          EIB_BIT_REC_20b    EIB_BIT_RECM         ?   ?                                       ?   ????R      X         garage_OG_12U ?        ?   ????               Group_1_1_24S     ?   ????               MAIN.fb_KL6301_0.str_Data_Rec?     ?   ????               Group_1_1_18S     ?   ????   #      #      Group_1_1_19S     ?   ????   (      (      Group_1_1_20S     ?   ????                EIB_BIT_REC_4[    EIB_BIT_RECM         ?   ?                                       ?   ????&      ,         garage_OG_5N ?        ?   ????                 EIB_BIT_REC_5[    EIB_BIT_RECM         ?   ?                                       ?   ????&      ,         garage_OG_6N ?        ?   ????   !      %       EIB_BIT_REC_6[    EIB_BIT_RECM         ?   ?                                       ?   ????&   $   ,   $      garage_OG_7N ?        ?   ????   &      *       EIB_BIT_REC_7[    EIB_BIT_RECM         ?   ?                                       ?   ????&   )   ,   )      garage_OG_8N ?        ?   ????1      7         Group_1_1_16S     ?   ????1      =         MAIN.fb_KL6301_0.str_Data_Rec?     ?   ????1      7         Group_1_1_26S     ?   ????1   #   7   #      Group_1_1_17S     ?   ????1   (   7   (      Group_1_1_10S     ?   ????>      K          EIB_BIT_REC_21b    EIB_BIT_RECM         ?   ?                                       ?   ????R      X         garage_OG_13U ?        ?   ????>      K           EIB_BIT_REC_22b    EIB_BIT_RECM         ?   ?                                       ?   ????R      X         garage_OG_14U ?        ?   ????>   !   K   %       EIB_BIT_REC_23b    EIB_BIT_RECM         ?   ?                                       ?   ????R   $   X   $      garage_OG_15U ?        ?   ????>   &   K   *       EIB_BIT_REC_24b    EIB_BIT_RECM         ?   ?                                       ?   ????R   )   X   )      garage_OG_16U ?          ????0   .   <   .      MAIN.fb_KL6301_0.str_Data_Rec?       ????1   /   7   /      Group_1_1_1L       ????1   4   7   4      Group_1_1_2L     	  ????1   9   7   9      Group_1_1_3L       ????1   >   7   >      Group_1_1_4L       ????1   C   7   C      Group_1_1_28S       ????4   J   :   J      Group_1_1_29S     "  ????4   Y   :   Y      Group_1_1_30S       ????>   -   K   1       EIB_BIT_REC_25b    EIB_BIT_RECM                                                   ????R   0   X   0      garage_OG_21U          ????>   2   K   6       EIB_BIT_REC_26b    EIB_BIT_RECM                                                   ????R   5   X   5      garage_OG_22U          ????>   7   K   ;       EIB_BIT_REC_27b    EIB_BIT_RECM         	                                        
  ????R   :   X   :      garage_OG_23U          ????>   <   K   @       EIB_BIT_REC_28b    EIB_BIT_RECM                                                   ????R   ?   X   ?      garage_OG_24U          ????>   A   K   E       EIB_BIT_REC_29b    EIB_BIT_RECM                                                   ????R   D   W   D   	   SCHNOG[9]B          ????=   H   J   L       EIB_BIT_REC_30b    EIB_BIT_RECM                                                 !  ????=   W   J   [       EIB_BIT_REC_31b    EIB_BIT_RECM         "                                        #  ????Q   Z   Y   Z      LightGarageSecurityo !       ?   ????   /      /      Group_1_1_11S     ?   ????   0      0      MAIN.fb_KL6301_0.str_Data_Rec?     ?   ????   4      4      Group_1_1_12S     ?   ????   9      9      Group_1_1_25S     ?   ????   >      >      Group_1_1_9L     ?   ????   -      1       EIB_BIT_REC_8[    EIB_BIT_RECM         ?   ?                                       ?   ????&   0   ,   0      garage_OG_17U ?        ?   ????   2      6       EIB_BIT_REC_9[    EIB_BIT_RECM         ?   ?                                       ?   ????&   5   ,   5      garage_OG_18U ?        ?   ????   7      ;       EIB_BIT_REC_10b    EIB_BIT_RECM         ?   ?                                       ?   ????&   :   ,   :      garage_OG_19U ?        ?   ????   <      @       EIB_BIT_REC_11b    EIB_BIT_RECM         ?   ?                                          ????&   ?   ,   ?      garage_OG_20U ?          ????   C      C      Group_1_1_5L       ????   D      D      MAIN.fb_KL6301_0.str_Data_Rec?       ????   H      H      Group_1_1_6L       ????   M      M      Group_1_1_7L       ????   R      R      Group_1_1_8L       ????   A      E       EIB_BIT_REC_12b    EIB_BIT_RECM                                                   ????&   D   ,   D      garage_OG_25U          ????   F      J       EIB_BIT_REC_13b    EIB_BIT_RECM                                                   ????&   I   ,   I      garage_OG_26U          ????   K      O       EIB_BIT_REC_14b    EIB_BIT_RECM                                                   ????&   N   ,   N      garage_OG_27U          ????   P      T       EIB_BIT_REC_15b    EIB_BIT_RECM                                                   ????&   S   ,   S      garage_OG_28U        2  ????   W      W      Group_1_1_31S     5  ????   X      X      MAIN.fb_KL6301_0.str_Data_Rec?     7  ????   \      \      Group_1_1_32S     :  ????   a      a      Group_1_1_33S     =  ????   f      f      Group_1_1_34S     d  ????3   b   7   b      T#100ms5     @  ????   k      k      Group_1_1_35S     a  ????J   c   O   c   
   SystemTimeE ]       C  ????   p      p      Group_1_1_36S     F  ????   u      u      Group_1_1_37S     I  ????   z      z      Group_1_1_38S     3  ????   U      Y       EIB_BIT_REC_32b    EIB_BIT_RECM         2  5                                      4  ????&   X   +   X   	   SCHNOG[1]B 3       6  ????   Z      ^       EIB_BIT_REC_33b    EIB_BIT_RECM         7  5                                      8  ????&   ]   +   ]   	   SCHNOG[2]B 6       9  ????   _      c       EIB_BIT_REC_34b    EIB_BIT_RECM         :  5                                      ;  ????&   b   +   b   	   SCHNOG[3]B 9       <  ????   d      h       EIB_BIT_REC_35b    EIB_BIT_RECM         =  5                                      >  ????&   g   +   g   	   SCHNOG[4]B <       ?  ????   i      m       EIB_BIT_REC_36b    EIB_BIT_RECM         @  5                                      A  ????&   l   +   l   	   SCHNOG[5]B ?       B  ????   n      r       EIB_BIT_REC_37b    EIB_BIT_RECM         C  5                                      D  ????&   q   +   q   	   SCHNOG[6]B B       E  ????   s      w       EIB_BIT_REC_38b    EIB_BIT_RECM         F  5                                      G  ????&   v   +   v   	   SCHNOG[7]B E       H  ????   x      |       EIB_BIT_REC_39b    EIB_BIT_RECM         I  5                                      J  ????&   {   +   {   	   SCHNOG[8]B H       ]  ?????   ^   H   d       fb_GetTi. 
   NT_GetTimeF             c                                                      c  ????8   _   >   c       Timer1'    TON         c  d                                     f  ????Q   K   U   K   
   LightNight8        k  ????               KNXSYSTEM_WEATHERST_BRIGHTNES_L?     l  ????   }      ?       EIB_ALL_DATA_TYPES_REC_40?    EIB_4OCTET_SIGN_REC?         k  |                                      m  ????&   ?   .   ?      KNX_BRIGHTNESS_L{ l       t  ????   ?      ?      KNXSYSTEM_WEATHERST_BRIGHTNES_C?     u  ????   ?      ?       EIB_ALL_DATA_TYPES_REC_41?    EIB_4OCTET_SIGN_REC?         t  |                                      v  ????&   ?   .   ?      KNX_BRIGHTNESS_C} u       w  ????   ?      ?      KNXSYSTEM_WEATHERST_BRIGHTNES_R?     x  ????   ?      ?       EIB_ALL_DATA_TYPES_REC_42?    EIB_4OCTET_SIGN_REC?         w  |                                      y  ????&   ?   .   ?      KNX_BRIGHTNESS_R} x       |  ????   ?      ?      MAIN.fb_KL6301_0.str_Data_Rec?     ?  ????,   T   :   T      KNXSYSTEM_WEATHERST_ISTWILIGHT?     ?  ????=   R   J   V       EIB_BIT_REC_41b    EIB_BIT_RECM         ?                                        ?  ????Q   U   W   U      KNXISTWILIGHT[ ?       ?  ????.   O   :   O      KNXSYSTEM_WEATHERST_ISDAY?     ?  ????=   M   J   Q       EIB_BIT_REC_40b    EIB_BIT_RECM         ?                                          ?  ????Q   P   U   P      KNXISDAY: ?       d                    , ?   ?b         
   PeerToPeer ?Z	?Z                      ?  PROGRAM PeerToPeer
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
END_VAR)3    ????               ''        ????            	   bCloseAll5        ????
               T#5s        ????                fbSockClAll>    FB_SocketCloseAlli                                                              l   ????   	      	   	   bCloseAll5     m   ????   	      	   	   bCloseAll5 l           ????               ''        ????                      AND                                                  ????               ''        ????            
   lHOST_port@        ????            	   bCloseAll5       ????               bCreateSockG        ????               bCreateSockG            ????               T#5s        ????      #          fbSockUdpCrI    FB_SocketUdpCreatew                                                                                	   ????'      ,      	   UdpSocket<            ????               rHOST_IP7        ????               UdpSocket.remoteAddr.sAddr?             ????            
   rHOST_portA        ????               UdpSocket.remoteAddr.nPort?             ????               ''     _   ????#      &         rByte 
           ????            	   UdpSocket<        ????               SIZEOF(Received_packet)?        ????	               ADR(Received_packet)        ????               T#5s        ????       	          T#1s        ????	         !       Timer1'    TON                                                  
   ????      !          fbSockUdpRecFr]    FB_SocketUdpReceiveFrom?                                                                                                   ????   $      $      ''     !   ????   %      %   	   UdpSocket<     "   ????   &      &      rHOST_IP7     #   ????   '      '   
   rHOST_portA     $   ????   0      0      T#10s#     M   ????   0      0   	   bSendConf>     %   ????   .      .      T#5s     L   ????   +      /             AND         &   M                                  &   ????   +      /       Timer2'    TON         &   %                                      '   ????   "   !   ,       fbSockUdpSTK    FB_SocketUdpSendTo}             !   "   #   7   6   L   $                                                                   7   ????   (      (      SIZEOF(Main_udp_packet)?     6   ????   )      )      ADR(Main_udp_packet)?     N   ????   6      6      ''     O   ????   7      7   	   UdpSocket<     \   ????!   6   &   6   	   bSendConf> W        P   ????   8      8      rHOST_IP7     Q   ????   9      9   
   rHOST_portA     R   ????   =      =      T#10s#     S   ????   <      <   	   bSendConf>     W   ????   4   !   >       fbSockUdpSTConfe    FB_SocketUdpSendTo}         N   O   P   Q   X   Y   S   R                                                                   X   ????   :      :      SIZEOF(Confirmation_packet)?     Y   ????   ;      ;      ADR(Confirmation_packet)?     d                  ?   ,   &? ?           POWER_OFF_TEST ?Z	?Z       R E          ?  (*
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

END_IF;               	  ,   ? ? &           ReadADS ?Z	?Z                      u  PROGRAM ReadADS
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
END_VAR)$    ????      
         '192.168.3.225.1.1'i        ????      
         801        ????   	   
   	      16#40201        ????   
   
   
      10        ????      
         SIZEOF(ModByte)m        ????      
         ADR(ModByte)[     
   ????               T#2s     	   ????               T#1s        ????                timer2$    TON            	                                         ????                ReadADS> 
   FW_AdsReadV                              
                                                                          ????'      *         bBusy&             ????'      *         bError%            ????'   	   *   	      nErrId#            ????'   
   +   
      cbRead1            ????               '192.168.3.223.1.1'i        ????
               801        ????               16#40201        ????
               10        ????               SIZEOF(OutLightBytes)?        ????               ADR(OutLightBytes)w     !   ????               T#2s     "   ????   #      #      T#1000ms>     #   ????          $       timer3$    TON         #   "                                         ????              
   ReadLightsE 
   FW_AdsReadV                           #   !                                                                       *   ????'      +         bBusy2-          +   ????'      +         bError2,         /   ????'      *         nErrId2*         -   ????'      +         cbRead28         0   ????   )      )      '192.168.3.222.1.1'i     1   ????
   *      *      800     2   ????   +      +      16#40201     3   ????
   ,      ,      10     4   ????   -      -      SIZEOF(ShAV_Vent_V3)?     5   ????   .      .      ADR(ShAV_Vent_V3)?     6   ????   0      0      T#2s     7   ????   '      1       SchAV_Muhamedi    FW_AdsWriteS         0   1   2   3   4   5   #   6                                                                   d                    ,     ? b            Udp_receive_packet_init ?Z	?Z       ??          ?   PROGRAM Udp_receive_packet_init
VAR
	Checksum_rec : WORD;
	k: INT;
	l: INT;
	i: INT;
	h: INT;
	g: INT;
	J: INT;
END_VAR?  PacketSize := SIZEOF(Received_packet) - SIZEOF(Received_packet.title_packet_num) - SIZEOF(Received_packet.title_packet_code) - SIZEOF(Received_packet.title_packet_crc);
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
END_IF;                 ,   b ? ?            Udp_send_packet_init ?Z	?Z       ??          f   PROGRAM Udp_send_packet_init
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
                ?   , <&?           CURRENTPAGE ?Z    c:\images\grsch-bg.jpg @    ?Z?  K                                                                                                         
    @        
 ? ? ? ?   ???     ???                                            Voltage                    ?    ???       Verdana       KoefV            @    VoltagePage                                                                                                     
    @        ? 	? ??   ??      ???                                            Current                    ?    ???       Verdana                      @    CurrentPage                                                                                                     
    @        ? ? ??   ???     ???                                            Power                    ?    ???       Verdana       KoefP            @ 	   PowerPage                                                                                                    
    @        ?"}gO        ???     ???                                               ?    ???   ?                                                  @ 
    @            d   #                                                                                                       
    @                    ???     ???     ???                                 ?   {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,311,91,0,0,0,KL3403_4_I,MU1.4, A,%.1f,2,10,0,50,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,0,                    ?    ???       Arial                      @                                                                                                           
    @          ?  X     ?   ?  ?   ?                   ((KL3403_4_I * 1.0) - 25)  * 5.4               (KL3403_4_I) < 0                            ?    ???   ?                          @                                                                                                          
    @                "   ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @             )  ) "   ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @             4  4 "   ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @                *   ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @         ,   T  @     ???     ???                                            0.0                    ?    ???       Arial                      @                                                                                                          
    @             T  T "   ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @             _  _ "   ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @             j  j "   ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @             u  u "   ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @             J  J *   ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @        9 , Z T J @     ???     ???                                            10.0                    ?    ???       Arial                      @                                                                                                          
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? *   ???     ???                           @                         ?   ???   ?                                                                                                                                  
    @        o , ? T ? @     ???     ???                                            20.0                    ?   ???       Arial                      @                                                                                                          
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? *   ???     ???                           @                         ?   ???   ?                                                                                                                                  
    @        ? , ? T ? @     ???     ???                                            30.0                    ?   ???       Arial                      @                                                                                                          
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @              "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @              "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @              "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? *   ???     ???                           @                         ?   ???   ?                                                                                                                                  
    @        ? , ? T ? @     ???     ???                                            40.0                    ?   ???       Arial                      @                                                                                                          
    @             " "*   ???     ???                           @                         ?   ???   ?                                                                                                                                  
    @        , 2T "@     ???     ???                                            50.0                    ?   ???       Arial                      @                                                                                                           
    @        d ; ? K ? C     ???     ???                                            MU1.4, A                    ?   ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                         
    @        ?|?g?        ???     ???                                               ?    ???   ?                                                  @ 
    @            d   #                                                                                                       
    @                    ???     ???     ???                                 ?   {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,311,91,0,0,0,KL3403_5_I,MU1.5, A,%.1f,2,10,0,50,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,0,                    ?    ???       Arial                      @                                                                                                           
    @          ?  X     ?   ?  ?   ?                   ((KL3403_5_I * 1.0) - 25)  * 5.4               (KL3403_5_I) < 0                                ???   ?                          @                                                                                                          
    @                "   ???     ???                           @                            ???   ?                                                                                                                                 
    @             )  ) "   ???     ???                           @                            ???   ?                                                                                                                                 
    @             4  4 "   ???     ???                           @                            ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                            ???   ?                                                                                                                                 
    @                *   ???     ???                           @                            ???   ?                                                                                                                                  
    @         ,   T  @     ???     ???                                            0.0                       ???       Arial                      @                                                                                                          
    @             T  T "   ???     ???                           @                            ???   ?                                                                                                                                 
    @             _  _ "   ???     ???                           @                            ???   ?                                                                                                                                 
    @             j  j "   ???     ???                           @                         	   ???   ?                                                                                                                                 
    @             u  u "   ???     ???                           @                         
   ???   ?                                                                                                                                 
    @             J  J *   ???     ???                           @                            ???   ?                                                                                                                                  
    @        9 , Z T J @     ???     ???                                            10.0                       ???       Arial                      @                                                                                                          
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? *   ???     ???                           @                         ?   ???   ?                                                                                                                                  
    @        o , ? T ? @     ???     ???                                            20.0                    ?   ???       Arial                      @                                                                                                          
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? *   ???     ???                           @                         ?   ???   ?                                                                                                                                  
    @        ? , ? T ? @     ???     ???                                            30.0                    ?   ???       Arial                      @                                                                                                          
    @             ?  ? "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @              "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @              "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @              "   ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @             ?  ? *   ???     ???                           @                         ?   ???   ?                                                                                                                                  
    @        ? , ? T ? @     ???     ???                                            40.0                    ?   ???       Arial                      @                                                                                                          
    @             " "*   ???     ???                           @                         ?   ???   ?                                                                                                                                  
    @        , 2T "@     ???     ???                                            50.0                    ?   ???       Arial                      @                                                                                                           
    @        d ; ? K ? C     ???     ???                                            MU1.5, A                    ?   ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                          
    @        
  G ? -    ?      ???                                            Measurements                    ?   ???       Verdana                      @                                                                                                          
    @         	G ?-   ???     ???                                            Power Lines                    ?   ???       Verdana                    @    MainPage                                                                                                     
    @         G ?-   ???     ???                                            Garage Lights                    ?   ???       Verdana                    @    GarageLight                                                                                                    
    @         1Fv? S        ???     ???                                                ???? ???   ?                                                  @ 
    @            d   "                                                                                                       
    @           ? 
 P     ?   ?  ?   ?                   ((KL3403_1_I * 1.0) - 25)  * 5.4               (KL3403_1_I) < 0                            ?    ???   ?                          @                                                                                                          
    @            	     ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         !  ! 	 !    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ,  , 	 ,    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         7  7 	 7    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @            	     ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @            E  1     ???     ???                                            0.0                    ?    ???       Arial                      @                                                                                                          
    @         L  L 	 L    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         W  W 	 W    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         b  b 	 b    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         m  m 	 m    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         B  B 	 B    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @        1  R E B 1     ???     ???                                            10.0                    ?    ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         J   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         K   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         L   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         M   ???   ?                                                                                                                                 
    @         x  x 	 x    ???     ???                           @                         N   ???   ?                                                                                                                                  
    @        g  ? E x 1     ???     ???                                            20.0                    O   ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         P   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         Q   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         R   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         S   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         T   ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            30.0                    U   ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         V   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         W   ???   ?                                                                                                                                 
    @          	    ???     ???                           @                         X   ???   ?                                                                                                                                 
    @          	    ???     ???                           @                         Y   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         Z   ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            40.0                    [   ???       Arial                      @                                                                                                          
    @          	    ???     ???                           @                         \   ???   ?                                                                                                                                  
    @        	 *E 1     ???     ???                                            50.0                    ]   ???       Arial                      @                                                                                                           
    @        \ , ? < ? 4     ???     ???                                            MU1.2, A                    ^   ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                         
    @         ?F?? ?        ???     ???                                                ???? ???   ?                                                  @ 
    @            d   "                                                                                                       
    @           ? 
 P     ?   ?  ?   ?                   ((KL3403_2_I * 1.0) - 25)  * 5.4               (KL3403_2_I) < 0                            ?    ???   ?                          @                                                                                                          
    @         ???? 	     ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ????! 	 !    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ????, 	 ,    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ????7 	 7    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ???? 	     ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @            E  1     ???     ???                                            0.0                    ?    ???       Arial                      @                                                                                                          
    @         ????L 	 L    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ????W 	 W    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ????b 	 b    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ????m 	 m    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ????B 	 B    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @        1  R E B 1     ???     ???                                            10.0                    ?    ???       Arial                      @                                                                                                          
    @         ????? 	 ?    ???     ???                           @                         x   ???   ?                                                                                                                                 
    @         ????? 	 ?    ???     ???                           @                         y   ???   ?                                                                                                                                 
    @         ????? 	 ?    ???     ???                           @                         z   ???   ?                                                                                                                                 
    @         ????? 	 ?    ???     ???                           @                         {   ???   ?                                                                                                                                 
    @         ????x 	 x    ???     ???                           @                         |   ???   ?                                                                                                                                  
    @        g  ? E x 1     ???     ???                                            20.0                    }   ???       Arial                      @                                                                                                          
    @         ????? 	 ?    ???     ???                           @                         ~   ???   ?                                                                                                                                 
    @         ????? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                 
    @         ????? 	 ?    ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @         ????? 	 ?    ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @         ????? 	 ?    ???     ???                           @                         ?   ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            30.0                    ?   ???       Arial                      @                                                                                                          
    @         ????? 	 ?    ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @         ????? 	 ?    ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @         ????	    ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @         ????	    ???     ???                           @                         ?   ???   ?                                                                                                                                 
    @         ????? 	 ?    ???     ???                           @                         ?   ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            40.0                    ?   ???       Arial                      @                                                                                                          
    @         ????	    ???     ???                           @                         ?   ???   ?                                                                                                                                  
    @        	 *E 1     ???     ???                                            50.0                    ?   ???       Arial                      @                                                                                                           
    @        \ , ? < ? 4     ???     ???                                            MU1.3, A                    ?   ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                         
    @        ? ? $!??         ???     ???                                                ???? ???   ?                                                  @ 
    @            d   "                                                                                                       
    @           ? 
 P     ?   ?  ?   ?                   ((KL3403_3_I * 1.0) - 25)  * 5.4               (KL3403_3_I) < 0                            c   ???   ?                          @                                                                                                          
    @            	     ???     ???                           @                         d   ???   ?                                                                                                                                 
    @         !  ! 	 !    ???     ???                           @                         e   ???   ?                                                                                                                                 
    @         ,  , 	 ,    ???     ???                           @                         f   ???   ?                                                                                                                                 
    @         7  7 	 7    ???     ???                           @                         g   ???   ?                                                                                                                                 
    @            	     ???     ???                           @                         h   ???   ?                                                                                                                                  
    @            E  1     ???     ???                                            0.0                    i   ???       Arial                      @                                                                                                          
    @         L  L 	 L    ???     ???                           @                         j   ???   ?                                                                                                                                 
    @         W  W 	 W    ???     ???                           @                         k   ???   ?                                                                                                                                 
    @         b  b 	 b    ???     ???                           @                         l   ???   ?                                                                                                                                 
    @         m  m 	 m    ???     ???                           @                         m   ???   ?                                                                                                                                 
    @         B  B 	 B    ???     ???                           @                         n   ???   ?                                                                                                                                  
    @        1  R E B 1     ???     ???                                            10.0                    o   ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         p   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         q   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         r   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         s   ???   ?                                                                                                                                 
    @         x  x 	 x    ???     ???                           @                         t   ???   ?                                                                                                                                  
    @        g  ? E x 1     ???     ???                                            20.0                    u   ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         v   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         w   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         x   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         y   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         z   ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            30.0                    {   ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         |   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         }   ???   ?                                                                                                                                 
    @          	    ???     ???                           @                         ~   ???   ?                                                                                                                                 
    @          	    ???     ???                           @                            ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         ?   ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            40.0                    ?   ???       Arial                      @                                                                                                          
    @          	    ???     ???                           @                         ?   ???   ?                                                                                                                                  
    @        	 *E 1     ???     ???                                            50.0                    ?   ???       Arial                      @                                                                                                           
    @        \ , ? < ? 4     ???     ???                                            MU1.1, A                    ?   ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ?   , <  b            GARAGELIGHT ?Z    c:\images\grsch-bg.jpg @    ?Zz   K   D                                                                                                       
    @        
 ? ? ? ?     ???     ???                                            Security Room (1.12)                        ???       Verdana                      @                                                                                                          
    @        Z ? y i ?   ???      ?                                     garage_OG_1                                ???   ?       Garage_OG_1                 @                                                                                                          
    @        ? ? ? ? ?   ???      ?                                     garage_OG_5                                ???   ?                          @                                                                                                           
    @        P ? ? ? i ?     ???     ???                                            OG1                        ???   ?   Verdana                      @                                                                                                           
    @        ? ? ? ? ? ?     ???     ???                                            OG5                        ???   ?   Verdana                      @                                                                                                          
    @        x ? ? ? ? ?   ???      ?                                     garage_OG_19                                ???   ?                          @                                                                                                           
    @        n x ? ? ? ?     ???     ???                                            OG19                    
    ???   ?   Verdana                      @                                                                                                           
    @        
 Z y ? i     ???     ???                                            Warehouse (1.13)                        ???       Verdana                      @                                                                                                           
    @        
 "A? 1    ???     ???                                            Security WC (1.11)                        ???       Verdana                      @                                                                                                          
    @        Z Ty si c  ???      ?                                     garage_OG_3                                ???   ?                          @                                                                                                          
    @        ? T? s? c  ???      ?                                     garage_OG_4                                ???   ?                          @                                                                                                           
    @        P @? Ui J    ???     ???                                            OG3                        ???   ?   Verdana                      @                                                                                                           
    @        ? @? U? J    ???     ???                                            OG4                        ???   ?   Verdana                      @                                                                                                           
    @        
 ?	? ?    ???     ???                                            Staff WC (1.09)                        ???       Verdana                      @                                                                                                          
    @        Z y ;i +  ???      ?                                     garage_OG_10                                ???   ?                          @                                                                                                          
    @        ? ? ;? +  ???      ?                                     garage_OG_11                                ???   ?                          @                                                                                                           
    @        P ? i     ???     ???                                            OG10                        ???   ?   Verdana                      @                                                                                                           
    @        ? ? ?     ???     ???                                            OG11                        ???   ?   Verdana                      @                                                                                                           
    @        
 ??? ?    ???     ???                                            Staff Room (1.10)                        ???       Verdana                      @                                                                                                          
    @        < ?[ ?K ?  ???      ?                                     garage_OG_6                                ???   ?                          @                                                                                                          
    @        x ?? ?? ?  ???      ?                                     garage_OG_7                                ???   ?                          @                                                                                                           
    @        2 ?e ?K ?    ???     ???                                            OG6                        ???   ?   Verdana                      @                                                                                                           
    @        n ?? ?? ?    ???     ???                                            OG7                         ???   ?   Verdana                      @                                                                                                          
    @        ? ?? ?? ?  ???      ?                                     garage_OG_8                            !    ???   ?                          @                                                                                                           
    @        ? ?? ?? ?    ???     ???                                            OG8                    "    ???   ?   Verdana                      @                                                                                                           
    @        Z 	y ?i     ???     ???                                            Kitchen (1.08)                    #    ???       Verdana                      @                                                                                                          
    @        "? A? 1?   ???      ?                                     garage_OG_12                            $    ???   ?                          @                                                                                                          
    @        ^? }? m?   ???      ?                                     garage_OG_13                            %    ???   ?                          @                                                                                                           
    @        x K? 1?     ???     ???                                            OG12                    &    ???   ?   Verdana                      @                                                                                                           
    @        Tx ?? m?     ???     ???                                            OG13                    '    ???   ?   Verdana                      @                                                                                                           
    @        ? 	? ??     ???     ???                                            Staff Room (1.07)                    *    ???       Verdana                      @                                                                                                           
    @        "	A?1    ???     ???                                            Water Room (1.06)                    +    ???       Verdana                      @                                                                                                          
    @        |T?s?c  ???      ?                                     garage_OG_20                            ,    ???   ?                          @                                                                                                           
    @        r@?U?J    ???     ???                                            OG20                    .    ???   ?   Verdana                      @                                                                                                           
    @        ?		??    ???     ???                                            Generator (1.04)                    0    ???       Verdana                      @                                                                                                          
    @        |?;?+  ???      ?                                     garage_OG_27                            2    ???   ?                          @                                                                                                           
    @        r??    ???     ???                                            OG27                    4    ???   ?   Verdana                      @                                                                                                           
    @        ?	???    ???     ???                                            Switch Room (1.05)                    5    ???       Verdana                      @                                                                                                          
    @        |?????  ???      ?                                     garage_OG_28                            :    ???   ?       Garage_OG_28                 @                                                                                                           
    @        r?????    ???     ???                                            OG28                    ;    ???   ?   Verdana                      @                                                                                                          
    @        ?? ?? ??   ???      ?                                     garage_OG_14                            <    ???   ?                          @                                                                                                          
    @        ?? ?? ??   ???      ?                                     garage_OG_15                            =    ???   ?                          @                                                                                                           
    @        ?x ?? ??     ???     ???                                            OG14                    >    ???   ?   Verdana                      @                                                                                                           
    @        ?x ?? ??     ???     ???                                            OG15                    ?    ???   ?   Verdana                      @                                                                                                          
    @        @? _O?   ???      ?                                     garage_OG_16                            @    ???   ?                          @                                                                                                          
    @        |? ???   ???      ?                                     garage_OG_17                            A    ???   ?                          @                                                                                                           
    @        6? i? O?     ???     ???                                            OG16                    B    ???   ?   Verdana                      @                                                                                                           
    @        r? ?? ??     ???     ???                                            OG17                    C    ???   ?   Verdana                      @                                                                                                          
    @        ?? ???   ???      ?                                     garage_OG_18                            D    ???   ?                          @                                                                                                           
    @        ?? ?? ??     ???     ???                                            OG18                    F    ???   ?   Verdana                      @                                                                                                           
    @        Z y ?i     ???     ???                                            Boiler (1.03)                    H    ???       Verdana                      @                                                                                                           
    @        ? ? ??     ???     ???                                            Tools (1.02)                    M    ???       Verdana                      @                                                                                                           
    @        "A?1    ???     ???                                            Garage (1.01)                    N    ???       Verdana                      @                                                                                                          
    @        b? ?? q?   ???      ?                                     garage_OG_24                            Q    ???   ?                          @                                                                                                          
    @        ?? ?? ??   ???      ?                                     garage_OG_25                            R    ???   ?                          @                                                                                                           
    @        Xx ?? q?     ???     ???                                            OG24                    S    ???   ?   Verdana                      @                                                                                                           
    @        ?x ?? ??     ???     ???                                            OG25                    T    ???   ?   Verdana                      @                                                                                                          
    @        ?? ??  ???      ?                                     garage_OG_26                            Y    ???   ?                          @                                                                                                           
    @        v? ?? ??     ???     ???                                            OG26                    Z    ???   ?   Verdana                      @                                                                                                          
    @        DTcsSc  ???      ?                                     garage_OG_21                            [    ???   ?                          @                                                                                                          
    @        ?T?s?c  ???      ?                                     garage_OG_22                            \    ???   ?                          @                                                                                                           
    @        :@mUSJ    ???     ???                                            OG21                    ]    ???   ?   Verdana                      @                                                                                                           
    @        v@?U?J    ???     ???                                            OG22                    ^    ???   ?   Verdana                      @                                                                                                          
    @        ?T?s?c  ???      ?                                     garage_OG_23                            _    ???   ?                          @                                                                                                           
    @        ?@?U?J    ???     ???                                            OG23                    `    ???   ?   Verdana                      @                                                                                                          
    @        
  G ? -   ???     ???                                            Measurements                    w    ???       Verdana                    @ 	   PowerPage                                                                                                     
    @         	G ?-   ???     ???                                            Power Lines                    x    ???       Verdana                    @    MainPage                                                                                                     
    @         G ?-    ?      ???                                            Garage Lights                    y    ???       Verdana       KoefV              @    VoltagePage        ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ?   , <b ?            MAINPAGE ?Z    c:\images\grsch-bg.jpg @    ?Z?   K                                                                                                         
    @        ? ? ? ? ? ?    ?        ?                                     power_VRU_switch[1]                            ?    ???   ?    	   SCHUF_OFF              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @        ? ? -?    ?        ?                                     power_VRU_switch[3]                            ?    ???   ?       LINE3              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @        ? 6? U? E   ?        ?                                     power_VRU_switch[4]                            ?    ???   ?       LINE4              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @        ? ^? }? m   ?        ?                                     power_VRU_switch[5]                            ?    ???   ?       LINE5              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @        ? ?? ?? ?   ?        ?                                     power_VRU_switch[6]                            ?    ???   ?       LINE6              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @        ?? ???    ?        ?                                     power_VRU_switch[8]                            ?    ???   ?       LINE8              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @        ?? ?? ??    ?        ?                                     power_VRU_switch[7]                            ?    ???   ?       LINE7              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @        ??-?   ?        ?                                     power_VRU_switch[9]                            ?    ???   ?       LINE9              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @        ?6?U?E   ?        ?                                     power_VRU_switch[10]                            ?    ???   ?       LINE10              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                          
    @        ? ? ? ? ?    ?        ?                                     power_VRU_switch[2]                            ?    ???   ?       LINE2              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                           
    @        ? ? A? ?     ???     ???                                            1 KM 1.2                    ?    ???       Verdana                      @                                                                                                           
    @        ? ? 7? ? ?     ???     ???                                            1 KM 1.1                    ?    ???       Verdana                      @                                                                                                           
    @        ? ^A}? m    ???     ???                                            1 KM 1.5                    ?    ???       Verdana                      @                                                                                                           
    @        ? ?A?? ?    ???     ???                                            1 KM 1.6                    ?    ???       Verdana                      @                                                                                                           
    @        ?? w? +?     ???     ???                                            1 KM 1.7                    ?    ???       Verdana                      @                                                                                                           
    @        ? A-?     ???     ???                                            1 KM 1.3                    ?    ???       Verdana                      @                                                                                                           
    @        ? 6AU? E    ???     ???                                            1 KM 1.4                    ?    ???       Verdana                      @                                                                                                           
    @        ?? w+?     ???     ???                                            1 KM 1.8                    ?    ???       Verdana                      @                                                                                                           
    @        ?w-+    ???     ???                                            1 KM 1.9                    ?    ???       Verdana                      @                                                                                                           
    @        ?^w}0m    ???     ???                                         	   1 KM 1.11                    ?    ???       Verdana                      @                                                                                                          
    @        
  G ? -   ???     ???                                            Measurements                    ?    ???       Verdana                    @ 	   PowerPage                                                                                                     
    @         	G ?-    ?      ???                                            Power Lines                    ?    ???       Verdana       KoefV              @    VoltagePage                                                                                                     
    @         G ?-   ???     ???                                            Garage Lights                    ?    ???       Verdana                    @    GarageLight                                                                                                     
    @        ?^?}?m   ?        ?                                     power_VRU_switch[11]                            ?    ???   ?       LINE11              %   INTERN ASSIGN SHUF_PRESSED:=(TRUE) @                                                                                                           
    @        ?6wU0E    ???     ???                                         	   1 KM 1.10                    ?    ???       Verdana                      @                                                                                                           
    @         d ? ? P x    ?        ?                                     PowerSystemSwitcher                            ?    ???   ?       PowerSystemSwitcher                 @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ?   , m&<?        	   POWERPAGE ?Z    c:\images\grsch-bg.jpg @    ?Zo  K                                                                                                         
    @        
 ? ? ? ?   ???     ???                                            Voltage                    ?    ???       Verdana       KoefV            @    VoltagePage                                                                                                     
    @        ? 	? ??   ???     ???                                            Current                    ?    ???       Verdana       KoefI            @    CurrentPage                                                                                                     
    @        ? ? ??   ??      ???                                            Power                    ?    ???       Verdana                      @                                                                                                          
    @        
  G ? -    ?      ???                                            Measurements                    N   ???       Verdana       KoefV              @    VoltagePage                                                                                                     
    @         	G ?-   ???     ???                                            Power Lines                    O   ???       Verdana                    @    MainPage                                                                                                     
    @         G ?-   ???     ???                                            Garage Lights                    P   ???       Verdana                    @    GarageLight                                                                                                    
    @        ? ? 0{        ???     ???                                                ???? ???   ?                                                  @ 
    @            d                                                                                                          
    @           ? 
 P     ?   ?  ?   ?                   ((KL3403_3_P * 1.0) - 75)  * 1.8               (KL3403_3_P) < 0                               ???   ?                          @                                                                                                          
    @            	     ???     ???                           @                            ???   ?                                                                                                                                 
    @         0  0 	 0    ???     ???                           @                            ???   ?                                                                                                                                 
    @         B  B 	 B    ???     ???                           @                            ???   ?                                                                                                                                 
    @         T  T 	 T    ???     ???                           @                            ???   ?                                                                                                                                 
    @            	     ???     ???                           @                            ???   ?                                                                                                                                  
    @            E  1     ???     ???                                            0.0                       ???       Arial                      @                                                                                                          
    @         x  x 	 x    ???     ???                           @                            ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                 
    @         f  f 	 f    ???     ???                           @                            ???   ?                                                                                                                                  
    @        U  v E f 1     ???     ???                                            50.0                       ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                 
    @          	    ???     ???                           @                            ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                             ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            100.0                    !   ???       Arial                      @                                                                                                          
    @          	    ???     ???                           @                         "   ???   ?                                                                                                                                  
    @         /E 1     ???     ???                                            150.0                    #   ???       Arial                      @                                                                                                           
    @        Q , ? < ? 4     ???     ???                                         	   MU1.1, kW                    $   ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                         
    @         1Fv? S        ???     ???                                                ???? ???   ?                                                  @ 
    @            d                                                                                                          
    @           ? 
 P     ?   ?  ?   ?                   ((KL3403_1_P * 1.0) - 30)  * 4.5               (KL3403_1_P) < 0                            ?    ???   ?                          @                                                                                                          
    @         9  9 	 9    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         f  f 	 f    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @            	     ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @            E  1     ???     ???                                            0.0                    ?    ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            30.0                    ?    ???       Arial                      @                                                                                                          
    @          	    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @        	 *E 1     ???     ???                                            60.0                    ?    ???       Arial                      @                                                                                                           
    @        Q , ? < ? 4     ???     ???                                         	   MU1.2, kW                    ?    ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                         
    @         ?F?? ?        ???     ???                                                ???? ???   ?                                                  @ 
    @            d                                                                                                          
    @           ? 
 P     ?   ?  ?   ?               !   ((KL3403_2_P * 1.0) - 20)  * 6.75               (KL3403_2_P) < 0                            ?    ???   ?                          @                                                                                                          
    @            	     ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         '  ' 	 '    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         4  4 	 4    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         B  B 	 B    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @            	     ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @            E  1     ???     ???                                            0.0                    ?    ???       Arial                      @                                                                                                          
    @         ]  ] 	 ]    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         k  k 	 k    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         x  x 	 x    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         P  P 	 P    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @        ?  ` E P 1     ???     ???                                            10.0                    ?    ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         %   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         &   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         '   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         c   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         d   ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            20.0                    e   ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         f   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         g   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         h   ???   ?                                                                                                                                 
    @          	    ???     ???                           @                         i   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         j   ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            30.0                    k   ???       Arial                      @                                                                                                          
    @          	    ???     ???                           @                         l   ???   ?                                                                                                                                  
    @        	 *E 1     ???     ???                                            40.0                    m   ???       Arial                      @                                                                                                           
    @        Q , ? < ? 4     ???     ???                                         	   MU1.3, kW                    n   ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                         
    @        ?;??i]        ???     ???                                                ???? ???   ?                                                  @ 
    @            d                                                                                                          
    @           ? 
 P     ?   ?  ?   ?               !   ((KL3403_4_P * 1.0) - 10)  * 13.5               (KL3403_4_P) < 0                            ?    ???   ?                          @                                                                                                          
    @            	     ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         '  ' 	 '    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         4  4 	 4    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         B  B 	 B    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @            	     ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @            E  1     ???     ???                                            0.0                    ?    ???       Arial                      @                                                                                                          
    @         ]  ] 	 ]    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         k  k 	 k    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         x  x 	 x    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         P  P 	 P    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @        D  \ E P 1     ???     ???                                            5.0                    ?    ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         .   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         /   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         0   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         1   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         2   ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            10.0                    3   ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         4   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         5   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         6   ???   ?                                                                                                                                 
    @          	    ???     ???                           @                         7   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         8   ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            15.0                    9   ???       Arial                      @                                                                                                          
    @          	    ???     ???                           @                         :   ???   ?                                                                                                                                  
    @        	 *E 1     ???     ???                                            20.0                    ;   ???       Arial                      @                                                                                                           
    @        Q , ? < ? 4     ???     ???                                         	   MU1.4, kW                    <   ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                         
    @        ????i?        ???     ???                                                ???? ???   ?                                                  @ 
    @            d                                                                                                          
    @           ? 
 P     ?   ?  ?   ?                  ((KL3403_5_P * 1.0) - 5)  * 27               (KL3403_5_P) < 0                                ???   ?                          @                                                                                                          
    @         '  ' 	 '    ???     ???                           @                            ???   ?                                                                                                                                 
    @         B  B 	 B    ???     ???                           @                            ???   ?                                                                                                                                 
    @         ]  ] 	 ]    ???     ???                           @                            ???   ?                                                                                                                                 
    @         x  x 	 x    ???     ???                           @                            ???   ?                                                                                                                                 
    @            	     ???     ???                           @                            ???   ?                                                                                                                                  
    @            E  1     ???     ???                                            0.0                       ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         	   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         
   ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            5.0                       ???       Arial                      @                                                                                                          
    @          	    ???     ???                           @                         =   ???   ?                                                                                                                                  
    @        	 *E 1     ???     ???                                            10.0                    >   ???       Arial                      @                                                                                                           
    @        Q , ? < ? 4     ???     ???                                         	   MU1.5, kW                    ?   ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ?   , <? &           VOLTAGEPAGE ?Z    c:\images\grsch-bg.jpg @    ?Z!  K                                                                                                         
    @        
 ? ? ? ?   ??      ???                                            Voltage                    ?    ???       Verdana                      @                                                                                                          
    @        ? 	? ??   ???     ???                                            Current                    ?    ???       Verdana       KoefI            @    CurrentPage                                                                                                     
    @        ? ? ??   ???     ???                                            Power                    ?    ???       Verdana       KoefP            @ 	   PowerPage                                                                                                     
    @        
  G ? -    ?      ???                                            Measurements                       ???       Verdana       KoefV              @    VoltagePage                                                                                                     
    @         	G ?-   ???     ???                                            Power Lines                       ???       Verdana                    @    MainPage                                                                                                     
    @         G ?-   ???     ???                                            Garage Lights                        ???       Verdana                    @    GarageLight                                                                                                    
    @        ? ? {?         ???     ???                                                ???? ???   ?                                                  @ 
    @            d                                                                                                          
    @           ? 
 P     ?   ?  ?   ?               !   ((KL3403_3_V * 1.0) - 150)  * 0.9               (KL3403_3_V) < 0                               ???   ?                          @                                                                                                          
    @         9  9 	 9    ???     ???                           @                            ???   ?                                                                                                                                 
    @            	     ???     ???                           @                            ???   ?                                                                                                                                  
    @            E  1     ???     ???                                            0.0                       ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                 
    @         f  f 	 f    ???     ???                           @                            ???   ?                                                                                                                                  
    @        P  { E f 1     ???     ???                                            100.0                       ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            200.0                       ???       Arial                      @                                                                                                          
    @          	    ???     ???                           @                            ???   ?                                                                                                                                  
    @         /E 1     ???     ???                                            300.0                       ???       Arial                      @                                                                                                           
    @        \ , ? < ? 4     ???     ???                                            MU1.1, V                       ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                         
    @         ;K?? ]        ???     ???                                                ???? ???   ?                                                  @ 
    @            d                                                                                                          
    @           ? 
 P     ?   ?  ?   ?               !   ((KL3403_1_V * 1.0) - 150)  * 0.9               (KL3403_1_V) < 0                            ?    ???   ?                          @                                                                                                          
    @         9  9 	 9    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @            	     ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @            E  1     ???     ???                                            0.0                    ?    ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         f  f 	 f    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @        P  { E f 1     ???     ???                                            100.0                    ?    ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            200.0                    ?    ???       Arial                      @                                                                                                          
    @          	    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @         /E 1     ???     ???                                            300.0                    ?    ???       Arial                      @                                                                                                           
    @        \ , ? < ? 4     ???     ???                                            MU1.2, V                    ?    ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                         
    @         ?K?? ?        ???     ???                                                ???? ???   ?                                                  @ 
    @            d                                                                                                          
    @           ? 
 P     ?   ?  ?   ?               !   ((KL3403_2_V * 1.0) - 150)  * 0.9               (KL3403_1_V) < 0                            ?    ???   ?                          @                                                                                                          
    @         9  9 	 9    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @            	     ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @            E  1     ???     ???                                            0.0                    ?    ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         f  f 	 f    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @        P  { E f 1     ???     ???                                            100.0                    ?    ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            200.0                    ?    ???       Arial                      @                                                                                                          
    @          	    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @         /E 1     ???     ???                                            300.0                    ?    ???       Arial                      @                                                                                                           
    @        \ , ? < ? 4     ???     ???                                            MU1.3, V                    ?    ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                         
    @        ?E?kg        ???     ???                                                ???? ???   ?                                                  @ 
    @            d                                                                                                          
    @           ? 
 P     ?   ?  ?   ?               !   ((KL3403_4_V * 1.0) - 150)  * 0.9               (KL3403_4_V) < 0                            ?    ???   ?                          @                                                                                                          
    @         9  9 	 9    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @            	     ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @            E  1     ???     ???                                            0.0                    ?    ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         f  f 	 f    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @        P  { E f 1     ???     ???                                            100.0                    ?    ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            200.0                    ?    ???       Arial                      @                                                                                                          
    @          	    ???     ???                           @                         ?    ???   ?                                                                                                                                  
    @         /E 1     ???     ???                                            300.0                    ?    ???       Arial                      @                                                                                                           
    @        \ , ? < ? 4     ???     ???                                            MU1.4, V                    ?    ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                         
    @        ???k?        ???     ???                                                ???? ???   ?                                                  @ 
    @            d                                                                                                          
    @           ? 
 P     ?   ?  ?   ?               !   ((KL3403_5_V * 1.0) - 150)  * 0.9               (KL3403_5_V) < 0                                ???   ?                          @                                                                                                          
    @         9  9 	 9    ???     ???                           @                            ???   ?                                                                                                                                 
    @            	     ???     ???                           @                            ???   ?                                                                                                                                  
    @            E  1     ???     ???                                            0.0                       ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                 
    @         f  f 	 f    ???     ???                           @                            ???   ?                                                                                                                                  
    @        P  { E f 1     ???     ???                                            100.0                       ???       Arial                      @                                                                                                          
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                 
    @         ?  ? 	 ?    ???     ???                           @                            ???   ?                                                                                                                                  
    @        ?  ? E ? 1     ???     ???                                            200.0                    	   ???       Arial                      @                                                                                                          
    @          	    ???     ???                           @                         
   ???   ?                                                                                                                                  
    @         /E 1     ???     ???                                            300.0                       ???       Arial                      @                                                                                                           
    @        \ , ? < ? 4     ???     ???                                            MU1.5, V                       ???       Arial                      @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ????, V??F        	 !   TcpIp.lib 13.10.11 10:31:34 @֓?N%   TcUtilities.lib 8.2.10 17:42:18 @?"pK)   TcSocketHelper.lib 20.8.09 10:46:08 @@??J!   TcBase.lib 14.5.09 12:14:08 @??J"   standard.lib 5.6.98 12:03:02 @F?w5)   ClientStrSock.lib 19.10.12 18:01:27 @Gk?P"   TcSystem.lib 9.3.10 11:21:30 @
?K&   TcModbusSrv.lib 26.1.12 11:11:48 @?
!O#   TcKL6301.lib 4.11.10 11:26:24 @0n?L   ?   F_GetVersionTcpIp @      E_WinsockError       ST_SockAddr       ST_TcIpConnSvrResponse       ST_TcIpConnSvrUdpBuffer    	   T_HSOCKET                  FB_SocketAccept @          FB_SocketClose @          FB_SocketCloseAll @          FB_SocketConnect @          FB_SocketListen @          FB_SocketReceive @          FB_SocketSend @          FB_SocketUdpCreate @          FB_SocketUdpReceiveFrom @          FB_SocketUdpSendTo @             Global_Variables @         ?  BCD_TO_DEC @<      ADSDATATYPEID       E_AmsLoggerMode    	   E_ArgType       E_DbgContext       E_DbgDirection       E_EnumCmdType       E_FileRBufferCmd       E_HashPrefixTypes       E_MIB_IF_Type       E_NumGroupTypes       E_PersistentMode       E_PrefixFlagParam       E_RegValueType       E_RouteTransportType    
   E_SBCSType       E_ScopeServerState       E_TimeZoneID       E_TypeFieldParam       E_UTILITIES_ERRORCODES       OTSTRUCT       PROFILERSTRUCT       REMOTEPC       REMOTEPCINFOSTRUCT       ROUTERINFOSTRUCT       ST_AmsGetTimeZoneInformation       ST_AmsLoggerReq       ST_AmsRouteEntry       ST_AmsRouteEntryHead       ST_AmsRouteSystemEntry       ST_FileAttributes       ST_FileRBufferHead       ST_FindFileEntry       ST_FindFileSystemEntry       ST_FormatParameters       ST_HKeySrvRead       ST_HKeySrvWrite       ST_IP_ADAPTER_INFO       ST_IP_ADDR_STRING       ST_IPAdapterHwAddr       ST_IPAdapterInfo       ST_SBCSTable    #   ST_ScopeServerRecordModeDescription       ST_TcRouterStatusInfo       ST_TimeZoneInformation       STARTPROC_BUFFER       SYMINFO_BUFFER       SYMINFOSTRUCT       T_Arg    
   T_FILETIME       T_FIX16    
   T_FloatRec       T_HashTableEntry       T_HHASHTABLE       T_HLINKEDLIST       T_HUGE_INTEGER       T_LARGE_INTEGER       T_LinkedListEntry       T_UHUGE_INTEGER       T_ULARGE_INTEGER    
   TIMESTRUCT                   BE128_TO_HOST @          BE16_TO_HOST @          BE32_TO_HOST @          BE64_TO_HOST @          BYTEARR_TO_MAXSTRING @          DATA_TO_HEXSTR @          DCF77_TIME @          DCF77_TIME_EX @          DEC_TO_BCD @           DEG_TO_RAD @           DINT_TO_DECSTR @          DT_TO_FILETIME @          DT_TO_SYSTEMTIME @           DWORD_TO_BINSTR @          DWORD_TO_DECSTR @          DWORD_TO_HEXSTR @          DWORD_TO_OCTSTR @          F_ARGCMP @          F_ARGCPY @          F_ARGIsZero @          F_BIGTYPE @          F_BOOL @          F_BYTE @           F_BYTE_TO_CRC16_CCITT @          F_CheckSum16 @           F_CRC16_CCITT @           F_CreateHashTableHnd @          F_CreateLinkedListHnd @          F_DATA_TO_CRC16_CCITT @          F_DINT @           F_DWORD @           F_FormatArgToStr @          F_GetDayOfWeek @          F_GetDOYOfYearMonthDay @          F_GetFloatRec @          F_GetMaxMonthDays @          F_GetMonthOfDOY @          F_GetVersionTcUtilities @           F_GetWeekOfTheYear @          F_HUGE @          F_INT @           F_LARGE @          F_LREAL @           F_LTrim @          F_REAL @           F_RTrim @          F_SINT @           F_STRING @           F_SwapReal @           F_SwapRealEx @          F_ToLCase @          F_ToUCase @          F_UDINT @           F_UHUGE @          F_UINT @           F_ULARGE @          F_USINT @           F_WORD @           F_YearIsLeapYear @          FB_AddRouteEntry @          FB_AmsLogger @          FB_BasicPID @           FB_BufferedTextFileWriter @       '   FB_BufferedTextFileWriter.A_Reset @          FB_ConnectScopeServer @          FB_DbgOutputCtrl @          FB_DbgOutputCtrl.A_Log @          FB_DbgOutputCtrl.A_LogHex @          FB_DbgOutputCtrl.A_Reset @          FB_DisconnectScopeServer @          FB_EnumFindFileEntry @          FB_EnumFindFileList @          FB_EnumRouteEntry @          FB_EnumStringNumbers @          FB_FileRingBuffer @       !   FB_FileRingBuffer.A_AddTail @          FB_FileRingBuffer.A_Close @           FB_FileRingBuffer.A_Create @       !   FB_FileRingBuffer.A_GetHead @          FB_FileRingBuffer.A_Open @       $   FB_FileRingBuffer.A_RemoveHead @          FB_FileRingBuffer.A_Reset @          FB_FormatString @           FB_GetAdaptersInfo @          FB_GetHostAddrByName @          FB_GetHostName @          FB_GetLocalAmsNetId @          FB_GetRouterStatusInfo @          FB_GetTimeZoneInformation @          FB_HashTableCtrl @          FB_HashTableCtrl.A_Add @       !   FB_HashTableCtrl.A_GetFirst @       )   FB_HashTableCtrl.A_GetIndexAtPosPtr @           FB_HashTableCtrl.A_GetNext @          FB_HashTableCtrl.A_Lookup @          FB_HashTableCtrl.A_Remove @       "   FB_HashTableCtrl.A_RemoveAll @       $   FB_HashTableCtrl.A_RemoveFirst @          FB_HashTableCtrl.A_Reset @          FB_LinkedListCtrl @       &   FB_LinkedListCtrl.A_AddHeadValue @       &   FB_LinkedListCtrl.A_AddTailValue @       "   FB_LinkedListCtrl.A_FindNext @       "   FB_LinkedListCtrl.A_FindPrev @       !   FB_LinkedListCtrl.A_GetHead @       *   FB_LinkedListCtrl.A_GetIndexAtPosPtr @       !   FB_LinkedListCtrl.A_GetNext @       !   FB_LinkedListCtrl.A_GetPrev @       !   FB_LinkedListCtrl.A_GetTail @       )   FB_LinkedListCtrl.A_RemoveHeadValue @       )   FB_LinkedListCtrl.A_RemoveTailValue @       -   FB_LinkedListCtrl.A_RemoveValueAtPosPtr @          FB_LinkedListCtrl.A_Reset @       *   FB_LinkedListCtrl.A_SetValueAtPosPtr @          FB_LocalSystemTime @          FB_MemBufferMerge @          FB_MemBufferSplit @          FB_MemRingBuffer @           FB_MemRingBuffer.A_AddTail @           FB_MemRingBuffer.A_GetHead @       #   FB_MemRingBuffer.A_RemoveHead @          FB_MemRingBuffer.A_Reset @          FB_MemRingBufferEx @       "   FB_MemRingBufferEx.A_AddTail @       #   FB_MemRingBufferEx.A_FreeHead @       &   FB_MemRingBufferEx.A_GetFreeSize @       "   FB_MemRingBufferEx.A_GetHead @           FB_MemRingBufferEx.A_Reset @          FB_RegQueryValue @           FB_RegSetValue @           FB_RemoveRouteEntry @           FB_ResetScopeServerControl @          FB_SaveScopeServerData @          FB_ScopeServerControl @          FB_SetTimeZoneInformation @          FB_StartScopeServer @          FB_StopScopeServer @          FB_StringRingBuffer @       #   FB_StringRingBuffer.A_AddTail @       #   FB_StringRingBuffer.A_GetHead @       &   FB_StringRingBuffer.A_RemoveHead @       !   FB_StringRingBuffer.A_Reset @          FB_TextFileRingBuffer @       %   FB_TextFileRingBuffer.A_AddTail @       #   FB_TextFileRingBuffer.A_Close @       "   FB_TextFileRingBuffer.A_Open @       #   FB_TextFileRingBuffer.A_Reset @          FB_WritePersistentData @          FILETIME_TO_DT @          FILETIME_TO_SYSTEMTIME @          FIX16_TO_LREAL @          FIX16_TO_WORD @          FIX16Add @          FIX16Align @          FIX16Div @          FIX16Mul @          FIX16Sub @          GetRemotePCInfo @           HEXSTR_TO_DATA @          HOST_TO_BE128 @          HOST_TO_BE16 @          HOST_TO_BE32 @          HOST_TO_BE64 @          INT64_TO_LREAL @          Int64Add64 @          Int64Add64Ex @          Int64Cmp64 @          Int64Div64Ex @          Int64IsZero @          Int64Negate @          Int64Not @          Int64Sub64 @          IsFinite @          LARGE_INTEGER @          LARGE_TO_ULARGE @          LREAL_TO_FIX16 @          LREAL_TO_FMTSTR @          LREAL_TO_INT64 @          LREAL_TO_UINT64 @          NT_AbortShutdown @           NT_GetTime @           NT_Reboot @           NT_SetLocalTime @          NT_SetTimeToRTCTime @           NT_Shutdown @           NT_StartProcess @           OTSTRUCT_TO_TIME @           PBOOL_TO_BOOL @          PBYTE_TO_BYTE @          PDATE_TO_DATE @          PDINT_TO_DINT @          PDT_TO_DT @          PDWORD_TO_DWORD @          PHUGE_TO_HUGE @          PINT_TO_INT @          PLARGE_TO_LARGE @          PLC_ReadSymInfo @           PLC_ReadSymInfoByName @           PLC_Reset @           PLC_Start @           PLC_Stop @           PLREAL_TO_LREAL @          PMAXSTRING_TO_MAXSTRING @          PREAL_TO_REAL @          Profiler @           PSINT_TO_SINT @          PSTRING_TO_STRING @          PTIME_TO_TIME @          PTOD_TO_TOD @          PUDINT_TO_UDINT @          PUHUGE_TO_UHUGE @          PUINT_TO_UINT @          PUINT64_TO_UINT64 @          PULARGE_TO_ULARGE @          PUSINT_TO_USINT @          PWORD_TO_WORD @          RAD_TO_DEG @           ROUTETRANSPORT_TO_STRING @       	   RTC @          RTC_EX @          RTC_EX2 @          ScopeASCIIExport @           ScopeExit @          ScopeGetRecordLen @           ScopeGetState @           ScopeLoadFile @           ScopeManualTrigger @           ScopeSaveAs @          ScopeSetOffline @           ScopeSetOnline @           ScopeSetRecordLen @           ScopeViewExport @           STRING_TO_SYSTEMTIME @          STRING_TO_UINT64 @          SYSTEMTIME_TO_DT @           SYSTEMTIME_TO_FILETIME @          SYSTEMTIME_TO_STRING @          TC_Config @          TC_CpuUsage @           TC_Restart @           TC_Stop @           TC_SysLatency @           TIME_TO_OTSTRUCT @           UInt32x32To64 @          UINT64_TO_LREAL @          UINT64_TO_STRING @          UInt64Add64 @          UInt64Add64Ex @          UInt64And @          UInt64Cmp64 @          UInt64Div16Ex @          UInt64Div64 @          UInt64Div64Ex @          UInt64isZero @          UInt64Limit @          UInt64Max @          UInt64Min @          UInt64Mod64 @          UInt64Mul64 @          UInt64Mul64Ex @          UInt64Not @          UInt64Or @          UInt64Rol @          UInt64Ror @          UInt64Shl @          UInt64Shr @          UInt64Sub64 @          UInt64Xor @          ULARGE_INTEGER @          ULARGE_TO_LARGE @          WORD_TO_FIX16 @          WritePersistentData @              Global_Variables @           ?   F_CreateServerHnd @      E_ConnEstablishState       E_SocketAcceptMode       E_SocketConnectionState    	   T_HSERVER       T_ThrottleTimes                   F_GetVersionTcSocketHelper @          FB_ClientServerConnection @          FB_ServerClientConnection @          FB_SocketListenEx @          FB_SocketReceiveEx @          FB_ThrottleTimer @          FB_ThrottleTimer.MaxSpeed @          FB_ThrottleTimer.MinSpeed @          FB_ThrottleTimer.SlowDown @          FB_ThrottleTimer.SpeedUp @          HSOCKET_TO_STRING @             Globale_Variablen @          z   FW_AdsClearEvents @      FW_NoOfByte       FW_SystemInfoType       FW_SystemTaskInfoType    
   FW_TcEvent                   FW_AdsLogDINT @           FW_AdsLogEvent @           FW_AdsLogLREAL @           FW_AdsLogSTR @           FW_AdsRdWrt @           FW_AdsRdWrtInd @           FW_AdsRdWrtRes @           FW_AdsRead @           FW_AdsReadDeviceInfo @           FW_AdsReadInd @           FW_AdsReadRes @           FW_AdsReadState @           FW_AdsWrite @           FW_AdsWriteControl @           FW_AdsWriteInd @           FW_AdsWriteRes @           FW_DRand @           FW_GetCpuAccount @           FW_GetCpuCounter @           FW_GetCurTaskIndex @           FW_GetSystemTime @           FW_GetVersionTcBase @           FW_LptSignal @           FW_MemCmp @           FW_MemCpy @           FW_MemMove @           FW_MemSet @           FW_PortRead @          FW_PortWrite @                 CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @              F_ADSLOGERROR @                  F_ADSLOGSTRING @          F_DataPrep @          F_ValScale @          F_ValToStr @          FB_ClientApplication @          FB_FrameStringFifo @       "   FB_FrameStringFifo.A_AddTail @       %   FB_FrameStringFifo.A_RemoveHead @           FB_FrameStringFifo.A_Reset @          FB_LocalClient @          FB_ProtErrorFifo @           FB_ProtErrorFifo.A_AddTail @       #   FB_ProtErrorFifo.A_RemoveHead @          FB_ProtErrorFifo.A_Reset @          SCODE_CODE @             Global_Variables @       L   ?  ADSCLEAREVENTS @      E_IOAccessSize    
   E_OpenPath       E_SeekOrigin       E_TcEventClass       E_TcEventClearModes       E_TcEventPriority       E_TcEventStreamType       ExpressionResult       SFCActionType       SFCStepType    
   ST_AmsAddr       SYSTEMINFOTYPE       SYSTEMTASKINFOTYPE    
   T_AmsNetId       T_AmsNetIdArr    	   T_AmsPort    
   T_IPv4Addr       T_IPv4AddrArr       T_MaxString       TcEvent                   ADSLOGDINT @           ADSLOGEVENT @           ADSLOGLREAL @           ADSLOGSTR @           ADSRDDEVINFO @           ADSRDSTATE @           ADSRDWRT @           ADSRDWRTEX @           ADSRDWRTIND @           ADSRDWRTRES @           ADSREAD @           ADSREADEX @           ADSREADIND @           ADSREADRES @           ADSWRITE @           ADSWRITEIND @           ADSWRITERES @           ADSWRTCTL @           AnalyzeExpression @          AnalyzeExpressionCombined @          AnalyzeExpressionTable @          AppendErrorString @          CLEARBIT32 @           CSETBIT32 @           DRAND @           F_CompareFwVersion @          F_CreateAmsNetId @           F_CreateIPv4Addr @          F_GetVersionTcSystem @           F_IOPortRead @          F_IOPortWrite @          F_ScanAmsNetIds @          F_ScanIPv4AddrIds @          F_SplitPathName @          F_ToASC @          F_ToCHR @          FB_CreateDir @          FB_EOF @           FB_FileClose @           FB_FileDelete @           FB_FileGets @           FB_FileOpen @           FB_FilePuts @           FB_FileRead @           FB_FileRename @           FB_FileSeek @           FB_FileTell @           FB_FileWrite @           FB_PcWatchdog @          FB_RemoveDir @          FB_SimpleAdsLogEvent @          FILECLOSE @           FILEOPEN @           FILEREAD @           FILESEEK @           FILEWRITE @           FW_CallGenericFb @          FW_CallGenericFun @          GETBIT32 @           GETCPUACCOUNT @           GETCPUCOUNTER @           GETCURTASKINDEX @           GETSYSTEMTIME @           GETTASKTIME @          LPTSIGNAL @           MEMCMP @           MEMCPY @           MEMMOVE @           MEMSET @           ROL32 @           ROR32 @           SETBIT32 @           SFCActionControl @           SHL32 @           SHR32 @              Global_Variables @           ?   F_GetIPAddrFromStr @      E_MBFctCodes    	   ST_MBAddr       ST_MBReadWrite    
   ST_MBWrite       ST_MBWriteSingle                   F_GetVersionTcModbusSrv @          FB_MBCloseAll @          FB_MBDiagnose @           FB_MBReadCoils @           FB_MBReadInputRegs @           FB_MBReadInputs @           FB_MBReadRegs @           FB_MBReadWriteRegs @           FB_MBUdpDiagnose @          FB_MBUdpReadCoils @          FB_MBUdpReadInputRegs @          FB_MBUdpReadInputs @          FB_MBUdpReadRegs @          FB_MBUdpReadWriteRegs @          FB_MBUdpWriteCoils @          FB_MBUdpWriteRegs @          FB_MBUdpWriteSingleCoil @          FB_MBUdpWriteSingleReg @          FB_MBWriteCoils @           FB_MBWriteRegs @           FB_MBWriteSingleCoil @           FB_MBWriteSingleReg @              Globale_Variablen @        4   ?   DINT_TO_EIB_4OctetSign @
      EIB_ERROR_CODE       EIB_GROUP_ADDR       EIB_GROUP_ADDR_2GROUP       EIB_GROUP_FILTER       EIB_PHYS_ADDR       EIB_PRIORITY       EIB_Read_Typ       EIB_REC       EIB_SEND       EIB_SEND_DATA                  EIB_2OCTET_FLOAT_REC @          EIB_2OCTET_FLOAT_SEND @          EIB_2OCTET_SIGN_REC @          EIB_2OCTET_SIGN_SEND @          EIB_2OCTET_UNSIGN_REC @          EIB_2OCTET_UNSIGN_SEND @          EIB_3BIT_CONTROL_REC @          EIB_3BIT_CONTROL_SEND @          EIB_4OCTET_FLOAT_REC @          EIB_4OCTET_FLOAT_SEND @          EIB_4OCTET_SIGN_REC @          EIB_4OCTET_SIGN_SEND @          EIB_4OCTET_UNSIGN_REC @          EIB_4OCTET_UNSIGN_SEND @          EIB_4OctetSign_TO_DINT @          EIB_4OctetUnsign_TO_UDINT @          EIB_8BIT_SIGN_REC @          EIB_8BIT_SIGN_SEND @          EIB_8BIT_SIGN_SEND_EX @          EIB_8BIT_UNSIGN_REC @          EIB_8BIT_UNSIGN_SEND @          EIB_8BIT_UNSIGN_SEND_EX @          EIB_ALL_DATA_TYPES_REC @          EIB_ALL_DATA_TYPES_REC_Ex @          EIB_ALL_DATA_TYPES_SEND @          EIB_BIT_CONTROL_REC @          EIB_BIT_CONTROL_SEND @          EIB_BIT_REC @          EIB_BIT_SEND @          EIB_BIT_SEND_MANUAL @          EIB_DATE_REC @          EIB_DATE_SEND @          EIB_FLOAT_TO_REAL @          EIB_READ_SEND @          EIB_STRING_TO_STRING @          EIB_TIME_REC @          EIB_TIME_SEND @       '   EIB_Two_Octet_Float_Value_TO_REAL @          F_CONV_2GROUP_TO_3GROUP @          F_CONV_3GROUP_TO_2GROUP @          KL6301 @          KL6301.Receive @          KL6301.Send @          KL6301_Professional @       !   KL6301_Professional.Receive @          KL6301_Professional.SEND @          KL6301_Version @          REAL_TO_EIB_FLOAT @       #   REAL_TO_Two_Octet_Float_Value @          STRING_TO_EIB_STRING @          UDINT_TO_EIB_4OctetUnsign @             Globale_Variablen_EIB @                       ,     \a           2 1   1            ????????????????  
             ????                  ????,   ??                      POUs              	   AutoReset  ?               	   CalcPower  ?                
   CheckLight  ?                   Fletcher_checksum                    KNX_Init  ?                  MAIN                      Main_EIB_REC  R                
   PeerToPeer                    POWER_OFF_TEST  ?                   ReadADS  	                  Udp_receive_packet_init                    Udp_send_packet_init    ????           
   Data types                 ST_FifoEntry                    Udp_Confirm                
   Udp_Packet    ????              Visualizations                 CurrentPage  ?                   GarageLight  ?                   MainPage  ?               	   PowerPage  ?                   VoltagePage  ?   ????              Global Variables                 Global_Variables_Power  ?                  Globale_Variablen                     Globale_Variablen_EIB                    TwinCAT_Configuration  ?                   Variable_Configuration  	   ????                                                            6W?B                         	   localhost            P      	   localhost            P      	   localhost            P             ?Q