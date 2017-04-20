FROM		ubuntu:16.04

# global environment settings
ENV MINERGATE_INSTALL="https://minergate.com/download/deb-cli"
ENV userName="email@email.com"
ENV currency="xmr"
ENV cores="4"


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
    CMD ["minergate-cli", "-user","$userName","-$currency","-$cores"]