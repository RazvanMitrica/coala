#!/bin/bash

set -e
set -x

echo Running Zanata...
cd .misc
sh .install.zanata.sh
zanata-cli-3.6.0/bin/zanata-cli -B push --key $ZANATA_KEY --username sils --url https://translate.zanata.org/zanata/
cd ..
