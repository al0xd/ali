BASEDIR=$(dirname "$0")

if [ -d $BASEDIR/aliases ]; then
  for file in $BASEDIR/aliases/{docker,git,ruby,shell,tmux,unix}/*; do
    source $file
  done
fi
