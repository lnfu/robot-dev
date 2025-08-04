FROM lnfu/robot-dev:ubuntu22.04

# VNC + MATE
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ubuntu-mate-desktop \
    tigervnc-standalone-server \
    tigervnc-common \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install noVNC + websockify
RUN git clone https://github.com/novnc/noVNC.git -b v1.6.0 /opt/noVNC && \
    pip install git+https://github.com/novnc/websockify.git@v0.13.0

# Copy configuration files
COPY entrypoint.sh /entrypoint.sh
COPY xstartup /etc/vnc/xstartup
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Normalize line endings and set permissions
RUN dos2unix /entrypoint.sh && chmod +x /entrypoint.sh
RUN dos2unix /etc/vnc/xstartup && chmod +x /etc/vnc/xstartup
RUN dos2unix /etc/supervisor/conf.d/supervisord.conf

WORKDIR /home/ubuntu
ENTRYPOINT ["/usr/bin/tini", "--", "/entrypoint.sh"]
