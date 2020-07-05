#Import the Blueprint
Import-AzBlueprintWithArtifact -Name "AhmetRG"  -InputPath  ".\"


$bp = Get-AzBlueprint -Name "AhmetRG"

#Publish Blueprint
$publishedBp = Publish-AzBlueprint -Blueprint $bp -Version 1.0



# Get version of BluePrint you want to assign
# $publishedBp = Get-AzBlueprint -Name "CreateIdentity" -LatestPublished

#Assign BluePrint to subscription
$params = @{rgname="SashaRG"}
New-AzBlueprintAssignment -Name "AhmetRG-CentralUS" -Blueprint $publishedBp -Location "centralus" -SubscriptionId "a0fc4f7c-9c55-4151-b900-07761c35237c" -Parameter $params




# Delete the BluePrint
# Remove-AzResource -Id "/subscriptions/a0fc4f7c-9c55-4151-b900-07761c35237c/providers/Microsoft.Blueprint/blueprints/CreateIdentity"

# Remove-AzResource -Id "/subscriptions/a0fc4f7c-9c55-4151-b900-07761c35237c/providers/Microsoft.Blueprint/blueprints/ahmet-bp"