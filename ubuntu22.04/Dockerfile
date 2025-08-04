FROM ubuntu:22.04

ARG UID=1000
ARG GID=1000

# Upgrade packages
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install basic packages
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    wget \ 
    curl \
    gnupg2 \
    git \
    python3-pip \
    build-essential \
    vim \
    lsb-release \
    locales \
    bash-completion \
    sudo \
    gosu \
    tzdata \
    tmux \
    tini \
    supervisor \
    dos2unix \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Create user and group
RUN groupadd -g $GID ubuntu
RUN useradd ubuntu -m -u $UID -g ubuntu -G sudo
RUN echo 'ubuntu ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Start
COPY entrypoint.sh /entrypoint.sh
RUN dos2unix /entrypoint.sh && chmod +x /entrypoint.sh
WORKDIR /home/ubuntu
ENTRYPOINT ["/usr/bin/tini", "--", "/entrypoint.sh"]
