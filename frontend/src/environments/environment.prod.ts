export const environment = {
  production: true,
  apiUrl: 'https://YOUR_API.azurewebsites.net/api',
  azure: {
    clientId: 'YOUR_CLIENT_ID',
    tenantId: 'YOUR_TENANT_ID',
    redirectUri: 'https://YOUR_APP.azurestaticapps.net',
    scopes: ['api://YOUR_API_CLIENT_ID/access_as_user']
  }
};
