
# Final Steps

Now that we have a good dev environment in Debian/Jessie let's compile Go from source
starting with Go v1.4.3 to v1.8.3 and finishing with v1.10 (current as of 2018-02-21).

```shell
    git clone https://github.com/golang/go.git go1.4
    cd go1.4.src
    git checkout go1.4.3
    export CGO_ENABLED=0
    ./make.bash
    unset CGO_ENABLED
    cd
    git clone https://github.com/go.ang/go.git
    cd go/src
    git checkout go1.10
    ./all.bash
```

Now add the following to your _.profile_ or _.bashrc_.

```shell
    export GOPATH="$HOME"
    export PATH="$HOME/bin:$HOME/go/bin:$PATH"
```

You should be ready to go.
