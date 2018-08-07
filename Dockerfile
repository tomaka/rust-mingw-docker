FROM rust
LABEL maintainer="Pierre Krieger <pierre.krieger1708@gmail.com>"

RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y mingw-w64 wine64 wine32
RUN rustup target add x86_64-pc-windows-gnu
RUN rustup target add i686-pc-windows-gnu

RUN mkdir /root/.cargo
ADD config /root/.cargo
