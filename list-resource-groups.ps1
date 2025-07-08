# Connect to Azure account (in Automation, use a Run As Account or Managed Identity)
Connect-AzAccount -Identity

# Get all resource groups
$resourceGroups = Get-AzResourceGroup

# Output the names of the resource groups
$resourceGroups | ForEach-Object {
    Write-Output "Resource Group: $($_.ResourceGroupName)"
}
