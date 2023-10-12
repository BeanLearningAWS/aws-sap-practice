jupyter:
	docker run \
		-p 8888:8888 \
	   	--mount type=bind,source="$(shell pwd)"/work,target=/home/jovyan/work \
	   jupyter/scipy-notebook:2023-09-25