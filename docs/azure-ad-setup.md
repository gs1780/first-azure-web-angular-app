# Azure Active Directory App Registration

Follow these steps to create the Azure AD applications required for authentication.

1. Sign in to the [Azure portal](https://portal.azure.com).
2. Navigate to **Azure Active Directory** > **App registrations** > **New registration**.
3. Register an app for the Web API:
   - **Name**: `MyWebApi`
   - **Supported account types**: Single tenant
   - **Redirect URI**: leave blank
4. After creation, note the **Application (client) ID** and **Directory (tenant) ID**.
5. Under **Expose an API**, add a scope:
   - Scope name: `access_as_user`
   - Who can consent: `Admins and users`
   - Admin consent display name: `Access API`
   - Save the scope and copy the scope URI.
6. Create another app registration for the Angular frontend:
   - **Name**: `MyAngularApp`
   - **Redirect URI**: `http://localhost:4200` (or your deployed URL)
   - Note the client ID.
7. Under **Authentication**, add the frontend's redirect URI and enable implicit flow for SPA.
8. Under **API permissions**, add the API scope created earlier and grant admin consent.

Use the tenant ID, client IDs, and scope URI in the configuration files of the API and frontend.
