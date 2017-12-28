# Microsoft SQL Operations Studio docker container

Linux version of the SQL Ops studio (preview) from [here](https://docs.microsoft.com/en-us/sql/sql-operations-studio) installed in a Ubuntu based container (phusion/baseimage) from [here](https://github.com/phusion/baseimage-docker).

Run with the `run` command from the [github repo](https://github.com/alexivkin/Docker-MSSQLOps) or

```
xhost +local:$(docker inspect --format='{{ .Config.Hostname }}' alexivkin/mssqlops)
docker run --rm --net=host -d -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro alexivkin/mssqlops
```

To persist data between container restarts mount a volume to /root/.config/sqlops/

MSSQL Ops also saves keys to /root/.pki/, so you might want to persist it too.
