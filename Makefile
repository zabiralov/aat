APP := aat

VERSION := $(shell git describe --tags --dirty --always)
COMMIT  := $(shell git rev-parse --short HEAD)
DATE    := $(shell date -u +%Y-%m-%dT%H:%M:%SZ)

LDFLAGS := -X main.Version=$(VERSION) \
           -X main.Commit=$(COMMIT) \
           -X main.Date=$(DATE)

build:
	go build -o $(APP) ./cmd/$(APP)/

release:
	go build -ldflags "$(LDFLAGS)" -o $(APP) ./cmd/$(APP)/

clean:
	rm -f ./$(APP)
