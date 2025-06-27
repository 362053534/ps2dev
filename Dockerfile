FROM ghcr.io/362053534/ps2sdk:latest

COPY . /src

RUN apk add build-base git bash patch wget zlib-dev ucl-dev cmake curl
RUN cd /src && ./build-extra.sh

ENV PS2DEV /usr/local/ps2dev
ENV PS2SDK $PS2DEV/ps2sdk
ENV GSKIT $PS2DEV/gsKit
ENV PATH $PATH:${PS2DEV}/bin:${PS2DEV}/ee/bin:${PS2DEV}/iop/bin:${PS2DEV}/dvp/bin:${PS2SDK}/bin
