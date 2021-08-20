#!/usr/bin/env bash

terraform-config-inspect --json . | jq -r '
  [.required_providers[].aliases]
  | flatten
  | del(.[] | select(. == null))
  | reduce .[] as $entry (
    {};
    .provider[$entry.name] //= [] | .provider[$entry.name] += [{"alias": $entry.alias}]
  )
'
