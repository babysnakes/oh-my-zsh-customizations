# a shortcut for elements to $PATH
function add_to_path {
  if [ -z $1 ]; then
    echo "Usage: add_to_path DIR"
    return 1
  else
    eval $(ruby -e "puts %{export PATH=#{File.expand_path(\"$1\")}:#{ENV['PATH']}}")
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
