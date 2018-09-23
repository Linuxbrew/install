#!/bin/sh
set -e
umask 022
if test -n "$HOMEBREW_FORCE_VENDOR_RUBY" || ! command -v ruby >/dev/null; then
	eval "`curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install-ruby`"
fi
exec ruby -e "`curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install`" "$@"
