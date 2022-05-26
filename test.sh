#!/bin/sh

set -e

./pants generate-lockfiles --resolve=ide --resolve=python-default

./pants package src/py/exes/example-exe/example_exe:__main__

./pants run src/py/exes/example-exe/example_exe:__main__
