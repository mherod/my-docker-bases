#!/bin/bash

if [ $USER = "matthewherod" ]; then 
	eval $(docker-machine env)
fi
for a in `find . -name "Dockerfile" -execdir pwd \;` ; do
	name=`echo $a | rev | cut -d'/' -f1 | rev`
	echo $name
	docker build -t mherod/base-ubuntu-$name $a
	docker push mherod/base-ubuntu-$name
done