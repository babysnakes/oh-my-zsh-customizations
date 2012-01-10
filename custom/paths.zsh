# a shortcut for elements to $PATH
function add_to_path {
  if [ -z $1 ]; then
    echo "Usage: add_to_path DIR"
    return 1
  else
    PATH_TO_ADD=$(ruby -e 'print File.expand_path("$1")')
    eval "export PATH=${PATH_TO_ADD}:${PATH}"
  fi
}

# reset the path to the original $PATH
# You need to define $ORIGINAL_PATH at the end of your zshrc.
function reset_path {
  if [ -z ${ORIGINAL_PATH} ]; then
    echo "No ORIGINAL_PATH variable exists. Not resetting!"
    return 1
  else
    export PATH=${ORIGINAL_PATH}
  fi
}
