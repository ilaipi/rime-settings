#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

install() {
  local HOME=$(env | grep ^HOME= | cut -c 6-)

  local CONFIG_DIR
  CONFIG_DIR="${RIME_CONFIG_DIR:-${HOME}/Library/Rime}"

  CURRENT_DIR=$(pwd)

  cd $CONFIG_DIR

  rm -fr *.yaml custom_phrase.txt *.gram lua/ opencc/ rime.lua

  cd $CURRENT_DIR

  cp -r *.yaml custom_phrase.txt *.gram lua/ opencc/ rime.lua $CONFIG_DIR/
}

install

} # this ensures the entire script is downloaded #
