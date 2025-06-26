# .NET 8 Web API Backend

This folder contains a minimal example of a .NET 8 Web API secured by Azure Active Directory. The API exposes basic CRUD endpoints for a simple `Person` entity stored in SQL Server.

## Running Locally

1. Install [.NET 8 SDK](https://dotnet.microsoft.com/download) and SQL Server or SQL Server Express.
2. Update `appsettings.json` with your database connection string and Azure AD settings.
3. Restore dependencies and run migrations:

```bash
cd backend
# Restore packages
# dotnet restore
# Create initial migration (once)
# dotnet ef migrations add InitialCreate
# Update database
# dotnet ef database update
```

4. Run the API:

```bash
# dotnet run
```

The API will listen on <https://localhost:5001> by default.

## Azure AD Authentication

Azure AD configuration is defined in `appsettings.json` under the `AzureAd` section. See the `docs/azure-ad-setup.md` file for detailed steps on how to create the app registration.
