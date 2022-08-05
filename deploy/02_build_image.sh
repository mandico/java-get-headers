#!/bin/bash

function print_headline() {
    HEADLINE=$1
    
    echo ""
    echo "-------------------------------------------------------------------------------------------"
    echo $HEADLINE
    echo "-------------------------------------------------------------------------------------------"
}

function print_line() {
    echo "-------------------------------------------------------------------------------------------"
}

function docker_build() {
    print_headline "Build Image"
    cd $SCRIPTPATH/../
    docker build --pull --rm -f "code/Dockerfile" -t javagetheaders:latest "code"
}

# Absolute path to this script
SCRIPT=$(readlink -f "$0")
print_headline "Information"
echo " Script...................:" $SCRIPT
# Absolute path this script
SCRIPTPATH=$(dirname "$SCRIPT")
echo " Absolute Path............:" $SCRIPTPATH
DOCKERFILE=$SCRIPTPATH/../code/Dockerfile
echo " Dockerfile...............:" $DOCKERFILE
docker_build