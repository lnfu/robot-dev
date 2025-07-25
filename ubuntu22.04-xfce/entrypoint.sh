#!/usr/bin/env bash
set -e

USER=ubuntu
PASSWORD=ubuntu
HOME="/home/$USER"

mkdir -p "$HOME/.vnc"

# setup VPC password
echo "$PASSWORD" | vncpasswd -f > "$HOME/.vnc/passwd"
chmod 600 "$HOME/.vnc/passwd"

# xstartup
cp /etc/vnc/xstartup "$HOME/.vnc/xstartup"
chmod +x "$HOME/.vnc/xstartup"

# TODO: comment
rm -f /tmp/.X1-lock /tmp/.X11-unix/X1 || true

chown -R $USER:$USER $HOME

exec /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
