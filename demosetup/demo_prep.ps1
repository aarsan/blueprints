# Login
# connect-azAccount
Select-AzSubscription -SubscriptionId a0fc4f7c-9c55-4151-b900-07761c35237c

# Create Resource Group
$rgName = "blueprintdemo"
New-AzResourceGroup -Location "centralus" -Name $rgName -Verbose

# Deploy VNET
New-AzResourceGroupDeployment -Name "deployvnet" -ResourceGroupName $rgName -TemplateFile .\vnet.json -Verbose


