#!/bin/bash
set -eo pipefail

cat brew_packages.txt | xargs brew install
