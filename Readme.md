# Overview
o2em2 is a 64 bits for of o2em. see [o2em2 project] (http://o2em2.sourceforge.net/).
o2em2 enables you to play odyssey2 / videopac games and softs.

This docker image is provided to help launch and use o2em2 without having to deal with recompiling and installing an emulator. 
The o2em2 included in the image includes some patches of my own.

# Launching the container
Here are some indications on how to launch the container :

## Minimal command :
docker run -it --device /dev/snd --net=host --ipc=host -v /tmp/.X11-unix:/tmp/.X11-unix -v $XAUTHORITY:/root/.Xauthority -e DISPLAY o2em2

## Full command
docker run -it \\ \
    --device /dev/snd \\ \
    --net=host \\ \
    --ipc=host \\ \
    -v /tmp/.X11-unix:/tmp/.X11-unix \\ \
    -v $XAUTHORITY:/root/.Xauthority \\ \
    --volume=$PWD/rsc/roms:/app/roms  \\ \
    --volume=$PWD/rsc/bios:/app/bios  \\ \
    --volume=$PWD/asoundpcblanc.conf:/etc/asound.conf \\ \
    -e DISPLAY=:0  \\ \
    o2em2 \\ \
    ./o2em2 vp_14.bin

