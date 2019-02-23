#!/bin/bash

if which docker-machine ; then 
	eval $(docker-machine env)
fi
for a in `find . -name "Dockerfile" -execdir pwd \;` ; do
	name=`echo $a | rev | cut -d'/' -f1 | rev`
	echo $name
	docker pull $DOCKER_USER/base-ubuntu-$name
	docker build -t $DOCKER_USER/base-ubuntu-$name $a
	docker push $DOCKER_USER/base-ubuntu-$name
done
