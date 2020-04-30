# base image
FROM fedora
# install additional packages required for o2em2
#RUN yum -y install allegro
# install package required for sound trouble shooting
#RUN yum -y install alsa-utils
#
#merge all install in one command
RUN yum -y install allegro alsa-utils

# install additional packages required for troubleshooting
#RUN yum -y install findutils procps-ng

#
# copy this to /app
COPY rsc/o2em2 /app/
COPY rsc/roms /app/roms
COPY rsc/bios /app/bios


# set initial working directory
WORKDIR /app
# Run  when the container launches
CMD ["./o2em2", "vp_01.bin"]


