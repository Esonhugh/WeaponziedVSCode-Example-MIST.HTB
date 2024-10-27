# Cred dump

## lsa secrets

[*] Dumping LSA secrets
Domain : MS01
SysKey : e3a142f26a6e42446aa8a55e39cbcd86

Local name : MS01 ( S-1-5-21-1075431363-3458046882-2723919965 )
Domain name : MIST ( S-1-5-21-1045809509-3006658589-2426055941 )
Domain FQDN : mist.htb

Policy subsystem is : 1.18
LSA Key(s) : 1, default {142ffa61-df48-50eb-09c3-357e042faaea}
  [00] {142ffa61-df48-50eb-09c3-357e042faaea} a0ea700d0d30222a0656634ebb1b1230e586845e25581305360e417e53a97630

Secret  : $MACHINE.ACC
cur/hex : 05 02 6d 28 f0 21 16 24 b8 0e 3d 04 c5 99 ea 35 46 67 70 3a 1e c8 5f 78 c0 f3 84 61 19 76 26 bc 45 59 df d5 18 59 54 98 47 99 ec 09 04 8e 8e 6a 91 8c 5f b4 23 81 4d 50 fe dc 3c 62 63 14 50 d8 43 9b a0 72 99 4b f4 aa d5 31 1f a4 05 5f 41 0e 0e e6 b5 b8 49 b3 3e 62 ff 0f 7a f0 3b 1a 77 87 28 7b b6 b5 98 70 96 a3 d3 24 0b 05 f2 24 1d 61 44 90 0c 00 71 b4 84 19 bd e5 cb 38 ab 24 e8 97 7f 64 ce b0 9d 0e fe ea 7d e1 50 1c 04 15 04 fb 47 42 bd 40 40 3a e3 05 89 ca 35 4c 71 68 46 07 c8 a3 6f 86 a6 f1 df 40 ab b3 e4 5f 42 65 fa 1a ef 23 39 f8 5f 40 e3 2b 74 a3 a1 ec 17 3c 1d fc e0 52 89 77 aa fe ac 71 ba 97 e9 58 26 e3 d3 1f 0a eb 3d 67 a0 4e fc d4 74 0c c3 8a 94 c6 4f 58 5c 5f 00 47 c7 28 f6 06 11 74 f7 d5 e6 21 5e b9 
    NTLM:4a74fc05400345d580cf58aec3e6d833
    SHA1:780a5da0be7e173c4b63686435e6f0cd8b696e02
