#!/bin/bash

DIR="$(dirname $0)"

echo "################################################################################"
. ${DIR}/_GetVersions.sh
if [ "${VERSIONS}" == "" ]
then
	echo "# Gearbox: Running ${0} failed"
	exit 1
fi
echo "# Gearbox: Running ${0} for repo."

if [ "${GITHUB_ACTIONS}" != "" ]
then
	echo "# Gearbox[${GB_GITREPO}]: Running from GitHub action - ignoring."
	exit 0
fi

echo "# Gearbox[${GB_GITREPO}]: Pushing repo to GitHub."
git commit -a -m "Latest push" && git push

