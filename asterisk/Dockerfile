FROM ubuntu:latest
# Update and install asterisk
RUN apt update -y && apt install -y asterisk

# Set config as a volume
VOLUME /etc/asterisk

# And when the container is started, run asterisk
ENTRYPOINT [ "/usr/sbin/asterisk", "-f" ]



