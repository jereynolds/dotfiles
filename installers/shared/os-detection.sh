#!/usr/bin/env bash

_current_os=$(uname)

function is_macos() {
  [[ "$_current_os" == "Darwin" ]]
}

function is_linux() {
  [[ "$_current_os" == "Linux" ]]
}

function is_google_macos() {
  [ -d "/Applications/gMacInformation.app" ]
}

function is_google_linux() {
  [[ "$(uname -a)" =~ "corp.google.com" ]]
}
