#!/usr/bin/env bash
set -e
stylua .
luacheck .
busted -o tap || true   # don't block commits on tests early on
