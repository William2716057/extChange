#Directory path
$directory = "sample.txt"

#Get files with .txt extension recursively
$files = Get-ChildItem -Path $directory -Filter "*.txt" -Recurse

#Iterate
foreach ($file in $files) {
    #Change to .py extension
    $newName = $file.FullName -replace "\.txt$", ".py"

    #Rename
    Rename-Item -Path $file.FullName -NewName $newName

    Write-Host "Renamed $($file.FullName) to $($newName)"
}
