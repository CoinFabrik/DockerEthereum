import os


f=open('./share2/nodeinfo.txt', 'r+')
lines=f.readlines()
text = lines[9]
ip = "0.0.0.0"
output =  "admin.addPeer(" + text[:-17] +  ip + text[-8:] + ")"
f.seek(0)
f.write(output)
f.truncate()
