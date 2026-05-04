#!/usr/bin/env bash

# ANSI color codes — disabled automatically when not writing to a terminal
_color() { [ -t 1 ] && printf '%b' "$1" || true; }

RED="$(_color '\033[0;31m')"
GREEN="$(_color '\033[0;32m')"
CYAN="$(_color '\033[0;36m')"
RESET="$(_color '\033[0m')"

log_error()   { echo "${RED}error:${RESET} $*" >&2; }
log_success() { echo "${GREEN}$*${RESET}"; }
log_info()    { echo "${CYAN}$*${RESET}"; }
