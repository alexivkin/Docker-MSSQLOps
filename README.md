# Microsoft SQL Operations Studio docker container

Linux version of the MSSQL Ops studio (preview) from [here](https://docs.microsoft.com/en-us/sql/sql-operations-studio) installed in a Ubuntu official container (ubuntu:latest) from [here](https://hub.docker.com/_/ubuntu/).

You will need to expose allow local connections to your X11 server. Run with the `run` command from the [github repo](https://github.com/alexivkin/Docker-MSSQLOps/run) or

```
xhost +local:$(docker inspect --format='{{ .Config.Hostname }}' alexivkin/mssqlops)
docker run --rm --net=host -d -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro alexivkin/mssqlops
```

To persist data between container restarts mount a volume to /root/ since Operations studio keeps settings under ~/.config/, keys under ~/.pki/, passwords under ~/.sqlsecrets/ and other stuff under ~./sqlops/

`docker run --rm --net=host -d -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro -v sqlops:/root/ alexivkin/mssqlops`
