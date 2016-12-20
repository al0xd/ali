BASEDIR=$(dirname "$0")

if [ -d $BASEDIR/src ]; then
  for file in $BASEDIR/aliases/*; do
    source $file
  done
fi
