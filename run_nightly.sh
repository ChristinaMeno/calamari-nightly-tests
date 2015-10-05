#!/bin/bash

set -x
pushd /root
/root/test_calamari.sh 2>&1 > /root/nightly_logs/test_calamari.log
pushd /root/calamari/vagrant/devmode
vagrant destroy -f
