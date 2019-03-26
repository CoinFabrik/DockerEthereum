import os


f=open('./share2/nodeinfo.txt', 'r+')
lines=f.readlines()
text = lines[9]
ip = "172.18.0.1"
output =  "admin.addPeer(" + text[:-17] +  ip + text[-8:] + ")"
f.seek(0)
f.write(output)
f.truncate()
