FROM ubuntu:xenial
ENV GO_CARBON_VERSION=0.10.1
RUN apt-get update \
&& apt-get install curl -y \
&& curl -s https://packagecloud.io/install/repositories/go-graphite/stable/script.deb.sh | bash \
&& apt-get update \
&& apt-get install -y carbonapi=0.8.0

RUN useradd carbon

CMD ["carbonapi", "-config", "/etc/carbonapi/carbonapi.yaml"]
