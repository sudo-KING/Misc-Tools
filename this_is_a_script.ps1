Write-Host ""
Write-Host "maybe I shouldn't write something so nefarious and it should be light hearted"
Write-Host ""
sleep 2
Write-Host "'I agree!, you shouldn't be such a mean computer.'"
Write-Host ""
sleep 1
Write-Host "Fine!"
Write-Host ""
sleep 2
Write-Host "How about this!?..."
sleep 1
[console]::Beep(900,400)
[console]::Beep(1000,400)
[console]::Beep(800,400)
[console]::Beep(400,400)
[console]::Beep(600,1600)
Write-Host ""
Write-Host "Is that better for you??"
sleep 2
Write-Host ""
Write-Host "'Yes, much better! Thank you!!'"
Write-Host ""
sleep 2
$input = read-host "Name the Movie this tune is from and maybe I'll give you a reward"
if ($input -eq 'Close Encounters of the Third Kind' -or $input -eq 'close encounters of the third kind' -or $input -eq 'Close encounters of the third kind'){
Write-Host ""
Write-Output "Correct!, Here is your reward!..."
[console]::beep(440,500)
[console]::beep(440,500)
[console]::beep(440,500)
[console]::beep(349,350)
[console]::beep(523,150)
[console]::beep(440,500)
[console]::beep(349,350)
[console]::beep(523,150)
[console]::beep(440,1000)
[console]::beep(659,500)
[console]::beep(659,500)
[console]::beep(659,500)
[console]::beep(698,350)
[console]::beep(523,150)
[console]::beep(415,500)
[console]::beep(349,350)
[console]::beep(523,150)
[console]::beep(440,1000)
Write-Host ""
Write-Host "Hope you enjoyed that you filthy animal!"
Write-Host ""
Pause
}else{
Write-Host""
Write-Output "WRONG!"
Write-Host""
Write-Host "You get Nothing!"
}
