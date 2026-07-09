#!/usr/bin/env bash

set -euo pipefail

PROJECT_NAME="HomeServer Admin"
PROJECT_VERSION="0.1.0-dev"

print_version() {
	echo "${PROJECT_NAME} ${PROJECT_VERSION}"
}

print_info() {
	echo "[INFO] $*"
}

print_warning() {
	echo "[WARNING] $*" >&2
}

print_error() {
	echo "[ERROR] $*" >&2
}

die() {
	print_error "$*"
	exit 1
}

require_command() {
	command -v "$1" >/dev/null 2>&1 || die "Required command not found: $1"
}