old/text: rhhMn9ijj3TDR2ggeuK>&-f@szU3^_V:a6XWFf @aR/](G[1ChEZy9azLaD#j.F;A;2xC.LkY"f wlN,#\//>r/X2`?!G%"YCogM&B@(EjI7OY0?dGYb_t@)
    NTLM:05647d62365b89dda38abeadc756308c
    SHA1:bc8e035172f40052b8d7c1ec9b609d4e83008ae9

Secret  : DPAPI_SYSTEM
cur/hex : 01 00 00 00 e4 64 e1 84 78 cf 4a 7d 80 9d fc 9f 5d 6b 52 30 ce 98 77 9b 57 9d 7a 06 79 89 11 d3 22 fe dc 96 03 13 e9 3a 71 b4 3c c2 
    full: e464e18478cf4a7d809dfc9f5d6b5230ce98779b579d7a06798911d322fedc960313e93a71b43cc2
    m/u : e464e18478cf4a7d809dfc9f5d6b5230ce98779b / 579d7a06798911d322fedc960313e93a71b43cc2
old/hex : 01 00 00 00 ad 8d 9c e8 ef 36 ca 60 5e 37 e8 a2 03 84 ea b9 64 ff ff e9 17 0e 0e 41 85 d6 e4 93 62 a4 98 92 8c 6b 03 e3 27 7c 5e 10 
    full: ad8d9ce8ef36ca605e37e8a20384eab964ffffe9170e0e4185d6e49362a498928c6b03e3277c5e10
    m/u : ad8d9ce8ef36ca605e37e8a20384eab964ffffe9 / 170e0e4185d6e49362a498928c6b03e3277c5e10

Secret  : NL$KM
cur/hex : 57 c8 f7 cd 24 f2 55 eb 19 1d 07 c2 15 84 21 b0 90 7c 79 3c d5 be cf ac ef 40 4f 8e 2a 76 3f 00 04 87 df 47 cf d8 b7 af 6d 5e ee 9f 16 5e 75 f3 80 24 aa 24 b0 7d 3c 29 4f ea 4e 4a fb 26 4e 62 
old/hex : 57 c8 f7 cd 24 f2 55 eb 19 1d 07 c2 15 84 21 b0 90 7c 79 3c d5 be cf ac ef 40 4f 8e 2a 76 3f 00 04 87 df 47 cf d8 b7 af 6d 5e ee 9f 16 5e 75 f3 80 24 aa 24 b0 7d 3c 29 4f ea 4e 4a fb 26 4e 62 

Secret  : _SC_ApacheHTTPServer / service 'ApacheHTTPServer' with username : .\svc_web
cur/text: MostSavagePasswordEver123
old/text: MostSavagePasswordEver123#

## cred_all

msv credentials
===============

Username           Domain  NTLM                              SHA1                                   DPAPI
--------           ------  ----                              ----                                   -----
Brandon.Keywarp    MIST    db03d6a77a2205bc1d07082740626cc9  5e74a9a541ff32af5e352c60303d66245e9e3  6cf221008e57ff6a822d261da5f7260a
                                                             8ad
MS01$              MIST    4a74fc05400345d580cf58aec3e6d833  780a5da0be7e173c4b63686435e6f0cd8b696  780a5da0be7e173c4b63686435e6f0cd
                                                             e02
op_Sharon.Mullard  MIST    d25863965a29b64af7959c3d19588dd7  6236156a1a8ad54e76b93ffdcf6607a78bca9  607ff4f13ea7cb77603b094264b6aa75
                                                             15e
svc_web            MS01    76a99f03b1d2656e04c39b46e16b48c8  c40ec1c015eddf9ae1020d985ba79b2abba42  c40ec1c015eddf9ae1020d985ba79b2a
                                                             27e

wdigest credentials
===================

Username           Domain  Password
--------           ------  --------
(null)             (null)  (null)
Brandon.Keywarp    MIST    (null)
MS01$              MIST    (null)
op_Sharon.Mullard  MIST    (null)
svc_web            MS01    (null)

kerberos credentials
====================

Username           Domain    Password
--------           ------    --------
(null)             (null)    (null)
Brandon.Keywarp    MIST.HTB  (null)
MS01$              mist.htb  05 02 6d 28 f0 21 16 24 b8 0e 3d 04 c5 99 ea 35 46 67 70 3a 1e c8 5f 78 c0 f3 84 61 19 76 26 bc 45 59 d
                             f d5 18 59 54 98 47 99 ec 09 04 8e 8e 6a 91 8c 5f b4 23 81 4d 50 fe dc 3c 62 63 14 50 d8 43 9b a0 72 99
                              4b f4 aa d5 31 1f a4 05 5f 41 0e 0e e6 b5 b8 49 b3 3e 62 ff 0f 7a f0 3b 1a 77 87 28 7b b6 b5 98 70 96
                             a3 d3 24 0b 05 f2 24 1d 61 44 90 0c 00 71 b4 84 19 bd e5 cb 38 ab 24 e8 97 7f 64 ce b0 9d 0e fe ea 7d e
                             1 50 1c 04 15 04 fb 47 42 bd 40 40 3a e3 05 89 ca 35 4c 71 68 46 07 c8 a3 6f 86 a6 f1 df 40 ab b3 e4 5f
                              42 65 fa 1a ef 23 39 f8 5f 40 e3 2b 74 a3 a1 ec 17 3c 1d fc e0 52 89 77 aa fe ac 71 ba 97 e9 58 26 e3
                             d3 1f 0a eb 3d 67 a0 4e fc d4 74 0c c3 8a 94 c6 4f 58 5c 5f 00 47 c7 28 f6 06 11 74 f7 d5 e6 21 5e b9
ms01$              MIST.HTB  (null)
op_Sharon.Mullard  MIST.HTB  (null)
svc_web            MS01      (null)

## lsa_dump_sam
[+] Running as SYSTEM
[*] Dumping SAM
Domain : MS01
SysKey : e3a142f26a6e42446aa8a55e39cbcd86
Local SID : S-1-5-21-1075431363-3458046882-2723919965

SAMKey : 07fbe201826a86b90049af0e030fa466

RID  : 000001f4 (500)
User : Administrator
  Hash NTLM: 711e6a685af1c31c4029c3c7681dd97b
    lm  - 0: 9d5b76179fbec3f12293165b7f507633
    lm  - 1: 0c63a25c7cb94ee78f9f9fbc1034e283
    lm  - 2: 9716a4fc5ee78c3e03398bc8b6d140f2
    ntlm- 0: 711e6a685af1c31c4029c3c7681dd97b
    ntlm- 1: 63245e61ad75fbc0b9360b4e380d83d8
    ntlm- 2: 94118c7d103604b14075be514d3e79c3
    ntlm- 3: 63245e61ad75fbc0b9360b4e380d83d8

Supplemental Credentials:
* Primary:NTLM-Strong-NTOWF *
    Random Value : e63b9192b33b4135df0b75aedc87680e

* Primary:Kerberos-Newer-Keys *
    Default Salt : MS01.MIST.HTBAdministrator
    Default Iterations : 4096
    Credentials
      aes256_hmac       (4096) : d8636eaab956bf4610d3240a3f53df569c5616ac69ba1ffaabca502c746b9b2e
      aes128_hmac       (4096) : 83a4ad17694b48447086ad29f46ed9ae
      des_cbc_md5       (4096) : f7d97632f78c75fb
    OldCredentials
      aes256_hmac       (4096) : aac604788e3360cae14c0afed0141e309a0ef4057cf7d81c94c5e0b7f04d6a97
      aes128_hmac       (4096) : 66b0dc72150e1b001d3d4bc84c464033
      des_cbc_md5       (4096) : 462937b5c423d07a
    OlderCredentials
      aes256_hmac       (4096) : 546287662d2405c882bdffee2944024b9fe03abd5dbe53567fd137f6f15bba90
      aes128_hmac       (4096) : 8a86c58bc4ed1d3d52da55b2efeed004
      des_cbc_md5       (4096) : 6eb594b09eb0f7b0

* Packages *
    NTLM-Strong-NTOWF

* Primary:Kerberos *
    Default Salt : MS01.MIST.HTBAdministrator
    Credentials
      des_cbc_md5       : f7d97632f78c75fb
    OldCredentials
      des_cbc_md5       : 462937b5c423d07a


RID  : 000001f5 (501)
User : Guest

RID  : 000001f7 (503)
User : DefaultAccount

RID  : 000001f8 (504)
User : WDAGUtilityAccount
  Hash NTLM: 90f903787dd064cc1973c3aa4ca4a7c1

Supplemental Credentials:
* Primary:NTLM-Strong-NTOWF *
    Random Value : dcbb37020885f127e7257d1f32e04bae

* Primary:Kerberos-Newer-Keys *
    Default Salt : WDAGUtilityAccount
    Default Iterations : 4096
    Credentials
      aes256_hmac       (4096) : 39f456b50f44555be8f33753feb26887a31c204f1efb1735cb8a21dd21a51264
      aes128_hmac       (4096) : e82ae6a811c860910c37c658eb87cabf
      des_cbc_md5       (4096) : 3dd94f7abf3e10cb

* Packages *
    NTLM-Strong-NTOWF

* Primary:Kerberos *
    Default Salt : WDAGUtilityAccount
    Credentials
      des_cbc_md5       : 3dd94f7abf3e10cb


RID  : 000003e8 (1000)
User : svc_web
  Hash NTLM: 76a99f03b1d2656e04c39b46e16b48c8
    lm  - 0: d9378de5f293a3a449c07f9da4e3cd1d
    lm  - 1: 44ad607e04781a4f3749c722ac0a8b03
    ntlm- 0: 76a99f03b1d2656e04c39b46e16b48c8
    ntlm- 1: 76a99f03b1d2656e04c39b46e16b48c8

Supplemental Credentials:
* Primary:NTLM-Strong-NTOWF *
    Random Value : a5f7a533841d8bd7b13b13a8141a2a54

* Primary:Kerberos-Newer-Keys *
    Default Salt : MS01.MIST.HTBsvc_web
    Default Iterations : 4096
    Credentials
      aes256_hmac       (4096) : 8c97f2d234d9ae5c004142b7bb6d5e6871e25bcb965ad6207b41842a5df7a010
      aes128_hmac       (4096) : 58d1072dcc284dd16cdad4dcccd0e7e3
      des_cbc_md5       (4096) : 9b899d022920d3f4
    OldCredentials
      aes256_hmac       (4096) : 8c97f2d234d9ae5c004142b7bb6d5e6871e25bcb965ad6207b41842a5df7a010
      aes128_hmac       (4096) : 58d1072dcc284dd16cdad4dcccd0e7e3
      des_cbc_md5       (4096) : 9b899d022920d3f4

* Packages *
    NTLM-Strong-NTOWF

* Primary:Kerberos *
    Default Salt : MS01.MIST.HTBsvc_web
    Credentials
      des_cbc_md5       : 9b899d022920d3f4
    OldCredentials
      des_cbc_md5       : 9b899d022920d3f4
