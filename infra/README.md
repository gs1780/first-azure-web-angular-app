# Infrastructure Deployment

This folder contains an ARM template to provision the necessary Azure resources:

- **Azure SQL Database**
- **Azure App Service** for the Web API
- **Azure Static Web App** for the Angular frontend

## Deploying via Azure CLI

1. Login to Azure:

```bash
az login
```

2. Create a resource group (for example, `rg-dev`):

```bash
az group create --name rg-dev --location eastus
```

3. Deploy the ARM template:

```bash
az deployment group create \
  --resource-group rg-dev \
  --template-file template.json \
  --parameters @parameters.json
```

Adjust parameters as needed for different environments.
