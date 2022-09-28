##########################################
#         ALIASES
##########################################
alias python="python3"
alias hg="history | grep -i $1"

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
  for dir in $(ls -d $(pwd)/*/)
  do
    echo -e "\e[32m[ > ] ${dir}\e[0m"
    cd $dir
    git pull
  done
}
