echo -e "\033[0;32mDeploying updates to GitHub...\033[0m" # Build the project.

git add . # Commit changes.
msg="rebuilding site `date` "
echo -e "\033[0;32m$msg\033[0m"
if [$#-eq 1]
then 
  msg="$1"
fi
git commit -m "$msg" # Push source and build repos.
git push -u origin main # Come Back up to the Project Root