svn2git rules
==============

Rules files for moving from SourceForge Subversion to GitHub Git

These rules files are used in conjunction with the svn2git tool written in C++ by the KDE project.

* http://www.gitorious.org/svn2git/

* http://www.gitorious.org/svn2git/pages/How%20to%20Write%20KDE%20svn2git%20Import%20Rules

* http://techbase.kde.org/Projects/MoveToGit/UsingSvn2Git

Howto
-----
git clone git@github.com:eXist-db/svn2git-rules.git

rsync -av svn.code.sf.net::p/exist/code exist-svn-rsync

mkdir export

cd export

../svn2git/svn-all-fast-export --identity-map ../authors.txt --rules ../svn2git-rules/exist-svn.rules --add-metadata --add-metadata-notes --stats ../exist-svn-rsync


Now you need to create an empty repo on GitHub for each repository in exist-svn.rules and then repack and push each repo to GitHub. For example to push the converted eXist repo -

cd exist

git repack -a -d -f

git remote add origin git@github.com:eXist-db/exist.git

git push --all

git push --tags
