svn2git rules
==============

Rules files for moving from SourceForge Subversion to GitHub Git

These rules files are used in conjunction with the svn2git tool written in C++ by the KDE project.

* http://www.gitorious.org/svn2git/

* http://www.gitorious.org/svn2git/pages/How%20to%20Write%20KDE%20svn2git%20Import%20Rules

* http://techbase.kde.org/Projects/MoveToGit/UsingSvn2Git

Howto
-----
./svn-all-fast-export --identity-map ./authors.txt --rules ../exist-svn.rules --add-metadata --add-metadata-notes --stats ./exist-svn-rsync

cd exist

git repack -a -d -f

git remote add origin git@github.com:eXist-db/exist.git
git push --all
