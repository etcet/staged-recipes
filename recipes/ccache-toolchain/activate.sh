#!/bin/bash

export _OLD_PATH=${PATH}
export PATH="${PREFIX}/bin/conda_forge_ccache:${PATH}"

if [ -f "/feedstock_root/build_artefacts" ]; then
    export CCACHE_DIR=/feedstock_root/build_artefacts/.ccache
fi

# Set max cache size so we don't carry old objects for too long
ccache -M 400M
ccache -z
