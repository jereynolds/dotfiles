# Zeet
export PATH=~/.asdf/installs/golang/1.19.3/packages/bin:$PATH
source "/opt/homebrew/opt/asdf/libexec/asdf.sh"

export ZEET_HOME="$HOME/code"
export AWS_REGION=us-west-2
export LOCAL_KUBECONFIG_PATH=/Users/jacob/code/kubeconfig.demo-aws.yaml

alias localpg="PGPASSWORD=postgres psql --host=localhost -U postgres -d postgres"