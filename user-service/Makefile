build:
	@echo "generate proto ..."
	protoc -I. --go_out=plugins=micro:$(GOPATH)/src/github.com/vinhnguyenhq/shippy/consignment-service \
		proto/consignment/consignment.proto

	@echo "build docker image ..."
	docker build -t consignment-service .

run:
	@echo "run docker ..."
	docker run -p 50051:50051 -e MICRO_SERVER_ADDRESS=:50051 -e MICRO_REGISTRY=mdns consignment-service
