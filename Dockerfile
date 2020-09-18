FROM alpinelinux/docker-cli

# Install CLI tools
RUN apk --no-cache add \
        bash \
        grep \
        openssl \
        util-linux \
        git-crypt \
        python \
        py-pip \
        nodejs=12.15.0-r1 \
    && rm -rf /var/cache/apk/* \
    && pip install awscli \
    && mkdir ~/.aws \
    && wget https://raw.githubusercontent.com/elasticdog/transcrypt/master/transcrypt -O /bin/transcrypt \
    && chmod +x /bin/transcrypt

CMD bash
