# Function to open a Windows folder browser - Get-Folder
#
# Usage:
# $SelectedFolder = Get-Folder


Function Get-Folder($InitialDirectory="") {
	[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null
	$FolderName = New-Object System.Windows.Forms.FolderBrowserDialog
	$FolderName.Description = "Select a folder"
	$FolderName.rootfolder = "MyComputer"
	$FolderName.SelectedPath = $InitialDirectory
	if($FolderName.ShowDialog() -eq "OK") {
		$Folder += $FolderName.SelectedPath
	}
	return $Folder
}
$SelectedFolder = Get-Folder