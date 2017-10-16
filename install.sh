#!/bin/sh
set -eu
which ruby >/dev/null || eval "`curl -fsSL https://raw.githubusercontent.com/cjmao/linuxbrew-install/master/install-ruby`"
exec ruby -e "`curl -fsSL https://raw.githubusercontent.com/cjmao/linuxbrew-install/master/install`"
