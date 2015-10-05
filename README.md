# calamari-nightly-tests
I wrote these scripts to invoke from cron to run the calamari integration test suite once a day

Theory of operation.
These scripts will run vagrant on calamari devmode and log the results of the automated integration tests.
This is a long running instance where run_nightly.sh get put in cron.
test_calamari.sh sets up a devmode on Digital Ocean, runs the integration suite , and tears it down.

TODO:
* automate the creation of the node that runs these scripts
