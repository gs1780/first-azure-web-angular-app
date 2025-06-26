export const environment = {
  production: false,
  apiUrl: 'https://localhost:5001/api',
  azure: {
    clientId: 'YOUR_CLIENT_ID',
    tenantId: 'YOUR_TENANT_ID',
    redirectUri: 'http://localhost:4200',
    scopes: ['api://YOUR_API_CLIENT_ID/access_as_user']
  }
};
