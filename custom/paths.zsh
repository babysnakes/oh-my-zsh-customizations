# a shortcut for elements to $PATH
function add-to-path {
  if [ -z $1 ]; then
    echo "Usage: add_to_path DIR"
    return 1
  else
    PATH_TO_ADD=$(echo "$1"(:A))
    eval "export PATH=${PATH_TO_ADD}:${PATH}"
  fi
}

# reset the path to the original $PATH
# You need to define $ORIGINAL_PATH at the end of your zshrc.
function reset-path {
  if [ -z ${ORIGINAL_PATH} ]; then
    echo "No ORIGINAL_PATH variable exists. Not resetting!"
    return 1
  else
    export PATH=${ORIGINAL_PATH}
  fi

  export MANPATH=${ORIGINAL_MANPATH}
}
