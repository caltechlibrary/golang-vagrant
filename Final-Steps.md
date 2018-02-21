
# Final Steps

This setup is for easily Linux development of Go programs using Debian/Stretch.
It includes a "compile from source" Go installed in your /home/vagrant directory. 
It bootstraps with Go v1.4.3 and finishes with v1.10 (current Go as of 2018-02-21).

These are the general steps run as the final setup in your Vagrant file.
If there is a problem you can start with these and adjust as needed.

```shell
    cd /home/vagrant
    export HOME=/home/vagrant
    git clone https://github.com/golang/go.git go1.4
    cd go1.4/src
    git checkout go1.4.3
    export CGO_ENABLED=0
    ./make.bash
    unset CGO_ENABLED
    cd
    git clone https://github.com/golang/go.git
    cd go/src
    git checkout go1.10
    ./all.bash
    cd
    # Make sure everything is owned by vagrant instead of root
    chown -R vagrant /home/vagrant
```

The final steps you normally would so when you ssh into your vagrant instance would 
be to add `$HOME/bin:$HOME/go/bin` to your path via your _.profile_ or _.bashrc_ file.

```shell
    export GOPATH="${HOME}"
    export PATH="${HOME}/bin:${HOME}/go/bin:${PATH}"
```

You should be ready to go.
