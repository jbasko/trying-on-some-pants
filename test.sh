#!/bin/sh

set -e

./pants generate-lockfiles --resolve=ide --resolve=python-default

./pants package src/py/exes/example-exe/example_exe:bin

./pants run src/py/exes/example-exe/example_exe:bin

./pants package src/py/exes/example-exe/Dockerfile

./pants run src/py/exes/example-exe/Dockerfile
