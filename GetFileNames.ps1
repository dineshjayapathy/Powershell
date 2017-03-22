$folders='C:\DJ\Seeding'
foreach ($folder in $folders)
{
    $fileBaseNames = (Get-ChildItem $folder\*.xlsx).FullName | % {[System.IO.Path]::GetFileNameWithoutExtension($_)}
    $catalogFileName = (Split-Path $folder -Leaf) -replace ' ',''
    if ($fileBaseNames)  {Set-Content -Path $folder\$catalogFileName.txt -Value $fileBaseNames}
}