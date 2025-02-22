#!/usr/bin/env bash
# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

# Test 01: Ensure the program runs without error with a simple, valid invocation.
if ! $CALCULATOR 1 + 1; then
  echo 'ERROR! A valid run of the calculator (1 + 1) failed!'
  exit 1
fi

# Test 02: Ensure simple case has correct output...
if [[ $($CALCULATOR 1 + 1) != "2" ]]; then
  echo 'ERROR! A valid run of the calculator (1 + 1) failed to produce 2 as an output!'
  exit 1
fi

# Test 03: Ensure program errors with an invalid operand
if $CALCULATOR 3 @ 2; then
  echo 'ERROR! An invalid run of the application (3 @ 2) apparently succeeded?!'
  exit 1
fi

# my tests
if [[ $($CALCULATOR 5 '*' 4) != "20" ]]; then
  echo 'ERROR! Multiplication 5 * 4 failed to produce 20!'
  exit 1
fi

if [[ $($CALCULATOR 1000 + 2000) != "3000" ]]; then
  echo 'ERROR! Addition of large numbers (1000 + 2000) failed!'
  exit 1
fi
