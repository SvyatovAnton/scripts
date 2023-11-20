#!/bin/bash

echo "Please enter the name of the application that you want to remove:"
read application

while true; do
    read -p "Do you wish to remove $application? (y/n)" yn
    case $yn in
        [Yy]* )
            sudo yum remove $application -y
            echo "$application has been removed."
            break;;
        [Nn]* )
            echo "Abort removing $application."
            break;;
        * )
            echo "Please answer yes or no.";;
    esac
done

