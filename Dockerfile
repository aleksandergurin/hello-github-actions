FROM debian:9.5-slim as build

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

FROM build as test
ENTRYPOINT ["/entrypoint.sh"]

FROM build as final
RUN echo ok

