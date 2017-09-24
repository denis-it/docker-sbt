docker-sbt
==========

## Initialization

Download `dockerctl.sh` to the new project directory and run:

```
$ dockerctl.sh run
```

This command will download the image, create new container from it and open an interactive shell in the container.

## Supported commands

1. `run` - run container from the image (with interactive shell).

1. `start` - start the container.

1. `stop` - stop the container.

1. `rm` - remove the container.

1. `sh` - run an interactive shell in the container.

1. `help` - show this help and exit.
