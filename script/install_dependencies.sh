#!/usr/bin/env bash

# This script installs the unresolved dependencies.

set -e
set -x

# Install dousi RPC.
DISTKV_REPOSITORY_URL=https://github.com/distkv-project/distkv.git
DISTKV_COMMIT_ID=9cb2364f0bd933b9ff333616c135967f27550873

git clone ${DISTKV_REPOSITORY_URL} distkv_tmp
pushd distkv_tmp
git checkout ${DISTKV_COMMIT_ID}
mvn clean install -DskipTests
popd
rm -rf distkv_tmp

echo "Dousi RPC was installed successfully."

echo "All dependencies were installed successfully."
