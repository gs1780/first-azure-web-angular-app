# Azure CLI Scripts

The scripts in this folder simplify deploying the infrastructure for different environments.

- `deploy-dev.sh` – deploys the ARM template to the `rg-dev` resource group.
- `deploy-test.sh` – deploys the ARM template to the `rg-test` resource group.

Both scripts assume you are already logged in via `az login` and have the required permissions.
