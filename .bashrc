alias python="python3"
alias hg="history | grep -i $1"

function httpgrep() {
  cat $1 | httpx -title -status-code -fr -ms "$2"
}
