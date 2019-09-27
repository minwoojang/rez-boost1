#!/usr/bin/bash

# Will exit the Bash script the moment any command will itself exit with a non-zero status, thus an error.
set -e

EXTRACT_PATH=$1
BUILD_PATH=$2
BOOST_VERSION=${REZ_BUILD_PROJECT_VERSION}

# We print the arguments passed to the Bash script.
echo -e "\n"
echo -e "============="
echo -e "=== BUILD ==="
echo -e "============="
echo -e "\n"

echo -e "[BUILD][ARGS] EXTRACT PATH: ${EXTRACT_PATH}"
echo -e "[BUILD][ARGS] BUILD PATH: ${BUILD_PATH}"
echo -e "[BUILD][ARGS] BOOST VERSION: ${BOOST_VERSION}"

# We build Boost.
echo -e "\n"
echo -e "[BUILD] Building Boost-${BOOST_VERSION}..."
echo -e "\n"

if [ -d ${BUILD_PATH} ]; then
    cd ${EXTRACT_PATH}
else
    mkdir -p ${BUILD_PATH}
    cd ${EXTRACT_PATH}

    ${EXTRACT_PATH}/b2 -j${REZ_BUILD_THREAD_COUNT} --build-dir=${BUILD_PATH}
fi

echo -e "\n"
echo -e "[BUILD] Finished building Boost-${BOOST_VERSION}!"
echo -e "\n"
