# Build container:
# $ docker build --tag simpleton ./docker

# Run container:
# $ docker run -it --entrypoint /bin/bash -v /home/fisker/projects/simpleton/:/project simpleton
# -i interactive
# -t make tty

# Login to GitHub Container Registry (ghcr.io)
# $ export CR_PAT=YOUR_TOKEN; echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

# Tag a local image with ghcr.io/kasperfiskerdk/simpleton.
# $ docker build --tag ghcr.io/kasperfiskerdk/simpleton ./docker

# Push local image to GitHub Container Registry (ghcr.io)
# $ docker images   to see local images
# $ docker push ghcr.io/kasperfiskerdk/simpleton:0.1



FROM ubuntu:20.04
WORKDIR .

RUN apt update && DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y \
        build-essential \
        tzdata \
        ninja-build \
        git \
        wget \
        docker


# As ubuntu 20.04 is very old, newer versions of CMake
# are not supported. CMake is therefore installed
# directly from cmake.org
RUN wget https://cmake.org/files/v3.22/cmake-3.22.0-linux-x86_64.sh && \
chmod +x cmake-3.22.0-linux-x86_64.sh && \
./cmake-3.22.0-linux-x86_64.sh --skip-license --prefix=/usr/local/ \
rm ./cmake-3.22.0-linux-x86_64.sh

