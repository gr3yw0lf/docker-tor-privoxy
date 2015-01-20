Docker Tor Privoxy
==================

Original from https://github.com/sherzberg : sherzberg

Simple container for turning a tor proxy into http proxy

Usage
-----

```bash
$ ./build.sh
$ CONT=$(./start.sh)
$ docker logs -f $CONT
```

You can now connect to the http proxy via port 8118.

License
-------

[See LICENSE](/LICENSE)
