#sltm-teh01|pShell_profile
#C:\Users\rmuschong\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

################################################################################
# Maintainer:
#   Robert Muschong
# Github:
#   github.com/robert-cm
# Mail:
#   mcarolrobert@gmail.com
# Sections:
#   #> Aliases
#   #> General
#     #> Color
#     #> File management
#     #> Moving
#     #> Editing functions
#     #> Misc
#   #> EOF
################################################################################

Set-Location C:\
$Shell.WindowsTitle="sltm-teh01"
$Shell = $Host.UI.RawUI
$size = $Shell.WindowSize
$size.width=115
$size.height=75
$Shell.WindowSize = $size
$size = $Shell.BufferSize
$size.width=115
$size.height=5000
$Shell.BufferSize = $size
#$shell.BackgroundColor = “Gray”
#$shell.ForegroundColor = “Black”
new-item alias:np -value C:WindowsSystem32notepad.exe
Clear-Host

#PowerShell profile
#C:\Users\rmuschong\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

################################################################################
# #> Aliases
################################################################################

Set-Alias shfunc D:\shell_functions\shfunc.ps1
Set-Alias ff D:\shell_functions\ff.ps1
Set-Alias find D:\shell_functions\find.ps1
Set-Alias viprof D:\shell_functions\viprof.ps1

# Unix like df -k
Set-Alias df-k D:\shell_functions\df-k.ps1

################################################################################
# #> General - #> Color
################################################################################

################################################################################


################################################################################
# #> General - #> File management
################################################################################

# symbolic links /w text gui
function mklink { cmd /c mklink $args }

# self explanatory
#function cddtop { cmd cd C:\Users\rmuschong\Desktop } #req. work, initializing profile with this function forces-stuck cd on D: and ls doesn't work

# extract archive
function Expand-ZIPFile($file, $destination) {
    $shell = new-object -com shell.application
    $zip = $shell.NameSpace($file)
    foreach($item in $zip.items())
    {
        $shell.Namespace($destination).copyhere($item)
    }
}
#Expand-ZIPFile -File /path/to/file.zip -destination /path/to/target

################################################################################


################################################################################
# #> General - #> Moving
################################################################################

################################################################################


################################################################################
# #> General - #> Editing Functions
################################################################################

################################################################################


################################################################################
# #> General - #> Misc
################################################################################

################################################################################


################################################################################
# #> EOF
################################################################################
