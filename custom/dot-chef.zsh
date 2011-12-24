# helper to switch between multiple chef accounts.
function dot-chef() {
  if [ -z "$1" ]; then
    [ -L .chef ] && \
      echo ".chef currently points to $(readlink .chef)" || \
      echo "There is no .chef link!"
    echo "Run: dot-chef <DIR> in order to link .chef to <DIR>"
  elif [ ! -d "$1" ]; then
    echo "Directory \"$1\" doesn't exist!"
    return 1
  else
    [ -L .chef ] && unlink .chef
    ln -s "$1" .chef
    ls -l .chef
  fi
}
