# This is specific to WSL 2. If the WSL 2 VM goes rogue and decides not to free
# up memory, this command will free your memory after about 20-30 seconds.
#   Details: https://github.com/microsoft/WSL/issues/4166#issuecomment-628493643
alias wslrefresh="sudo sh -c \"echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'\""

alias cchown="sudo chown -R ucul:ucul"
alias cde="docker exec -ti"
alias cgca="git commit --amend"
alias cgd="git branch -d"
alias cgD="git branch -D"
alias cgg="git log --oneline --pretty=oneline --graph"
alias cggv="git log --pretty=full --graph"
alias cggvv="git log --pretty=fuller --graph"
alias cgpru="cgprune"
alias cgprune="git remote prune origin"
alias cgri="git rebase -i"
alias cl="clear"
