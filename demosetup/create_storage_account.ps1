# Deploy Storage Account
New-AzResourceGroupDeployment -name "storage" -ResourceGroupName "blueprintdemo" -TemplateFile .\storage-pe.json