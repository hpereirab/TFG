FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root

RUN apt-get update && \
    apt-get install -y --allow-downgrades --allow-remove-essential --fix-missing --allow-unauthenticated --no-install-recommends \
	supervisor \
        openssh-server pwgen sudo vim-tiny \
        net-tools \
        lxde x11vnc xvfb \
        ttf-ubuntu-font-family \
        firefox \
        nginx \
        build-essential && \
    apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

ADD startup.sh /
ADD supervisord.conf /etc/supervisor/conf.d/

EXPOSE 5900
WORKDIR /root
ENTRYPOINT ["/startup.sh"]
