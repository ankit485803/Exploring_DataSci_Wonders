
:'
26th April 2026 (Sunday - sem6 IITP) restructure the directory 

'


PS D:\GitProj\Exploring_DataSci_Wonders> Copy-Item -Recurse Exploring_DataSci_Wonders Exploring_DataSci_Wonders_backup
PS D:\GitProj\Exploring_DataSci_Wonders> cd D:\GitProj\Exploring_DataSci_Wonders
PS D:\GitProj\Exploring_DataSci_Wonders> Remove-Item -Recurse -Force .\Exploring_DataSci_Wonders\.git
PS D:\GitProj\Exploring_DataSci_Wonders> Move-Item .\Exploring_DataSci_Wonders\* .
PS D:\GitProj\Exploring_DataSci_Wonders> Move-Item .\Exploring_DataSci_Wonders\.* . -Force -ErrorAction SilentlyContinue

PS D:\GitProj\Exploring_DataSci_Wonders> Remove-Item -Recurse -Force .\Exploring_DataSci_Wonders
PS D:\GitProj\Exploring_DataSci_Wonders> git add .
git commit -m "Restructure project: move files to root directory"
git push -u origin main --force

PS D:\GitProj\Exploring_DataSci_Wonders> git rm -r --cached Exploring_DataSci_Wonders_backup
rm 'Exploring_DataSci_Wonders_backup'
PS D:\GitProj\Exploring_DataSci_Wonders> git commit -m "Remove backup folder from repository"
Remove-Item -Recurse -Force .\Exploring_DataSci_Wonders_backup


# notes
git commit `
-m "Replace large PDF with compressed version" `
-m "Removed 36MB file, added 1.5MB compressed PDF" `
-m "Added command.sh script"