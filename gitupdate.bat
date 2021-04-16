echo off
cls
echo going to commit everything that was changed in the directory
git status
echo if you want to stop, press control+C now, otherwise
pause
git add * 
git commit -m "upgating the scripts"
echo committed changes
echo now going to push the changes to the repository
git push
