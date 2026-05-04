#!/usr/bin/env bash

cmd_hello() {
  local uppercase=false

  while [[ $# -gt 0 ]]; do
    case "$1" in
      -u|--uppercase) uppercase=true; shift ;;
      -h|--help)
        echo "Usage: my-cli hello [--uppercase] <name>"
        return 0 ;;
      -*) log_error "Unknown option: $1"; return 1 ;;
      *)  local name="$1"; shift ;;
    esac
  done

  if [[ -z "${name:-}" ]]; then
    log_error "Missing required argument: <name>"
    return 1
  fi

  local greeting="Hello, ${name}!"
  [[ "$uppercase" == true ]] && greeting="${greeting^^}"
  log_success "$greeting"
}
