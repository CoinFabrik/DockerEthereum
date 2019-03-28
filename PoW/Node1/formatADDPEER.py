import os


f=open('./nodeinfo.txt', 'r+')
lines=f.readlines()
text = lines[6]
ip = "172.18.0.1"
output = text.split("@")[0] + "@" + ip + ":" +  text.split("@")[1].split(":")[1]
f.seek(0)
f.write(output)
f.truncate()



