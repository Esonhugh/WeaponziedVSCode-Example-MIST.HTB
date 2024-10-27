$source = "C:\Users\Brandon.Keywarp\AppData\links"
$destination = "C:\Common Applications"
$sourceFiles = Get-ChildItem -Path $source -Filter *.lnk

foreach ($file in $sourceFiles) {
    $sourceFile = $file.FullName
    $destFile = Join-Path -Path $destination -ChildPath $file.Name
    if (Test-Path -Path $destFile) {
    $sHash = (Get-FileHash -Path $sourceFile -Algorithm SHA256).Hash
    $dHash = (Get-FileHash -Path $destFile -Algorithm SHA256).Hash
    write-host $sHash
    write-host $dHash
        if ($sHash -ne $dHash) {
        Invoke-Item $destFile
        start-sleep -seconds 5
        }
    }
}
Copy-Item -Path "C:\Users\Brandon.Keywarp\AppData\links\*" -Destination $destination -Force