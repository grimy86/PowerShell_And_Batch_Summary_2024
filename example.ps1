# Check PS path
Test-Path C:\Windows\System32\WindowsPowerShell\v1.0
# Check Exe file
Test-Path C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
# Get content
# Get-Content C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
# where object
Get-Service | Where-Object {$_.Status -eq "Stopped"}
Start-Sleep -s 1
Get-Service | Format-List
# In this example, we'll divide integer in an array. We'll refer to each object using $_.
1000,2000,3000 | ForEach-Object -Process {$_/1000}


#Creating variable
$location = Get-Location
#Using the vqriqble
Write-Host $location

# Getting information of variable
# Get-Member cmdlet can tell the type of variable being used. See the example below.
 $location | Get-Member