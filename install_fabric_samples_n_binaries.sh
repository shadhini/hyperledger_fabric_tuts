#!/usr/bin/env bash
# Determine a location on your machine where you want to place the fabric-samples repository and
# enter that directory in a terminal window
cd /home/shadhini/dev/repos/hyperledger_fabric
# this script will download and extract all of the platform-specific binaries you will need to set up your network and
# place them into the cloned repo you created above.
# Finally, the script will download the Hyperledger Fabric docker images from Docker Hub into your local Docker registry and tag them as ‘latest’.
curl -sSL http://bit.ly/2ysbOFE | bash -s

# export PATH=<path to download location>/bin:$PATH
export PATH=/home/shadhini/dev/repos/hyperledger_fabric/fabric-samples/bin:$PATH

