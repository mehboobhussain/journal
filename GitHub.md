### Using GitHub on PC

* First go to GitHub and create a repository
* Add at least one file, probably README.md to say what the repository is all about
* Check the repository has been created and working properly on the web

##### On the PC
* Download GitHub software GitCMD - this is like windows cmd
* Go to the parent directory where you want to copy the repository e.g. journal
* On the command prompt issue the following commands
> git config --global user.name "mehboobhussain"
> git config --global user.email "hussain.mehboob@gmail.com"
> authorise 
> git clone https://github.com/mehboobhussain/journal

** Journal is name of the repository, same way, you can clone/copy any repository to a local disk
** This will create a local folder with the name as of repository and copy all the files
** From the repository in the local folder

_Note_

** If you have an already existing folder on the PC that you want to sync, the easiest option is to create the repository with a different name, clone it and then copy all the contents of the existing folder into this cloned folder. Once done, it is all set.

Now you can change files in the local folder and push these to the repository by
> git add * 
> git commit -m "message"
> git push
git push

If you have made changes in the Git repository and want to sync these to the local folder then
> git pull

That's it. Enjoy!!

