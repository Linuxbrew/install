#!/bin/sh
set -eu
umask 022
which ruby >/dev/null || eval "`curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install-ruby`"
exec ruby -e "`curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install`"
