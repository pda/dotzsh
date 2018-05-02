if [[ -n $AWS_VAULT ]]; then
  PROMPT="%F{242}[aws:$AWS_VAULT]%f $PROMPT"
fi
