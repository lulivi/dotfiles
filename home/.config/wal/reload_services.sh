#!/usr/bin/env bash

prog_exists() {
    printf "$(command -v "$1" >/dev/null 2>&1)"
}

# Dunst
if prog_exists "dunst"; then
    killall dunst
fi

notify-send "pywal" "Reloaded wal configurations!"
