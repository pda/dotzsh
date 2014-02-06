# Use tcp://localhost for docker if no local socket present.
# e.g. Vagrant may be forwarding localhost:4243 to a docker host VM.
if [[ ! -S /var/run/docker.sock ]]; then
  export DOCKER_HOST="tcp://localhost:4243"
fi
