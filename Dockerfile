FROM ubuntu:xenial

LABEL description="Microsoft SQL Operations Studio (MSSQL Ops preview)"
LABEL maintainer="Alex Ivkin"
LABEL version="1.0"

RUN apt-get -qq update && apt-get -qq upgrade && apt-get -qq install libxss1 libgconf-2-4 libunwind8 libgtk2.0-0 libx11-xcb1 libxtst6 libnss3 libasound2 curl bash libxkbfile1 libnotify-dev
RUN curl -L https://go.microsoft.com/fwlink/?linkid=865307 | tar xz -C /opt/

CMD /opt/sqlops-linux-x64/sqlops
