FROM ros:kinetic-robot

WORKDIR /root/projects/robotcore

#install ROS dependency
RUN apt-get update && apt-get install -y \
    chrony ntpdate \
    && rm -rf /var/lib/apt/lists/

#build the .bashrc for bash file
RUN /bin/bash -c "echo 'source /opt/ros/kinetic/setup.bash' >> /root/.bashrc && source /root/.bashrc"


#add this and below command will run without cache
ARG CACHEBUST=1

#install environments and excute command in launch.sh for auto exec the CMD
ADD launch.sh /
RUN chmod +x /launch.sh

CMD ["/launch.sh"]
