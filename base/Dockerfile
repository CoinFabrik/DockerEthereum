#1-3.
FROM ubuntu:latest 
MAINTAINER Lean <leandro.rawicz@coinfabrik.com>
ENV LANG C.UTF-8


COPY /files/* /usr/local/bin/
#4. Install base
RUN apt-get update && apt full-upgrade -y && \
        apt-get install -y -q --no-install-recommends \
        software-properties-common \
        build-essential \
        curl 




#7-14. <NVM>
        # Replace shell with bash so we can source files
        #RUN rm /bin/sh && ln -s /bin/bash /bin/sh


        ENV NVM_DIR /usr/local/nvm
        ENV NODE_VERSION 8.11.3

        WORKDIR $NVM_DIR

        RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash \
            && . $NVM_DIR/nvm.sh \
            && nvm install $NODE_VERSION \
            && nvm alias default $NODE_VERSION \
            && nvm use default

        ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
        ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH 
        #13 pm2
        RUN npm install pm2@latest -g

#</NVM>
#5.Python/pip, TMUX, nano, tmuxp
    RUN apt install -y  python \
                        python-pip \
                        tmux \
                        nano && \
    pip install tmuxp

    RUN apt-get install -y -q --no-install-recommends \
        apt-transport-https \
        ca-certificates \
        htop \
        git \
        libssl-dev \
        wget \
        telnet \
        netcat \
        net-tools
