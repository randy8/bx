#!/usr/bin/env bash
DL_LINK=https://sourceforge.net/projects/bitchx/files/ircii-pana/bitchx-1.2.1/bitchx-1.2.1.tar.gz

# Download
curl -L -s "${DL_LINK}" -o bitchx-1.2.1.tar.gz

# Untar src
tar -xzf bitchx-1.2.1.tar.gz

# Go to src dir
cd bitchx-1.2.1

# Config
./configure --prefix=/usr --with-ssl --with-plugins --enable-ipv6

# Build
make

# Global installation ("make install_local" for local, non-root)
sudo make install

# Run "BitchX"