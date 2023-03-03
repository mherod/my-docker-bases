#!/bin/bash

if which docker-machine ; then
	# shellcheck disable=SC2046
	eval $(docker-machine env)
fi
# shellcheck disable=SC2044
for a in $(find . -name "Dockerfile" -execdir pwd \;) ; do
	name=$(echo "$a" | rev | cut -d'/' -f1 | rev)
	echo "$name"
	docker pull "$DOCKER_USER/base-$name" || echo "No base image for $name"
	docker build -t "$DOCKER_USER/base-$name" "$a"
	docker push "$DOCKER_USER/base-$name" || exit 1
done
