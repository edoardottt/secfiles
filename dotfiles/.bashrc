##########################################
#         EXPORT PATH
##########################################

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/edoardottt/go/bin
export PATH=$PATH:/home/edoardottt/.cargo/bin
export PATH=$PATH:/home/edoardottt/.local/bin
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
export PATH=$PATH:$JAVA_HOME/bin
export SQLMAP_RANDOMAGENT=1


##########################################
#         ALIASES
##########################################

alias python="python3"
alias python2="python2.7"
alias hg='history | grep -i $1'
alias dirbuster="source /home/edoardottt/github/dirbuster/DirBuster-1.0-RC1.sh"
alias gf="/home/edoardottt/go/bin/gf"
alias clip="xclip -selection c"
alias suspend="systemctl suspend"
alias gau=`which gau`
alias bazel="bazelisk"
alias dockercleanup='docker kill $(docker ps -q) && docker rm $(docker ps -a -q) && docker volume rm $(docker volume ls -q) && docker rmi $(docker images -q)'


##########################################
#         FUNCTIONS
##########################################

function lsfunctions() {
  cat "$HOME"/.bashrc | egrep -i "function" | grep -iv "#" | cut -d "(" -f 1
}

function httpgrep() {
  if [[ -z $1 || -z $2 ]]; then
    echo "usage: httpgrep domains.txt word(s)"
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

  cat $1 | httpx -title -status-code -fr -fe "Origin DNS error|AccessDenied|NoSuchKey|Access Denied|Your Atlassian Cloud site is currently unavailable|Log in with Atlassian account|The request could not be satisfied"| egrep -iv "microsoftonline|google.com"
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

function rmdeadbranches() {
  git branch --merged main | grep -v '^[ *]*main$' | xargs git branch -d
  git branch --merged devel | grep -v '^[ *]*devel$' | xargs git branch -d
  git branch --merged master | grep -v '^[ *]*master$' | xargs git branch -d
  git remote prune origin
  echo "[ > ] Remember to delete local branches."
}

function commonffuf() {
  if [[ -z $1 ]]; then
    echo "usage: commonffuf http://scan.me.sh/ {options between quotes}"
    return
  fi

  if [[ ! "$1" =~ ^.*\/$ ]]; then
    target="$1/"
  else
    target="$1"
  fi

  ffuf -mc 200,204,301,302,307,401,403,405,415 -w /opt/wordlists/common.txt -u "$target"FUZZ $2
}

function addprefix() {
  if [[ -z $1 ]]; then
    echo "usage: addprefix prefix file outputfile"
    return
  fi

  if [[ -z $2 ]]; then
    echo "usage: addprefix file outputfile"
    return
  fi

  if [[ -z $3 ]]; then
    echo "usage: addprefix file outputfile"
    return
  fi

  sed -e "s/^/$1/" "$2" > "$3"
}

function rmoldsnaps() {
  sudo snap list --all | while read snapname ver rev trk pub notes; do if [[ $notes = *disabled* ]]; then sudo snap remove "$snapname" --revision="$rev"; fi; done
}

function newvenv() {
  python3 -m venv .venv && source .venv/bin/activate && python3 -m pip install -r requirements.txt
}

# Generated for pdtm. Do not edit.
export PATH=/home/edoardottt/.pdtm/go/bin:$PATH

