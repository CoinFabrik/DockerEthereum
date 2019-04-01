start and restart with:

`sudo ./start.sh`

and visit http://localhost:3000

list the containers

`sudo docker ps`

attach the nodes with

`sudo docker attach <<ContainerName>>`

or

`sudo docker exec -it <<ContainerName>> /bin/bash`


detach with
`Ctrl + P, Ctrl + Q`



start and stop mining with

`sudo ./scripts/MinerStart.sh`

`sudo ./scripts/MinerStop.sh`

