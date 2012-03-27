echo Clearing XSI examples in %CD%

cd project
if exist Backup rd /s /q Backup

cd Scenes
For /F "Tokens=*" %%I in ('dir /b') Do if not "%%I" == "scene.scn" del "%%I"
cd ..

cd system
For /F "Tokens=*" %%I in ('dir /b /ad') Do if not "%%I" == ".svn" rd /s /q "%%I"
cd ..

if exist Render_Pictures rd /s /q Render_Pictures