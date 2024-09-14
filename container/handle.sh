#!/bin/bash

REPO_PATH="${PATH_INFO#*/}"
REPO_DIR="$GIT_PROJECT_ROOT/$REPO_PATH"

if [ ! -d "$REPO_DIR" ]; then
	if [ "$REQUEST_METHOD" = "POST" ]; then
		mkdir -p "$REPO_DIR"
		cd "$REPO_DIR"
		git init --bare --initial-branch=main
	fi
fi

exec /usr/libexec/git-core/git-http-backend