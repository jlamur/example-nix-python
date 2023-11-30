# Getting started
## Build and run the app
```
$ nix run &
 * Serving Flask app 'myapp'
 * Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on all addresses (0.0.0.0)
 * Running on http://127.0.0.1:5000
Press CTRL+C to quit
$ curl http://127.0.0.1:5000
Hello, Nix!
```

## Spawn a shell for development
```
$ nix develop
$ whereis python
python: /nix/store/qp5zys77biz7imbk6yy85q5pdv7qk84j-python3-3.11.6/bin/python
$ python --version
Python 3.11.6
```

## Build the docker image and run it
```
$ nix build .#docker
$ docker load -i ./result
...
Loaded image: myapp:0.1
$ docker run --rm myapp:0.1 &
 * Serving Flask app 'myapp'
 * Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on all addresses (0.0.0.0)
 * Running on http://127.0.0.1:5000
 * Running on http://172.17.0.2:5000
Press CTRL+C to quit
$ curl http://172.17.0.2:5000
Hello, Nix!
```
