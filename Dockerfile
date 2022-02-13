FROM gcc:11.2.0-bullseye as compilador

COPY hola.c .

RUN gcc hola.c -o hola -static

FROM scratch

COPY --from=compilador /hola /

ENTRYPOINT ["./hola"]