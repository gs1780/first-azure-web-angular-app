# Hello World Angular and .NET Core 8 App

This repository contains a minimal **Angular 20** front-end and an **ASP.NET Core 8** Web API. The sample shows a simple "Hello World" page served by Angular and an API endpoint returning a greeting.

## Development

1. Install Node.js 18+ and the .NET 8 SDK (tested with `8.0.400`).
2. From a terminal run one of the helper scripts in the `scripts` folder:
   - On Windows PowerShell:
     ```powershell
     .\scripts\dev.ps1
     ```
   - On bash:
     ```bash
     ./scripts/dev.sh
     ```
   These install dependencies and start both the Angular dev server and the Web API.

The Angular app will be available on `http://localhost:4200` and the Web API on `https://localhost:5001/api/hello`.

## Deployment to Azure

An ARM template is provided under `arm/template.json` to create two Linux App Services in **eastus** with hard-coded names `angular-abcde` and `webapi-fghij`.

### Provision resources

Use either script below and pass the existing resource group name:

```bash
./scripts/provision.sh my-resource-group
```

### Deploy code

After provisioning run:

```bash
./scripts/deploy.sh my-resource-group
```

The PowerShell equivalents are `provision.ps1` and `deploy.ps1`.

