#!/usr/bin/env bash

set -euo pipefail

docker push lnfu/robot-dev:ubuntu22.04
docker push lnfu/robot-dev:ubuntu22.04-mate
docker push lnfu/robot-dev:ubuntu22.04-xfce
docker push lnfu/robot-dev:ubuntu22.04-xfce-gz-harmonic
