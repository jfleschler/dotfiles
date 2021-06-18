#!/bin/sh

echo "Cloning repositories..."

DEV=$HOME/Development
BROADLEAF=$DEV/BroadleafCommerce
PERSONAL=$DEV/Personal

# Personal

# Broadleaf
git clone git@github.com:BroadleafCommerce/MicroservicesInternalDev.git $BROADLEAF/MicroservicesInternalDev

# clone down all BroadleafCommerce MS repos
./$BROADLEAF/MicroservicesInternalDev/clone-repos.sh repos.list
