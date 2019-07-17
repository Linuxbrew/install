#!/bin/sh

set -e
umask 022

# The main Homebrew installer requires at least Ruby 2.3, so this script will
# install a vendor Ruby if any of the following are true:
# 1. HOMEBREW_FORCE_VENDOR_RUBY is provided
# 2. Ruby is not present at all
# 3. Ruby is present but too old
if test -n "$HOMEBREW_FORCE_VENDOR_RUBY" || \
   ! command -v ruby >/dev/null || \
   (command -v ruby >/dev/null && ruby -e 'exit RUBY_VERSION.split(".").first(2).join(".").to_f < 2.3'); then
    eval "`curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install-ruby`"
fi
exec ruby -e "`curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install`" "$@"
