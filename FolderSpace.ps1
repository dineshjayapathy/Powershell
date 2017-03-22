Function Get-FolderSizes
{   #requires -version 3.0
    Param (
        [Parameter(Mandatory=$true)]
        [string]$Path
    )

    If (Test-Path $Path -PathType Container)
    {   ForEach ($Folder in (Get-ChildItem $Path -Directory -Recurse))
        {   [PSCustomObject]@{
                Folder = $Folder.FullName
                Size = (Get-ChildItem $Folder.FullName -Recurse | Measure-Object Length -Sum).Sum
            }
        }
    }
}

Get-FolderSizes -Path \\extinfprd01\Clients_PreSource