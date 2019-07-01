build:
	@echo "generate proto ..."
	protoc -I. --go_out=plugins=micro:$(GOPATH)/src/github.com/vinhnguyenhq/shippy/vessel-service \
		proto/vessel/vessel.proto

	@echo "build docker image ..."
	docker build -t vessel-service .

run:
	@echo "run docker ..."
	docker run -p 50052:50051 -e MICRO_SERVER_ADDRESS=:50051 -e MICRO_REGISTRY=mdns vessel-service
