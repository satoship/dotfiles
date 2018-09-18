function gfp -d "git push -f origin CURRENT_BRANCH"
  set -l remote_repository 'origin'
  set current_branch (git branch | grep '*' | awk '{ print $2 }')
  if test $current_branch = 'master'
    echo 'master is dame'
    return 0
  end
  read -p 'echo "FORCE push to $current_branch ?:"' RESULT
  if test $RESULT = 'y'
    git push -f $remote_repository $current_branch
  end
end
