if [[ -n $AWS_VAULT ]]; then
  PROMPT="%F{242}[aws-vault:$AWS_VAULT]%f $PROMPT"
fi
