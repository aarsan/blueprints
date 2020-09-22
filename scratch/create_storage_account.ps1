# Deploy Storage Account
New-AzResourceGroupDeployment -name "storage" -ResourceGroupName "blueprintdemo" -TemplateFile .\storage_pe.json -Verbose