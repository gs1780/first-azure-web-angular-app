# Azure DevOps Pipeline

The `azure-pipelines.yml` file defines a two-stage pipeline:

1. **Build** – restores, builds, and publishes the API and Angular app artifacts.
2. **Deploy** – deploys the API to Azure App Service and the Angular app to Azure Static Web Apps.

Set the following pipeline variables or variable group:

- `AZURE_CONNECTION` – service connection for Azure
- `STATIC_WEB_APP_TOKEN` – deployment token for the static web app
