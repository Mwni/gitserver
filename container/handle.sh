#!/bin/bash

REPO_DIR="${PATH_INFO#/}"
REPO_DIR="${REPO_DIR%%/*}"
REPO_DIR="$GIT_PROJECT_ROOT/$REPO_DIR"

if [ ! -d "$REPO_DIR" ]; then
	if [[ "$REQUEST_METHOD" = "GET" && "$QUERY_STRING" = "service=git-receive-pack" ]] || [ "$REQUEST_METHOD" = "POST" ]; then
		mkdir -p "$REPO_DIR"
		git init $REPO_DIR --bare --initial-branch=main &> /dev/null
	fi
fi

exec /usr/libexec/git-core/git-http-backend