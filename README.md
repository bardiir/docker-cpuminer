# docker-cpuminer

cpuminer-multi (https://github.com/OhGodAPet/cpuminer-multi) in a alpine docker container. You can use this like this:
```
$ docker run bardiir/cpuminer
```

By default this will use the parameters `-a cryptonight -o stratum+tcp://eupool.electroneum.com:3333 -u etnkDxinewM4BJUrXJ5ccB88vtBqFr4jJgLCLdAEyot6M98GURzNGof28WrvK7boNtYxXm6HDsQLci3sLVPZgxTR1AeR2Hopc5 -p x` thus mining against my Electroneum wallet. But you can easily overwrite these settings using `docker run bardiir/cpuminer` as the substitute for the `minerd` command if you're not using it for testing purposes only:
```
$ docker run bardiir/cpuminer -a whatever -o your -u data -p is
```

Have fun!