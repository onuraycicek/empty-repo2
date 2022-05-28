#!/bin/bash
echo 'Enter the commit message:'
read commitMessage



echo 'Enter the name of the branch (development):'
read branch

if [ -z "${branch}" ]; then
	branch="development"
fi

git checkout -b $branch

git add .

git commit -m "$commitMessage"

git push origin $branch $@


