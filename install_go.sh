#!/usr/bin/env bash
## install go
# Visit the official Go downloads page and find the URL for the current binary release’s tarball, along with its SHA256 hash.
# go1.13.6.linux-amd64.tar.gz
cd ~
curl -O https://dl.google.com/go/go1.13.6.linux-amd64.tar.gz
sha256sum go1.13.6.linux-amd64.tar.gz
tar xvf go1.13.6.linux-amd64.tar.gz

# You should now have a directory called go in your home directory.
# Recursively change go’s owner and group to root, and move it to /usr/local
sudo chown -R root:root ./go
# Note: Although /usr/local/go is the officially-recommended location,
# some users may prefer or require different paths.
sudo mv go /usr/local

# setting go paths
sudo nano ~/.profile

# At the end of the file, add this line:
export GOPATH=$HOME/work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
# If you chose an alternate installation location for Go, add these lines instead to the same file.
# This example shows the commands if Go is installed in your home directory:
export GOROOT=$HOME/go
export GOPATH=$HOME/work
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# With the appropriate line pasted into your profile, save and close the file.
# Next, refresh your profile by running:
source ~/.profile


## testing installation
mkdir $HOME/work

# Then, create a directory hierarchy in this folder through this command in order for you to create your test file.
# You can replace the value user with your GitHub username if you plan to use Git to commit and store your Go code on GitHub.
# If you do not plan to use GitHub to store and manage your code,
# your folder structure could be something different, like ~/my_project.
#mkdir -p work/src/github.com/user/hello
#vim ~/work/src/github.com/user/hello/hello.go
mkdir -p dev/repos/src/hello
vim ~/dev/repos/src/hello/hello.go

## hello.go content ##
package main

import "fmt"

func main() {
    fmt.Printf("hello, world\n")
}
## end of hello.go content ##
#go install github.com/user/hello
go install hello
hello
# see where the compiled hello binary is installed
which hello
# /home/shadhini/work/bin/hello

