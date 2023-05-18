#!/bin/zsh

DEPENDENCIES=(
  helm
  yq
)

#######################################
# Check the shell path for required commands.
# Globals:
#   DEPENDENCIES
# Arguments:
#   None
#######################################
check_dependencies() {

  typeset -a not_installed
  local return_code=0

  # Use the which commands to quickly search the users $PATH for commands.
  for dependency in "${(@)DEPENDENCIES}"; do
    if ! which $dependency &> /dev/null; then
      not_installed+=($dependency)
      return_code=1
    fi
  done

  # Fail the function if a dependency is missing.
  if (( $return_code != 0 )); then
    echo "Script dependencies are not found in the shell path, please install: $not_installed."
  fi

  return $return_code

}



main() {

  check_dependencies
  set -ex

  SESSION_YAML=$(yq .spec.source.helm.valueFiles.0 academy-session-control.yml)

  cd workspace/  
  helm template . --values $SESSION_YAML --debug

}

main