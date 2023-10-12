pull-modules:
	git submodule update --recursive --remote
jupyter: pull-modules
	docker run \
		-p 8888:8888 \
	   	--mount type=bind,source="$(shell pwd)"/work,target=/home/jovyan/work \
	   	--mount type=bind,source="$(shell pwd)"/sre-peterbean-ptdev,target=/home/jovyan/lib \
	   jupyter/scipy-notebook:2023-09-25