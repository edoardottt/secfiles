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
