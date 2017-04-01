# Docker build for the monero miner, because I got tired of my local builds breaking.
# Usage: docker run minergate-cli -user {email} -fcn+xmr
# example Usage:  docker run minergate-cli -user matthew.therault@gmail -bcn 2 -fcn+dsh 2
# can use CMD ["-user", "matthew.therault@gmail.com", "-fcn+xmr"]

FROM		ubuntu:16.04

# global environment settings
ENV MINERGATE_INSTALL="https://minergate.com/download/deb-cli"

# install packages
RUN \
 apt-get update && \
 apt-get install -y \
 ca-certificates \
 curl

# install plex
 curl -o \
	/tmp/minergate-cli-release.deb -L \
	"$MINERGATE_INSTALL" && \
 dpkg -i /tmp/minergate-cli-release.deb && \


# Cleanup
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*


    ENTRYPOINT ["minergate-cli"]

#adding a comment