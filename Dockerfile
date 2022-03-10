FROM ghcr.io/graalvm/graalvm-ce:latest
# TODO Configure permissions properly for the container user (STOP USING ROOT)
LABEL author="jcedeno"

WORKDIR /home/hynix/server
# Download purpur jar
RUN curl -o server.jar https://api.purpurmc.org/v2/purpur/1.18.1/1566/download
# Copy image-data
ADD image/ /home/hynix/server
# Expose port 25565
EXPOSE 25565
# TODO Add RCON support

ENTRYPOINT [ "/bin/sh", "start.sh", "server" ]