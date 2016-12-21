sigp(1) is a simple UNIX tool that wraps a process and prints the signals it receives.

It tries to be as transparent as possible; forwarding all signals, and attaching existing stdin/stdout/stderr.

## Usage

```
$ sigp sleep 100
```

Now, in another terminal:

```console
$ killall sigp
```

You'll see the following printed in the first terminal:

```console
signal 15 received (terminated)
```

## Installation

If Go is installed:

```console
$ go get -u github.com/ejholmes/sigp
```

Or grab a binary release from https://github.com/ejholmes/sigp/releases

## Caveat

There's probably a way to do this with existing unix tools, but Go makes it easy.

## License

Copyright (c) 2016 Eric Holmes

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
