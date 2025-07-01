#!/bin/bash
RESOURCE_GROUP=$1
PLAN_NAME=appservice-plan
ANGULAR_APP=angular-abcde
API_APP=webapi-fghij

# Create App Service plan
az appservice plan create --name $PLAN_NAME --resource-group $RESOURCE_GROUP --sku B1 --is-linux

# Create Web Apps
az webapp create --name $ANGULAR_APP --resource-group $RESOURCE_GROUP --plan $PLAN_NAME --runtime "NODE|18-lts"
az webapp create --name $API_APP --resource-group $RESOURCE_GROUP --plan $PLAN_NAME --runtime "DOTNETCORE|8.0"

# Deploy Angular build
(
  cd ../frontend
  npm install
  npm run build
  zip -r ../angular.zip dist/
)
az webapp deploy --name $ANGULAR_APP --resource-group $RESOURCE_GROUP --src-path ../angular.zip --type zip

# Deploy .NET API
(
  cd ../backend
  dotnet publish -c Release -o publish
  zip -r ../api.zip publish/
)
az webapp deploy --name $API_APP --resource-group $RESOURCE_GROUP --src-path ../api.zip --type zip
