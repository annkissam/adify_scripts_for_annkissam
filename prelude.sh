#!/usr/bin/env bash

#############
### ABOUT ###
#############
# This script uses adify's prelude with Annkissam's setup scripts

# ADIFY_VERSION=0.1.0
ADIFY_VERSION="master"

## Taken from aditya7iyengar/adify
## Start----------------------
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
BOLD=$(tput bold)
NORMAL=$(tput sgr0)

_announce_step() {
  echo -e """$BLUE
==========================================================
$1.......
==========================================================$NC"""
}

_announce_error(){
  echo -e """
$RED[\u2717] $1 $NC
  """
  exit 1
}

_announce_success() {
  echo -e """
$GREEN[\u2713] $1 $NC
  """
}

_announce_info() {
  echo -e """$BLUE
---> $1 $NC
  """
}
## End----------------------

fetch_ak_scripts() {
  _announce_step "Checking if the system is Adifyable"

  if [ -d "$HOME/.adify_scripts_for_annkissam" ]; then
    _announce_error "${HOME}/.adify_scripts_for_annkissam found. Please delete the folder and restart"
  else
    _announce_info "Fetching Adify code to ${HOME}/.adify_scripts_for_annkissam"
    git clone https://github.com/annkissam/adify_scripts_for_annkissam $HOME/.adify_scripts_for_annkissam
  fi
}

run_adify_with_ak_configurations() {
  _announce_step "Running adify with AK scripts"

  adify_prelude_url=https://raw.githubusercontent.com/aditya7iyengar/adify/${ADIFY_VERSION}/prelude.sh

  if [[ -z "$ADIFY_TEST" ]]; then
    adify_test=false
  else
    adify_test=${ADIFY_TEST}
  fi

  if [[ -z "$NO_CONFIRM" ]]; then
    noconfirm=false
  else
    noconfirm=${NO_CONFIRM}
  fi

  if [[ -z "$NO_CLEANUP" ]]; then
    nocleanup=false
  else
    nocleanup=${NO_CLEANUP}
  fi

  if $noconfirm == true; then
    if $adify_test == true; then
      _announce_info "NO_CONFIRM, ADIFY_TEST"
      ADIFY_TEST="true" NO_CONFIRM="true" TOOLS_DIR=${HOME}/.adify_scripts_for_annkissam/tools/ bash <(curl -s $adify_prelude_url)
    else
      _announce_info "NO_CONFIRM"
      NO_CONFIRM="true" TOOLS_DIR=${HOME}/.adify_scripts_for_annkissam/tools/ bash <(curl -s $adify_prelude_url)
    fi
  else
    _announce_info "CONFIRM MODE"
    if $nocleanup == true; then
      _announce_info "NO CLEANUP MODE"
      NO_CLEANUP="true" TOOLS_DIR=${HOME}/.adify_scripts_for_annkissam/tools/ bash <(curl -s $adify_prelude_url)
    else
      _announce_info "CLEANUP MODE"
      TOOLS_DIR=${HOME}/.adify_scripts_for_annkissam/tools/ bash <(curl -s $adify_prelude_url)
    fi
  fi
}

main() {
  fetch_ak_scripts

  run_adify_with_ak_configurations
}

main
