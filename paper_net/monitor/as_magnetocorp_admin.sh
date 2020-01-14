#!/usr/bin/env bash
cd /home/shadhini/dev/repos/src/github.com/hyperledger/fabric-samples
cd commercial-paper/organization/magnetocorp/configuration/cli/
./monitordocker.sh net_basic

# if the default port in monitordocker.sh is already in use
# ./monitordocker.sh net_basic <port_number>