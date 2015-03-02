What we will do today in class
------------------------------

First you will create a repository of your own, then you will contribute to a shared 
repository. A *repository* is a place for all your stuff, or a place for all the stuff
of a group.

1. Make a personal repository for yourself: https://github.com and log in, then click the green button next to "Your repositories"
2. When it asks, say that yes you want a README
3. Now get the repository onto your own computer with the "clone" command. You can find the right URL on the repository page on Github, in a little box on the right-hand side. Decide where you are going to put the files on your computer, change to that folder, and run the command:

    git clone https://github.com/NAME/REPOSITORY.git
    cd REPOSITORY
    
4. Now add something to it! Use your text editor (Notepad++ or TextMate or similar) to write yourself a note. Save the note to your repository folder. And then tell Git about it.

    git add FILENAME  # tells Git that you want to track this file
    git commit -m "This is my first commit"  # tells Git to make a copy
    git push          # tells GitHub to pick up what you just did.
    
5. Now you can add a picture or anything you like to the directory, and you can make some change to your note. You can see at any time what you need to do with the command:

    git status
    
and you might get something that looks like this, telling you that you've made changes to a file it knows about and that you also now have a file it doesn't know about.

	On branch master
	Your branch is up-to-date with 'origin/master'.
	
	Changes not staged for commit:
	  (use "git add <file>..." to update what will be committed)
	  (use "git checkout -- <file>..." to discard changes in working directory)
	
		modified:   README.md
	
	Untracked files:
	  (use "git add <file>..." to include in what will be committed)
	
		Instructions.md
	
	no changes added to commit (use "git add" and/or "git commit -a")
    
6. Go ahead and add/commit the change(s) you made - make sure you changed something in your note! And then push it all to Github again.

    git add FILENAME1 FILENAME2
	git commit -m "This is my second commit"
	git push
	
7. Essentially Github is a social network for collaboration, and so I've added you all to a group and given you a group repository. That means you can all share things! Go back out of this repository to the folder where you are storing Git things:

    cd ..
    
8. Now clone the group repository just as you did in step 3.

    git clone https://github.com/DHBern/digitaldata_2015.git
    cd digitaldata_2015
    
9. Add a file, or make a change to the README.md file. And then see what happens if you try to push it! Only one of you will succeed...

	
	git commit -m "I made a change to a shared repository"
	git push

10. The rest of you will get a message like this:

	To git@github.com:tla/stemmaweb.git
	 ! [rejected]        master -> master (non-fast-forward)
	error: failed to push some refs to 'git@github.com:tla/stemmaweb.git'
	To prevent you from losing history, non-fast-forward updates were rejected
	Merge the remote changes (e.g. 'git pull') before pushing again.  See the
	'Note about fast-forwards' section of 'git push --help' for details.

11. Scary huh? But it's okay, nothing actually broke! What it says is that someone else already changed the repository since you last got a copy, and you have to update your copy before you are allowed to send changes. (Otherwise whatever was changed by the someone else will be lost, and that isn't very collaborative.) Here is how you do that:

    git pull
    
12. Now try your `git push` command again. For some of you it will work, and for others you might get a message about a 'conflict'. Raise your hand if that's the case.

13. A conflict means that two of you tried to change the same place in the same file at the same time, and whichever of you wasn't first now has to decide what to do. I'll show an example of a conflict up on the screen and how we *resolve* it. This looks a little intimidating, but do it a few times and it will start to make sense.

14. Now go to the repository page on Github, and you'll be able to see where everyone has made changes!
    
