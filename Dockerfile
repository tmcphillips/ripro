FROM ubuntu:22.04

COPY .repro .repro
ADD https://github.com/CIRSS/repro-builder/releases/download/v0.1.0/build .repro/
RUN bash .repro/build

USER repro

CMD  /bin/bash -il
