#!/usr/bin/env ysh
var SCRIPT_DIR = $(cd "$_this_dir" { pwd })

cd $SCRIPT_DIR {
  var tag = $(cat ../tag.txt)
  docker build --tag="demurgos/jdk:${tag}" .
}
