#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0) && pwd)
VSCODE_SETTING_DIR=~/Library/Application\ Support/Code/User

# backup
mkdir "$SCRIPT_DIR/backup"
cp "$VSCODE_SETTING_DIR/settings.json" "$SCRIPT_DIR/backup"

rm "$VSCODE_SETTING_DIR/settings.json"
ln -s "$SCRIPT_DIR/settings.json" "${VSCODE_SETTING_DIR}/settings.json"
