# YesNoOptionsDialog can produce a prompt window through where a user can select the option they need.
# 
# Running example will produce a popup box with a yes/no question and return an interger, 6 for yes, 7 for no.
# It can be customized even further 
# 
# https://stackoverflow.com/questions/49063153/how-do-i-create-a-popup-window-with-yes-no-buttons-and-a-information-mark-icon
# https://jdhitsolutions.com/blog/powershell/2976/powershell-popup/
# 
#
#

$string = "this"
$TrueFalse = New-Object -ComObject Wscript.Shell
$Question = $TrueFalse.Popup("Is $string true?",0,"Please choose...",32+4)


if ($Question = [int]6) {
	Set-Variable -Name Result -Value "True"
}
elseif ($Question = [int]7) {
	Set-Variable -Name Result -Value "False"
}
