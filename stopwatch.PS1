$Seconds = 120
$EndTime = [datetime]::UtcNow.AddSeconds($Seconds)

while (($TimeRemaining = ($EndTime - [datetime]::UtcNow)) -gt 0) {
  Write-Progress -Activity 'Smiling for...' -Status 'two minutes' -SecondsRemaining $TimeRemaining.TotalSeconds
  Start-Sleep 1
}