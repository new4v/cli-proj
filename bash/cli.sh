#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=lib/utils.sh
source "$SCRIPT_DIR/lib/utils.sh"
# shellcheck source=commands/hello.sh
source "$SCRIPT_DIR/commands/hello.sh"
# shellcheck source=commands/info.sh
source "$SCRIPT_DIR/commands/info.sh"

VERSION="1.0.0"

usage() {
  cat <<EOF
Usage: $(basename "$0") <command> [options]

A CLI tool boilerplate.

Commands:
  hello <name>   Greet a user
  info           Show system info
  help           Show this help

Options:
  -v, --version  Show version
  -h, --help     Show this help
EOF
}

main() {
  if [[ $# -eq 0 ]]; then
    usage
    exit 0
  fi

  case "$1" in
    hello)   shift; cmd_hello "$@" ;;
    info)    shift; cmd_info "$@" ;;
    -v|--version) echo "my-cli $VERSION" ;;
    -h|--help|help) usage ;;
    *) log_error "Unknown command: $1"; usage; exit 1 ;;
  esac
}

main "$@"
