$ErrorActionPreference = 'Stop'
$port = 4173
$url = "http://127.0.0.1:$port"
$listener = Get-NetTCPConnection -LocalPort $port -State Listen -ErrorAction SilentlyContinue
if (-not $listener) {
  Start-Process -FilePath 'python' -ArgumentList @('-m','http.server',"$port",'--bind','127.0.0.1','--directory',$PSScriptRoot) -WindowStyle Hidden
  Start-Sleep -Milliseconds 900
}
Start-Process $url
Write-Host "TraceLens is running at $url"
