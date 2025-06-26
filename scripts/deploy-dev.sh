#!/bin/bash
# Creates resources for the DEV environment
RESOURCE_GROUP=rg-dev
LOCATION=eastus

az group create --name $RESOURCE_GROUP --location $LOCATION
az deployment group create \
  --resource-group $RESOURCE_GROUP \
  --template-file ../infra/arm/template.json \
  --parameters ../infra/arm/parameters.json
