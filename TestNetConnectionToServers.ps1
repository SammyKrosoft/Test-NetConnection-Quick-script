# Define output file name and path
$ResultsFile = "C:\temp\TestConnectivityResults_$(Get-Date -F ddMMMyyy_hh-mm-ss).csv"

# Add more ports to test in the $Ports variable, use PowerShell list format, comma separated values in between brackets
$Ports = (25,50636,443)

# Add more servers IP, hostnames or fqdns in PowerShell list format, comma separated strings in between brackets
#[array]$Computers = ("172.20.0.6","Edge01.CanadaDrey.ca")
[array]$Computers = ("E2016-01","E2016-02","Edge01")


# Initialize collection results variable (this is what we'll store in a file)
$connectionresult = @()

# For each computer, and for each port, we test the connection using Test-NetConnection PowerShell cmdlet
Foreach ($computer in $Computers){
    Write-host "Testing computer $computer" -BackgroundColor Yellow -ForegroundColor blue
    Foreach ($port in $Ports){
        write-host "testing port $port"
        $ConnectionResult += Test-NetConnection -Port $port -ComputerName $computer | select @{name="From:";expression={$_.SourceAddress}},@{name="To:";expression={$_.RemoteAddress}}, RemotePort,TCPTestSucceeded
    }
}

# We store the collection variable with the results in the file defined in the $ResultsFile variable
$ConnectionResult | Export-CSV -NoTypeInformation -Path $ResultsFile

# Optionnal: open the results file with Notepad directly
notepad $ResultsFile
