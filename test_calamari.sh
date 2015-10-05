#!/bin/bash

set -xe

run_at="$(date +%A)"
pushd /root/calamari
git fetch
git reset --hard origin/master
git checkout master
git reset --hard origin/master
pushd vagrant/devmode
vagrant up --provider digital_ocean --no-provision 2>&1 | tee /root/nightly_logs/"$run_at".calamari.log
vagrant provision --provision-with nightly 2>&1 | tee /root/nightly_logs/"$run_at".calamari.log
