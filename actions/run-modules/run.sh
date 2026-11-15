#!/usr/bin/env bash
set -euo pipefail

if [[ "$MODULES" == "auto" ]]; then
  MODULES="$(
    find . \
      -type d \( -name .git -o -name vendor -o -name testdata \) -prune -o \
      -type f -name go.mod -exec dirname {} \; |
      LC_ALL=C sort
  )"
fi

if [[ -z "${MODULES//[[:space:]]/}" ]]; then
  echo "::error::No Go modules selected"
  exit 1
fi

status=0

while IFS= read -r module; do
    [[ -z "$module" ]] && continue

    echo "::group::$module: $COMMAND"

    (
        cd "$module" &&
        bash -e -o pipefail -c "$COMMAND"
    ) || status=1

    echo "::endgroup::"

done <<< "$MODULES"

exit "$status"