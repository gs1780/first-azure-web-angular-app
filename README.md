# Full Stack Sample: .NET 8 Web API & Angular 17

This repository contains a beginner-friendly example demonstrating how to build a simple CRUD application secured with Azure Active Directory. It includes:

- **.NET 8** Web API using Entity Framework Core and Azure AD JWT authentication
- **Angular 17** frontend using MSAL for login and token acquisition
- **ARM template** and **Azure CLI** scripts for infrastructure
- **Azure DevOps** pipeline for CI/CD

## Getting Started

### Prerequisites

- [.NET 8 SDK](https://dotnet.microsoft.com/download)
- [Node.js](https://nodejs.org/) and [Angular CLI](https://angular.io/cli)
- [Azure CLI](https://learn.microsoft.com/cli/azure/install-azure-cli)
- An Azure subscription

### Running Locally

1. Configure Azure AD as described in [docs/azure-ad-setup.md](docs/azure-ad-setup.md).
2. Update configuration values in `backend/appsettings.json` and `frontend/src/environments`.
3. Build and run the API:

```bash
cd backend
# dotnet restore
# dotnet ef database update
# dotnet run
```

4. In a separate terminal, run the Angular app:

```bash
cd frontend
npm install
npm start
```

### Deploying Infrastructure

Use the scripts under `scripts/` or deploy the ARM template manually as documented in [infra/README.md](infra/README.md).

### Azure DevOps CI/CD

Import the pipeline definition from `pipelines/azure-pipelines.yml`. Configure the required pipeline variables for your Azure service connection and static web app token. The pipeline will build and deploy both the API and the frontend.

## Troubleshooting

- Ensure the correct tenant and client IDs are configured for Azure AD.
- Check firewall settings of the SQL server if deployment fails to connect from App Service.
- For local development, you may need to allow insecure HTTP for the Angular app when testing locally.
