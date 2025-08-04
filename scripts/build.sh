#!/usr/bin/env bash

set -euo pipefail

docker build -t lnfu/robot-dev:ubuntu22.04 ubuntu22.04
docker build -t lnfu/robot-dev:ubuntu22.04-mate ubuntu22.04-mate
docker build -t lnfu/robot-dev:ubuntu22.04-xfce ubuntu22.04-xfce
docker build -t lnfu/robot-dev:ubuntu22.04-xfce-gz-harmonic ubuntu22.04-xfce-gz-harmonic
