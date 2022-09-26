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
    echo "usage: alivehosts domains.txt outputFile"
    return
  fi

  cat $1 | httpx -timeout 5 -o $2
}
