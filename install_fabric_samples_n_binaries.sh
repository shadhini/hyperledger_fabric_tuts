#!/usr/bin/env bash

env | grep GO
# GOPATH=/home/shadhini/work

# create a directory relative to $GOPATH, where fabric-samples will be installed
mkdir -p $GOPATH/src/github.com/hyperledger/
cd $GOPATH/src/github.com/hyperledger/

# this script will download and extract all of the platform-specific binaries you will need to set up your network and
# place them into the cloned repo you created above.
# Finally, the script will download the Hyperledger Fabric docker images from Docker Hub into your local Docker registry and tag them as ‘latest’.
curl -sSL http://bit.ly/2ysbOFE | bash -s
#git clone https://github.com/hyperledger/fabric-samples.git

# export PATH=<path to download location>/bin:$PATH
export PATH=/home/shadhini/dev/repos/hyperledger_fabric/fabric-samples/bin:$PATH
