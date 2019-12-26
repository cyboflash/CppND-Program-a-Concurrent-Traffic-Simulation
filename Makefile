.PHONY: all
all: build

.PHONY: build
build:
	mkdir -p $@
	cd $@ && \
	cmake .. && \
	make

.PHONY: debug
debug:
	mkdir -p $@
	cd $@ && \
	cmake -DCMAKE_BUILD_TYPE=debug .. && \
	make

.PHONY: clean
clean:
	rm -rf build
