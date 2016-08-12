# Theater: Actor Framework for Swift (and Do-lang) #

Theater is an open source actor model framework for Swift (3.0), featuring lightweight implementation, user-friendly APIs, and more. 

The design is insipred by [Akka]("http://akka.io"), and this project is forked from [darioalessandro/Theater]("https://github.com/darioalessandro/Theater").

# Build Theater #

Current implementation targets `Ubuntu 15.10`.

## Install **swift** and **libdispatch**

Install preview verison 2 of [Swift 3.0]("https://swift.org/download/#previews")

Compile and install **libdispatch**

	git clone --recursive -b experimental/foundation https://github.com/apple/swift-corelibs-libdispatch.git
	cd swift-corelibs-libdispatch
	sh ./autogen.sh
	./configure --with-swift-toolchain=<path-to-swift>/usr --prefix=<path-to-swift>/usr
	make && make install

After installation, you should be able to see a `dispatch` folder under `<path-to-swift>/usr/lib/`. 

## Compile Theater

Theater uses standard [swift package manager]("https://github.com/apple/swift-package-manager"):

	swift build -Xswiftc -Ounchecked -Xswiftc -g -Xcc -fblocks

The `-Ounchecked` and `-g` options are optional.

# Testing #

Use the following command to build and test

	swift build -Xswiftc -Ounchecked -Xswiftc -g -Xcc -fblocks && swift test

Current test suite includes:

* PingPong
* Greetings
* CloudEdge

# Features #

TODO

# Usage #

Check the examples in `Tests/Theater/` for sample usage.
