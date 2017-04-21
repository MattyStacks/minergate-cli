FROM		ubuntu:16.04

# global environment settings
ENV MINERGATE_INSTALL="https://minergate.com/download/deb-cli"
<<<<<<< HEAD
ENV USERNAME email@email.com
ENV CURRENCY xmr
ENV CORES 4

=======
>>>>>>> parent of eb86ab2... added command and variables

# install packages
RUN \
 apt-get update && \
 apt-get install -y \
 ca-certificates \
 wget \
 curl

# install plex
 RUN curl -o \
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
