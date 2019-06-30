build:
	@echo "generate proto ..."
	@echo grpc:$(GOPATH)/src/github.com/vinhnguyenhq/consignment-service/proto/consignment/consignment.proto

	protoc -I. proto/consignment/consignment.proto --go_out=plugins=grpc:.
