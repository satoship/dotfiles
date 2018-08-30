function gp -d "git push origin CURRENT_BRANCH"
  set -l remote_repository 'origin'
  set current_branch (git branch | grep '*' | awk '{ print $2 }')
  if test $current_branch = 'master'
    echo 'master is dame'
    return 0
  end
  git push $remote_repository $current_branch
end
