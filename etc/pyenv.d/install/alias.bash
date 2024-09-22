#!/usr/bin/env bash
#
# allows you to specify a VERSION_ALIAS which will override the automatically
# generated VERSION_NAME prefix.
# This will allow you to install multiple versions of a given python version,
# perhaps built with different configure flags.

update_prefix_with_version_alias() {
  PREFIX="$(dirname ${PREFIX})/${VERSION_ALIAS}"
}

if [ -n "${VERSION_ALIAS}" ]; then
    before_install 'update_prefix_with_version_alias'
fi
