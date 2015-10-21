#!/bin/bash

# Generate directories used by the firewall

root="/etc/ferm"

directories=(

  "${root}"

  "${root}/ferm.d"

  "${root}/filter-input.d"

  "${root}/filter"
  "${root}/filter/input"
  "${root}/filter/forward"
  "${root}/filter/output"

  "${root}/nat"
  "${root}/nat/prerouting"
  "${root}/nat/input"
  "${root}/nat/output"
  "${root}/nat/postrouting"

  "${root}/mangle"
  "${root}/mangle/prerouting"
  "${root}/mangle/input"
  "${root}/mangle/forward"
  "${root}/mangle/output"
  "${root}/mangle/postrouting"
)

install -o root -g adm -m 2750 -d ${directories[@]}

