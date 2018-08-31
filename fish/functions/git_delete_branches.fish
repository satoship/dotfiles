function git_delete_branches -d "delete other branches"
  git branch | grep -v '*' | grep -v 'master' | xargs git branch -D
end
