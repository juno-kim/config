# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo ' %F{red}('$branch')%f'
  fi
}
setopt prompt_subst
export PROMPT='%m %F{blue}%2~%f$(git_branch_name) %# '

# alias
alias ls="ls -GFhl"
alias gitrm='git ls-files --deleted -z | xargs -0 git rm'
