#!/usr/bin/env ysh
var SCRIPT_DIR = $(cd "$_this_dir" { pwd })

cd $SCRIPT_DIR {
  ./build.sh
  var tag = $(cat ../tag.txt)
  docker push "demurgos/jdk:${tag}"
}
