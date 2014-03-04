export AWS_CLOUDFORMATION_HOME="/usr/local/AWSCloudFormation-1.0.12"
export PATH="$AWS_CLOUDFORMATION_HOME/bin:$PATH"
export EC2_KEY_NAME=$(cat $HOME/.aws/ec2_key_name 2>/dev/null)
export AWS_CREDENTIAL_FILE="$HOME/.aws/credentials"
