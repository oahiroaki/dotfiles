#!/bin/bash -eu

script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
for path in $(find config -type f -print)
do
  file=`basename $path`
  echo "$script_dir/$path" "$HOME/.$file"
  ln -s "$script_dir/$path" "$HOME/.$file"
done
