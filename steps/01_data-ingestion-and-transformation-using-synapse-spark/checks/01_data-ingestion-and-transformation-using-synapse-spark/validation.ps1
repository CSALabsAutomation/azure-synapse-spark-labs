param(
    [string]
    $Resourcegroupname
)
$WorkSpace = Get-AzResource -ResourceGroupName $Resourcegroupname -Resourcetype Microsoft.Synapse/workspaces
$WorkSpacename = $WorkSpace.Name

$notebook1 = Get-AzSynapseNotebook -WorkspaceName $WorkSpacename -Name ntb_Open_DataSet_To_ADLS
if ($notebook1)
{
    Write-Host "notebook ntb_Open_DataSet_To_ADLS created"
}
else
{
    Write-Host "notebook ntb_Open_DataSet_To_ADLS not created"
}

$notebook2 = Get-AzSynapseNotebook -WorkspaceName $WorkSpacename -Name ntb_Open_DataSet_To_LakeDB
if ($notebook2)
{
    Write-Host "notebook ntb_Open_DataSet_To_LakeDB created"
}
else
{
    Write-Host "notebook ntb_Open_DataSet_To_LakeDB not created"
}
$notebook3 = Get-AzSynapseNotebook -WorkspaceName $WorkSpacename -Name ntb_Analyze_and_Visualize_data
if ($notebook3)
{
    Write-Host "notebook ntb_Analyze_and_Visualize_data created"
}
else
{
    Write-Host "notebook ntb_Analyze_and_Visualize_data not created"
}
