#!/bin/sh

set -o errexit
set -o nounset

UNAME="$(uname)"
test "$UNAME" = "Linux" || \
  (echo "This script should not run for $UNAME" 1>&2 && exit 1)
echo "PASS $0" 1>&2
