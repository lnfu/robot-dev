FROM ubuntu:22.04

ARG UID=1000
ARG GID=1000

# 更新套件
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

# 安裝基本套件
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
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
    dos2unix && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

# 建立群組/使用者
RUN groupadd -g $GID ubuntu
RUN useradd ubuntu -m -u $UID -g ubuntu -G sudo
RUN echo 'ubuntu ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# 啟動
COPY entrypoint.sh /entrypoint.sh
RUN dos2unix /entrypoint.sh && chmod +x /entrypoint.sh
WORKDIR /home/ubuntu
ENTRYPOINT ["/usr/bin/tini", "--", "/entrypoint.sh"]