if [[ -n $AWS_VAULT ]]; then
  PROMPT="%F{242}[aws:$AWS_VAULT]%f $PROMPT"
fi

# get an aws-vault shell for an hour, notify when expired
avsh() {
  seconds=3600
  setopt LOCAL_OPTIONS NO_NOTIFY NO_MONITOR
  if [[ $# -ne 1 ]]; then echo "Usage: $0 <profile>"; return; fi
  (
    n=0; stop=0
    trap "stop=1" TERM
    until [[ $n -ge $seconds || $stop -eq 1 ]]; do n=$[$n+1]; sleep 1; done
    [[ $stop -eq 0 ]] && echo -e "\naws-vault session expired"
  )&
  subshell="$!"
  disown
  aws-vault exec --assume-role-ttl="$seconds"s "$1"
  kill -TERM "$subshell" 2>/dev/null && true
}
