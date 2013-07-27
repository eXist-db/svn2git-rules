#!/bin/env bash

for dir in `ls -d */`
do
	repo="${dir%/}"
	echo "Processing repo ${repo}..."
	cd "$repo"
	git repack -a -d -f
	origin="git@github.com:eXist-db/${repo}.git"
	git remote add origin $origin
	git push --all
	git push --tags
	cd ..
done 
