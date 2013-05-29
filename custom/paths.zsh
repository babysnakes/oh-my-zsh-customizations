# a shortcut for elements to $PATH
function add-to-path {
  if [ -z $1 ]; then
    echo "Usage: add_to_path DIR"
    return 1
  else
    PATH_TO_ADD=$(echo "$1"(:A))
    export PATH=${PATH_TO_ADD}:${PATH}
    rehash
  fi
}

# remove from path (idea borrowed from nvm).
# This won't work on last element in $PATH because for safety reasons
# I'm matching a ":" after the path element.
function remove-from-path {
  if [[ -z $1 ]]; then
    echo "Usage: remove-from-path DIR"
    return 1
  else
    PATH_TO_REMOVE=$(echo "$1"(:A))
    if [[ $PATH == *$PATH_TO_REMOVE:* ]]; then
      export PATH=${PATH%$PATH_TO_REMOVE*}${PATH#*$PATH_TO_REMOVE:}
      rehash
    fi
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
