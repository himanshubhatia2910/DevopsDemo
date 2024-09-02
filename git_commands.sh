# Create a directory for the fast forward merge example and navigate into it
mkdir ffm && cd ffm

# Initialize a new Git repository
git init

# Create two files, a.txt and b.txt
touch a.txt b.txt

# Add the files to the staging area
git add .

# Commit the changes
git commit -m "added a.txt and b.txt"

# Create another file c.txt and commit it
touch c.txt
git add .
git commit -m "added c.txt"

# Create a new branch called 'feature' and switch to it
git checkout -b feature

# Create two new files, x.txt and y.txt, and commit them
touch x.txt
git add .
git commit -m "added x.txt"

touch y.txt
git add .
git commit -m "added y.txt"

# Switch back to the master branch
git checkout master

# Merge the 'feature' branch into 'master'
git merge feature

# Create a directory for the three-way merge example and navigate into it
mkdir 3waymerge && cd 3waymerge

# Initialize a new Git repository
git init

# Create and commit files a.txt and b.txt on the master branch
touch a.txt
git add .
git commit -m "added a.txt on master"

touch b.txt
git add .
git commit -m "added b.txt on master"

# Create a new branch called 'feature' and switch to it
git checkout -b feature

# Create and commit files c.txt and d.txt on the 'feature' branch
touch c.txt
git add .
git commit -m "added c.txt on feature"

touch d.txt
git add .
git commit -m "added d.txt on feature"

# Switch back to the master branch
git checkout master

# Create and commit a new file e.txt on the master branch
touch e.txt
git add .
git commit -m "added e.txt on master"

# Merge the 'feature' branch into 'master'
git merge feature