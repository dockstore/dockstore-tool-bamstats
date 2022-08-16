#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset
set -o xtrace

if [[ "${LANGUAGE}" == "cwl" ]]; then
    curl -o requirements.txt "https://raw.githubusercontent.com/dockstore/dockstore/1.13.0-beta.3/dockstore-webservice/src/main/resources/requirements/1.13.0/requirements3.txt"
    pip3 install --user -r requirements.txt
elif [[ "${LANGUAGE}" == "wdl" ]]; then
    echo "cromwell is installed via the Dockstore CLI"
elif [[ "${LANGUAGE}" == "nfl" ]]; then
    curl -s https://get.nextflow.io | bash
    cp nextflow $HOME/bin
fi
