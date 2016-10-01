build:
	docker build -t topu/toolbox .

run:
	docker run -it --rm --pid=host --net=host --privileged --volume /:/mnt/root topu/toolbox
