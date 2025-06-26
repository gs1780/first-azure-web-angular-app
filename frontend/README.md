# Angular 17 Frontend

This is a minimal Angular application that consumes the Web API and uses MSAL for authentication with Azure AD.

## Running Locally

1. Install [Node.js](https://nodejs.org/) and the Angular CLI:

```bash
npm install -g @angular/cli
```

2. Install dependencies and start the development server:

```bash
cd frontend
npm install
npm start
```

3. The app will run on <http://localhost:4200> and automatically acquire tokens via MSAL when calling the API.

Configuration values are stored in `src/environments`.
