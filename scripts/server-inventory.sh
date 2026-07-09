#!/usr/bin/env bash

set -euo pipefail
SCRIPT_DIR="$(cd  "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../lib/common.sh"

print_info "Collecting server information..."

echo
echo "Hostname:"
hostname

echo
echo "Operating system:"
cat /etc/os-release

echo
echo "Kernel:"
uname -r
