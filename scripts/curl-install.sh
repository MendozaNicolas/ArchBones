#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in ArchBones Folder."
    echo "Please use ./ArchBones.sh instead"
    exit
fi

# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the ArchBones Project"
git clone https://github.com/christitustech/ArchBones

echo "Executing ArchBones Script"

cd $HOME/ArchBones

exec ./ArchBones.sh
