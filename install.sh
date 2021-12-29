#!/bin/bash

EELENGINE_DIR="eelengine"
if ! [[ -e "$EELENGINE_DIR" ]]; then
    printf "\033[31m[Error]\033[m EelEngine has not been compiled. Please run the compilation commands as instructed in \033[36mREADME.md\033[m\n"
    exit
fi

INSTALL_PYTHON_VERSION=$(python3 --version | grep -Eo "[0-9]\.[0-9]+")
INSTALLATION_DIR="$HOME/.local/lib/python$INSTALL_PYTHON_VERSION/site-packages"

rm -rf "$INSTALLATION_DIR/$EELENGINE_DIR"
cp -r "$EELENGINE_DIR" "$INSTALLATION_DIR"