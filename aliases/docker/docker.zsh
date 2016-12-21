# Docker
# Stolen from tcnksm/docker-alias

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"

# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"

# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Stop all containers
alias dstop="docker stop $(docker ps -a -q)"

# Remove all containers
alias drm="docker rm $(docker ps -a -q)"

# Remove an Images
dri() {
  docker rmi $1
}
# Remove all images
alias drai="docker rmi $(docker images -q)"

# Dockerfile build, e.g., $dbu tcnksm/test
alias dbu="docker build -t=$1 ."

# Show all alias related docker
dali() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

# Bash into running container
alias dbash="docker exec -it $(docker ps -aqf "name=$1") bash"

# Docker Compose
