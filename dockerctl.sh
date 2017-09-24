#!/bin/bash

COMMAND=${1:-"sh"}
CONTAINER=${2:-"myproject"} # <--- replace with your project name

IMAGE="denisdev/sbt"

echo "Container name: $CONTAINER"

case $COMMAND in
	run)
	docker run \
		--interactive=true \
		--tty=true \
		--entrypoint=/bin/bash \
		--name=$CONTAINER \
		--volume=$(pwd):/app \
		$IMAGE
	;;

	start)
	docker start $CONTAINER
	;;

	stop)
	docker stop $CONTAINER
	;;

	rm)
	docker rm $CONTAINER
	;;

	sh)
	docker exec -it $CONTAINER /bin/bash
	;;

	*)
	echo "Unknown command: $COMMAND" >&2
	echo "Usage: $0 [command] [arg]" >&2
	echo "	run      run container from the image (with interactive shell)" >&2
	echo "	start    start the container" >&2
	echo "	stop     stop the container" >&2
	echo "	rm       remove the container" >&2
	echo "	sh       run an interactive shell in the container" >&2
	echo "	help     show this help and exit" >&2
	exit 1
	;;
esac
