# EthereumDocker

## Usage

### Start and restart

`sudo ./start.sh`

### Mining control

**Start**

`sudo ./scripts/MinerStart.sh`

**Stop**

`sudo ./scripts/MinerStop.sh`

### Node monitoring

Visit http://localhost:3000

## Docker hints

### Container listing

`sudo docker ps`

### Working with containers

Attach or connect to the nodes as follows:

`sudo docker attach <<ContainerName>>`

or

`sudo docker exec -it <<ContainerName>> /bin/bash`


Detach with:

`Ctrl + P, Ctrl + Q`
