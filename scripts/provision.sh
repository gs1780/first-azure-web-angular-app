#!/bin/bash
RESOURCE_GROUP=$1
az deployment group create --resource-group $RESOURCE_GROUP --template-file ../arm/template.json
