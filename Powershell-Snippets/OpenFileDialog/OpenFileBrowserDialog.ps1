# Opens a simple file browser dialog with the default folder 'Desktop', to select a file and load it into $FileBrowser.

$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{ 
	InitialDirectory = [Environment]::GetFolderPath('Desktop') 
}
$null = $FileBrowser.ShowDialog()