# robot-dev

**robot-dev** offers ready-to-use Docker images for robotics and computer vision development.

## Available Tags

| Tag                                  | Desktop | Extras                 |
|--------------------------------------|---------|------------------------|
| `ubuntu22.04`                        | None    | Base dev environment   |
| `ubuntu22.04-mate`                   | MATE    | VNC + noVNC            |
| `ubuntu22.04-xfce`                   | XFCE    | VNC + noVNC            |
| `ubuntu22.04-xfce-gz-harmonic`       | XFCE    | Gazebo Harmonic        |

## Usage

To run with desktop GUI via browser (for MATE or XFCE variants):

```bash
docker run -it --rm -p 6080:6080 lnfu/robot-dev:ubuntu22.04-xfce
```

Then open your browser and go to: [http://localhost:6080/vnc.html](http://localhost:6080/vnc.html)

## Build Instructions

You can build each image using the following commands:

```bash
docker build -t lnfu/robot-dev:ubuntu22.04 ubuntu22.04
docker build -t lnfu/robot-dev:ubuntu22.04-mate ubuntu22.04-mate
docker build -t lnfu/robot-dev:ubuntu22.04-xfce ubuntu22.04-xfce
docker build -t lnfu/robot-dev:ubuntu22.04-xfce-gz-harmonic ubuntu22.04-xfce-gz-harmonic
```

## Push to Docker Hub

After building, push the images:

```bash
docker push lnfu/robot-dev:ubuntu22.04
docker push lnfu/robot-dev:ubuntu22.04-mate
docker push lnfu/robot-dev:ubuntu22.04-xfce
docker push lnfu/robot-dev:ubuntu22.04-xfce-gz-harmonic
```

## License

MIT License
