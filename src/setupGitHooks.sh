#!/bin/bash

echo "setting up git hooks"
git config core.hooksPath ./.github/hooks
git config --get core.hooksPath
