#!/bin/sh

cat 1>&2 <<'EOS'
Warning: Linuxbrew has been merged into Homebrew.
Please migrate to the following command:
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

EOS

exec /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
