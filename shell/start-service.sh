#!/usr/bin/env bash

if [ -d "Jarvis-personal-mine" ]; then
    echo "folder exists! skipping service installation steps"
else
    echo "Jarvis-personal-mine directory does not exists! Downloading ..."
    ./install-service.sh
    echo "installation of Jarvis-personal-mine service successful"
fi

cd Jarvis-personal-mine/service/
echo "preparing to execute service .."
go run main.go &
echo "successfully executed the service"
