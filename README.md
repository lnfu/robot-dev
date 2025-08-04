# robot-dev

Ready-to-use Docker images tailored for development in robotics and computer vision.

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

## License

MIT License
