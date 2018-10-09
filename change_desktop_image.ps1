$p = "$home\Pictures\bgir.jpg"
$u = "http://www.5p2.org.il/wp-content/uploads/agshimim-new.jpg"
Invoke-WebRequest $u -OutFile $p 
Start-Sleep -s 2
set-itemproperty -path "HKCU:Control Panel\Desktop" -name WallPaper -value $p
rundll32.exe user32.dll, UpdatePerUserSystemParameters