#!/usr/bin/bash

# Will exit the Bash script the moment any command will itself exit with a non-zero status, thus an error.
set -e

EXTRACT_PATH=$1
INSTALL_PATH=${REZ_BUILD_INSTALL_PATH}
BOOST_VERSION=${REZ_BUILD_PROJECT_VERSION}

# We print the arguments passed to the Bash script.
echo -e "\n"
echo -e "================="
echo -e "=== CONFIGURE ==="
echo -e "================="
echo -e "\n"

echo -e "[CONFIGURE][ARGS] EXTRACT PATH: ${EXTRACT_PATH}"
echo -e "[CONFIGURE][ARGS] INSTALL PATH: ${INSTALL_PATH}"
echo -e "[CONFIGURE][ARGS] BOOST VERSION: ${BOOST_VERSION}"

cd ${EXTRACT_PATH}

# We run the configuration script of Boost.
echo -e "\n"
echo -e "[CONFIGURE] Running the configuration script from Boost-${BOOST_VERSION}..."
echo -e "\n"

${EXTRACT_PATH}/bootstrap.sh --prefix=${INSTALL_PATH}

echo -e "\n"
echo -e "[CONFIGURE] Finished configuring Boost-${BOOST_VERSION}!"
echo -e "\n"
