#!/usr/bin/env bash


{
  wget --version 2>/dev/null

} || {
  echo 'wget command not found.' && return 1
}
wget https://raw.githubusercontent.com/fuchicorp/common_scripts/master/set-environments/terraform/google-set-env.sh -O set-env.sh >/dev/null 
