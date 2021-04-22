# Binary name
ProjectName := docker-gphotos-sync-synology
REGISTRY := registry.nexway.build

build:
	@echo "Building docker image $(ProjectName)"
	docker build --rm -t $(ProjectName) .
.PHONY: build

clean-all:
	@echo "Clean docker image $(ProjectName)"
	@docker rm -v $(ProjectName)
	@docker rmi $(ProjectName)
.PHONY: clean-all
	
exec:
	@echo "Exec docker image $(ProjectName)"
	docker exec -t -i $(ProjectName) /bin/bash
.PHONY: exec

run:
	@echo "Running docker image $(ProjectName)"
	docker run --net=host --dns 8.8.8.8 --rm -it --name $(ProjectName) -e GPHOTOS_START_DATE=2021-04-18 -v ${PWD}/config:/config -v ${PWD}/storage:/storage -d $(ProjectName)
.PHONY: run

logs:
	@echo "View logs of docker process $(ProjectName)"
	docker logs $(ProjectName) -f
.PHONY: logs

kill:
	@echo "Kill docker process $(ProjectName)"
	docker kill $(ProjectName)
.PHONY: kill
