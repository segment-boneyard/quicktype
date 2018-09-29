#!/bin/bash

script/build.ts

./dist/cli/index.js --lang java -o test.java --src example.schema -s schema > test.java.out

./dist/cli/index.js --lang ts -o test.ts --src example.schema -s schema > test.ts.out

colordiff test.java.out test.ts.out