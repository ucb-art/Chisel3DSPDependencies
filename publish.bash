#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/firrtl ; sbt publish-local ; sbt assembly; cd ..
cd $DIR/chisel3 ; sbt publish-local ; cd ..
cd $DIR/firrtl-interpreter ; sbt publish-local ; cd ..
cd $DIR/chisel-testers ; sbt publish-local ; cd ..
cd $DIR/dsptools ; sbt publish-local ; cd ..
source setenv.bash