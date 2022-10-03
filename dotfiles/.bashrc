##########################################
#         EXPORT PATH
##########################################
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/edoardottt/go/bin
export PATH=$PATH:/home/edoardottt/.cargo/bin
export PATH=$PATH:/home/edoardottt/.local/bin
export SQLMAP_RANDOMAGENT=1


##########################################
#         ALIASES
##########################################
alias python="python3"
alias hg="history | grep -i $1"
alias dirbuster="source /home/edoardottt/github/dirbuster/DirBuster-1.0-RC1.sh"
alias gf="/home/edoardottt/go/bin/gf"


##########################################
#         FUNCTIONS
##########################################
function httpgrep() {
  if [[ -z $1 || -z $2 ]]; then
    echo "usage: httpgrep file word"
    return
  fi

  cat $1 | httpx -title -status-code -fr -ms "$2"
}

function alivehosts() {
  if [[ -z $1 ]]; then
    echo "usage: alivehosts domains.txt"
    return
  fi

  cat $1 | httpx -timeout 5
}

function filtertargets() {
  if [[ -z $1 ]]; then
    echo "usage: filtertargets domains.txt"
    return
  fi

  cat $1 | httpx -title -status-code -fr -fs "Origin DNS error|AccessDenied|NoSuchKey|\
  Access Denied|Your Atlassian Cloud site is currently unavailable|Log in with Atlassian account"\
  | egrep -iv "microsoftonline|google.com"
}

function lazypush() {
  if [[ -z $1 ]]; then
    echo "usage: lazypush message"
    return
  fi

  git add . && git commit -m "$1" && git push
}

function pullall() {
  OLDPULLPWD=$(pwd)
  for dir in $(ls -d $(pwd)/*/)
  do
    echo -e "\e[32m[ > ] ${dir}\e[0m"
    cd $dir
    git pull
  done
  cd $OLDPULLPWD
  unset OLDPULLPWD
}
