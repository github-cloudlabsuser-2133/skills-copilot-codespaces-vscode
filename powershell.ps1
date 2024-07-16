# Login to Azure Account
Connect-AzAccount

# Create a new resource group
$resourceGroupName = "MyResourceGroup"
$location = "East US"
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a storage account
$storageAccountName = "mystorageaccount" + $(Get-Random)
$storageSkuName = "Standard_LRS"
$kind = "StorageV2"

New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                     -Name $storageAccountName `
                     -Location $location `
                     -SkuName $storageSkuName `
                     -Kind $kind `
                     -AccessTier "Hot"