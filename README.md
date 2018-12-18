# Go language without "unused" errors!
[![CircleCI](https://circleci.com/gh/nwtgck/golang.svg?style=shield)](https://circleci.com/gh/nwtgck/golang) 
[![](https://img.shields.io/docker/automated/nwtgck/golang.svg)](https://hub.docker.com/r/nwtgck/golang/)
 [![](https://images.microbadger.com/badges/image/nwtgck/golang.svg)](https://microbadger.com/images/nwtgck/golang "Get your own image badge on microbadger.com")

Go language which frees you from "unused" errors!

## Try with built compiler

You can download from GitHub Releases.

* [go_darwin_amd64.zip](https://github.com/nwtgck/golang/releases/download/golang1.11.3-SNAPSHOT/go_darwin_amd64.zip)
* [go_linux_amd64.zip](https://github.com/nwtgck/golang/releases/download/golang1.11.3-SNAPSHOT/go_linux_amd64.zip)
* [go_windows_amd64.zip](https://github.com/nwtgck/golang/releases/download/golang1.11.3-SNAPSHOT/go_windows_amd64.zip)

## Try with Docker

```sh
docker run -it nwtgck/golang
```

## Usages

### `$GO_IGNOROE_UNUSED_VAR`

Here is `main1.go`. Note that the variable `a` is not used at all.

```go
//  main1.go
package main

func main() {
	var a = 1
}
```

You can build `main1` as follows to ignore "OOO declared and not used" error!

```sh
GO_IGNORE_UNUSED_VAR=1 go build main1.go
```

### `$GO_IGNOROE_UNUSED_PKG`

Here is `main2.go`. Note that the package `fmt` is not used at all.

```go
//  main2.go
package main

import "fmt"

func main() {

}
```

You can build `main2` as follows to ignore "OOO declared and not used" error!

```sh
GO_IGNORE_UNUSED_PKG=1 go build main2.go
```

- - - 

Go is an open source programming language that makes it easy to build simple,
reliable, and efficient software.

![Gopher image](doc/gopher/fiveyears.jpg)
*Gopher image by [Renee French][rf], licensed under [Creative Commons 3.0 Attributions license][cc3-by].*

Our canonical Git repository is located at https://go.googlesource.com/go.
There is a mirror of the repository at https://github.com/golang/go.

Unless otherwise noted, the Go source files are distributed under the
BSD-style license found in the LICENSE file.

### Download and Install

#### Binary Distributions

Official binary distributions are available at https://golang.org/dl/.

After downloading a binary release, visit https://golang.org/doc/install
or load [doc/install.html](./doc/install.html) in your web browser for installation
instructions.

#### Install From Source

If a binary distribution is not available for your combination of
operating system and architecture, visit
https://golang.org/doc/install/source or load [doc/install-source.html](./doc/install-source.html)
in your web browser for source installation instructions.

### Contributing

Go is the work of thousands of contributors. We appreciate your help!

To contribute, please read the contribution guidelines:
	https://golang.org/doc/contribute.html

Note that the Go project uses the issue tracker for bug reports and
proposals only. See https://golang.org/wiki/Questions for a list of
places to ask questions about the Go language.

[rf]: https://reneefrench.blogspot.com/
[cc3-by]: https://creativecommons.org/licenses/by/3.0/
