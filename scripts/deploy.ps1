param(
    [string]$ResourceGroup
)

$planName = "appservice-plan"
$angularApp = "angular-abcde"
$apiApp = "webapi-fghij"

# Create App Service plan
az appservice plan create --name $planName --resource-group $ResourceGroup --sku B1 --is-linux

# Create Web Apps
az webapp create --name $angularApp --resource-group $ResourceGroup --plan $planName --runtime "NODE|18-lts"
az webapp create --name $apiApp --resource-group $ResourceGroup --plan $planName --runtime "DOTNETCORE|8.0"

# Deploy Angular build
cd ..\frontend
npm install
npm run build
zip -r ../angular.zip dist/
cd ..\scripts
az webapp deploy --name $angularApp --resource-group $ResourceGroup --src-path ../angular.zip --type zip

# Deploy .NET API
cd ..\backend
dotnet publish -c Release -o publish
zip -r ../api.zip publish/
cd ..\scripts
az webapp deploy --name $apiApp --resource-group $ResourceGroup --src-path ../api.zip --type zip
