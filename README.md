# ROS Move Base in Docker [![](https://img.shields.io/docker/pulls/frankjoshua/ros-move-base)](https://hub.docker.com/r/frankjoshua/ros-move-base) [![CI](https://github.com/frankjoshua/docker-ros-move-base/workflows/CI/badge.svg)](https://github.com/frankjoshua/docker-ros-move-base/actions)

## Description

Runs Move Base in a Docker container. Probably need --network="host" because ROS uses ephemeral ports.

## Example

```
docker run -it \
    --network="host" \
    --env="ROS_IP=$ROS_IP" \
    --env="ROS_MASTER_URI=$ROS_MASTER_URI" \
    frankjoshua/ros-move-base
```

## Building

Use [build.sh](build.sh) to build the docker containers.

<br>Local builds are as follows:

```
./build.sh -t frankjoshua/ros-move-base -l
```

## Testing

Github Actions expects the DOCKERHUB_USERNAME and DOCKERHUB_TOKEN variables to be set in your environment.

## License

Apache 2.0

## Author Information

Joshua Frank [@frankjoshua77](https://www.twitter.com/@frankjoshua77)
<br>
[http://roboticsascode.com](http://roboticsascode.com)
