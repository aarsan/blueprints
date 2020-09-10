# Create Resource Group
$rgName = "blueprintdemo"
New-AzResourceGroup -Location "centralus" -Name $rgName

# Deploy VNET
New-AzResourceGroupDeployment -Name "deployvnet" -ResourceGroupName $rgName -TemplateFile .\vnet.json -Verbose


