#!/usr/bin/env bash

cmd_info() {
  local data=(
    "platform:$(uname -s | tr '[:upper:]' '[:lower:]')"
    "arch:$(uname -m)"
    "bash:${BASH_VERSION}"
    "pid:$$"
  )

  for entry in "${data[@]}"; do
    local key="${entry%%:*}"
    local value="${entry#*:}"
    printf "  %b%-10s%b  %s\n" "$CYAN" "$key" "$RESET" "$value"
  done
}
