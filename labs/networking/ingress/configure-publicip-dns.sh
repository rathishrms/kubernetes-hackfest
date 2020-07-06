#!/bin/bash

# Public IP address
IP="52.188.182.81"

# Name to associate with public IP address
DNSNAME=rathishr28579

# Get the resource-id of the public ip
PUBLICIPID=$(az network public-ip list --query "[?ipAddress!=null]|[?contains(ipAddress, '$IP')].[id]" --output tsv)

# Update public ip address with dns name
az network public-ip update --ids $PUBLICIPID --dns-name $DNSNAME
