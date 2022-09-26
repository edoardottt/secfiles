
function httpgrep() {
  cat $1 | httpx -title -status-code -fr -ms "$2"
}
