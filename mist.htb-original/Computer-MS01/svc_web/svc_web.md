# user svc_web

## Information Gathering

### Whoami everything
```

USER INFORMATION
----------------

User Name    SID                                           
============ ==============================================
ms01\svc_web S-1-5-21-1075431363-3458046882-2723919965-1000


GROUP INFORMATION
-----------------

Group Name                           Type             SID          Attributes                                        
==================================== ================ ============ ==================================================
Everyone                             Well-known group S-1-1-0      Mandatory group, Enabled by default, Enabled group
BUILTIN\Users                        Alias            S-1-5-32-545 Mandatory group, Enabled by default, Enabled group
NT AUTHORITY\SERVICE                 Well-known group S-1-5-6      Mandatory group, Enabled by default, Enabled group
CONSOLE LOGON                        Well-known group S-1-2-1      Mandatory group, Enabled by default, Enabled group
NT AUTHORITY\Authenticated Users     Well-known group S-1-5-11     Mandatory group, Enabled by default, Enabled group
NT AUTHORITY\This Organization       Well-known group S-1-5-15     Mandatory group, Enabled by default, Enabled group
NT AUTHORITY\Local account           Well-known group S-1-5-113    Mandatory group, Enabled by default, Enabled group
LOCAL                                Well-known group S-1-2-0      Mandatory group, Enabled by default, Enabled group
NT AUTHORITY\NTLM Authentication     Well-known group S-1-5-64-10  Mandatory group, Enabled by default, Enabled group
Mandatory Label\High Mandatory Level Label            S-1-16-12288                                                   


PRIVILEGES INFORMATION
----------------------

Privilege Name                Description                    State  
============================= ============================== =======
SeChangeNotifyPrivilege       Bypass traverse checking       Enabled
SeCreateGlobalPrivilege       Create global objects          Enabled
SeIncreaseWorkingSetPrivilege Increase a process working set Enabled


USER CLAIMS INFORMATION
-----------------------

User claims unknown.

Kerberos support for Dynamic Access Control on this device has been disabled.
```

### NTLMv2-SSP Hash
```
[SMB] NTLMv2-SSP Client   : 10.129.112.212
[SMB] NTLMv2-SSP Username : MS01\svc_web
[SMB] NTLMv2-SSP Hash     : svc_web::MS01:cfa5ee06800c3166:FD01127DE84D5CB21F1925F8A77E06D5:010100000000000000530DB5CB83DA012A4CBB408DE9AAD70000000002000800380033004400330001001E00570049004E002D00500044003500530049005500490057004F0046004B0004003400570049004E002D00500044003500530049005500490057004F0046004B002E0038003300440033002E004C004F00430041004C000300140038003300440033002E004C004F00430041004C000500140038003300440033002E004C004F00430041004C000700080000530DB5CB83DA010600040002000000080030003000000000000000000000000030000066E8C26173C803ADE2491426820AC6738F99C9DD0550D5C1564205F33D2AC9E00A001000000000000000000000000000000000000900200063006900660073002F00310030002E00310030002E00310036002E00330039000000000000000000
```

### php tokens

```

[Knight Enemy] > cat token.php
<?php $token = 'b2b42f0c910fa7670ebd30342a0ec9b3c147d0b027be7a1ba7e74c699323df07efc4d3b112a7ce6de00afd966139da23c2fb8d5f66c5bf61517c8ace3e9bfa3f'; ?>

[Knight Enemy] > cat pass.php
<?php
$ww = 'c81dde783f9543114ecd9fa14e8440a2a868bfe0bacdf14d29fce0605c09d5a2bcd2028d0d7a3fa805573d074faa15d6361f44aec9a6efe18b754b3c265ce81e';
```

## Privsec

### To [[user-Brandon.Keywarp]]

look C:\Common Applications\desktop.ini and files lnk

use [[create-lnk.ps1]] to get user 

when cron task powershell execute the links
