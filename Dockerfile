FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=America/New_York

RUN apt-get update

RUN apt-get install -y python3-pip

RUN apt-get install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio gstreamer1.0-nice gstreamer1.0-plugins-base-apps

RUN pip3 install websockets

RUN apt-get install -y git

RUN git clone https://github.com/steveseguin/raspberry_ninja.git ninja

ENTRYPOINT python3 ninja/publish.py
