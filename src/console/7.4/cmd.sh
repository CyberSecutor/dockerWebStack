#!/usr/bin/env sh

USER_SHELL=$(grep "$(id -u):$(id -g)" /etc/passwd | cut -d: -f7 | xargs basename)

bash "$@"
#
#if which "${USER_SHELL}" > /dev/null; then
#    "${USER_SHELL}" "$@"
#else
#    bash "$@"
#fi

