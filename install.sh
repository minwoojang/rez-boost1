#!/usr/bin/bash

# Will exit the Bash script the moment any command will itself exit with a non-zero status, thus an error.
set -e

EXTRACT_PATH=$1
BUILD_PATH=$2
BOOST_VERSION=${REZ_BUILD_PROJECT_VERSION}

# We print the arguments passed to the Bash script.
echo -e "\n"
echo -e "==============="
echo -e "=== INSTALL ==="
echo -e "==============="
echo -e "\n"

echo -e "[INSTALL][ARGS] EXTRACT PATH: ${EXTRACT_PATH}"
echo -e "[INSTALL][ARGS] BUILD PATH: ${BUILD_PATH}"
echo -e "[INSTALL][ARGS] BOOST VERSION: ${BOOST_VERSION}"

cd ${EXTRACT_PATH}

# We install Boost.
echo -e "\n"
echo -e "[INSTALL] Installing Boost-${BOOST_VERSION}..."
echo -e "\n"

${EXTRACT_PATH}/b2 -j${REZ_BUILD_THREAD_COUNT} --build-dir=${BUILD_PATH} install

echo -e "\n"
echo -e "[INSTALL] Finished installing Boost-${BOOST_VERSION}!"
echo -e "\n"
