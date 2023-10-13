pull-modules:
	git submodule update --recursive --remote
build-image:
	docker build -t peterbean/learnpy-notebook:0.1.0 .
jupyter: pull-modules build-image
	docker run \
		-p 8888:8888 \
	   	--mount type=bind,source="$(shell pwd)"/work,target=/home/jovyan/work \
	   	--mount type=bind,source="$(shell pwd)"/sre-peterbean-ptdev,target=/home/jovyan/lib \
	   peterbean/learnpy-notebook:0.1.0