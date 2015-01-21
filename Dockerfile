FROM phusion/baseimage:0.9.15
MAINTAINER Spencer Herzberg <spencer.herzberg@gmail.com>

RUN apt-get update \
    && apt-get install privoxy wget tor supervisor -y

# Ports
EXPOSE 8118 9050 9100

# Add custom config
ADD ./conf/privoxy/config /etc/privoxy/config
ADD ./conf/tor/torrc /etc/tor/torrc
ADD ./conf/supervisor.conf.d/ /etc/supervisor/conf.d/

VOLUME [ "/etc/privoxy", "/etc/tor" ]

CMD ["supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]

