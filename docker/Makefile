TAG ?= pld/minidexed

.PHONY: build
build:
	docker build --progress=plain --tag $(TAG) .

.PHONY: clean
clean:
	docker image rm $(TAG) --force
	docker system prune --force
