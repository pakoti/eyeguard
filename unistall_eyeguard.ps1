# UninstallReminderApp.ps1
# This script uninstalls the reminder application

$StartupPath = [System.Environment]::GetFolderPath("Startup")
$ShortcutPath = Join-Path -Path $StartupPath -ChildPath "ReminderApp.lnk" # Replace with the actual shortcut name
$ExecutablePath = "path\to\ReminderApp.exe" # Replace with the actual path to the executable

# Remove the shortcut from the Startup folder
if (Test-Path -Path $ShortcutPath) {
    Remove-Item -Path $ShortcutPath -Force
}

# Delete the executable file
if (Test-Path -Path $ExecutablePath) {
    Remove-Item -Path $ExecutablePath -Force
}

Write-Host "The reminder application has been uninstalled."
