param(
    [string]$ResourceGroup
)

az deployment group create --resource-group $ResourceGroup --template-file ../arm/template.json
