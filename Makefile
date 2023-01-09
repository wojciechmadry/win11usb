DOCKER ?= docker
DOCKER_TAG ?= win11flash
DOCKER_ISO ?= win.iso
device ?= DEVICE_PATH
iso ?= ISO_PATH

help:
	@echo Build and run Dockerfile
	@echo make build	-	Build Docker image
	@echo sudo make flash device=\<DEVICE\> iso=\<ISO_PATH\>	-	Flash Windows .iso on pendrive

build: Dockerfile
	${DOCKER} build . -t ${DOCKER_TAG}

flash:
	@echo Device: ${device}
	@echo Iso path: ${iso}
	${DOCKER} run \
					-it \
					--rm \
					--privileged=true \
					--device=${device} \
					--mount type=bind,source=${iso},target=/ws/${DOCKER_ISO} \
					-v /dev:/dev \
					${DOCKER_TAG} \
					/bin/bash /ws/flash.sh ${device} /ws/${DOCKER_ISO}

