FROM node:22

ENV LANG=C.UTF-8

RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends \
        curl \
        git \
        net-tools \
        procps \
        sudo \
        vim \
    && rm -rf /var/lib/apt/lists/*

ARG USERNAME=nodeUser
ARG USER_UID=1001
ARG USER_GID=${USER_UID}

RUN groupadd --gid ${USER_GID} ${USERNAME} \
    && useradd --uid ${USER_UID} --gid ${USER_GID} --create-home ${USERNAME} \
    && echo "${USERNAME} ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/${USERNAME} \
    && chmod 0440 /etc/sudoers.d/${USERNAME}

WORKDIR /home/nodeUser/pme-plus

COPY package.json package-lock.json ./
RUN npm ci \
    && chown -R ${USERNAME}:${USERNAME} /home/nodeUser

USER ${USERNAME}

CMD ["/bin/bash"]
