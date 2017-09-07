#!/bin/bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

echo "Testing the base centos container"

cid="$(
	docker run -d \
	  -e DEBUG \
		--name "${NAME}" \
		"${IMAGE}"
)"
trap "docker rm -vf ${cid} > /dev/null" EXIT

