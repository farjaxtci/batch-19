 <#
   this scipt will help you to load data from csv file to sql server table, 
    before you run the script,  you must need to create table on sql server database 
 #>

  # Variables for Import-Excel
$FolderName         = "C:\backup"
$FileName           = "emp_name.CSV"
$FileNameWithFolder = join-path $FolderName $FileName
$FileNameWithFolder
#Variables for Write-SQLTableData

$SQLServerInstance = "FARJAX\NY1_FTCI"
$Database          = "csvinport"
$SchemaName        = "dbo"
$TableName         = "emp"

## Load  the  files into table 
,(Import-csv -path $FileNameWithFolder -ErrorAction Stop) |
      Write-SqlTableData -serverinstance $SQLServerInstance -DatabaseName $Database -SchemaName $SchemaName -TableName $TableName  -force  -ErrorAction Stop
