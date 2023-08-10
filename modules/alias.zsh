alias -g cchown="sudo chown -R ucul:ucul"
alias -g cddb="docker build -t kambing ."
alias -g cde="docker exec -ti"
alias -g cgbn="git branch --show-current"
alias -g cgca="git commit --amend"
alias -g cgd="git branch -d"
alias -g cgD="git branch -D"
alias -g cgdgone="git branch -vv | awk '/: gone\]/{print \$1}' | xargs git branch -d"
alias -g cgf="git fetch --all --prune"
alias -g cgg="git log --oneline --pretty=oneline --graph"
alias -g cggv="git log --pretty=full --graph"
alias -g cggvv="git log --pretty=fuller --graph"
alias -g cgpru="cgprune"
alias -g cgprune="git remote prune origin"
alias -g cgri="git rebase --rebase-merges -i"
alias -g cgrm="git rebase --rebase-merges"
alias -g cl="clear"

function cddr {
    docker rm -f kuda
    docker run -ti --name kuda kambing $@
}

function cddrp {
    FIRST_PARAM=$1
    shift
    REST_PARAM=$@

    docker rm -f kuda
    docker run -d --name kuda -p $FIRST_PARAM kambing $REST_PARAM
}
