# Multi cluster on MapR PACC
#
# VERSION 0.1 - not for production, use at own risk
#

#
# Using MapR PACC as the base image
# For specific versions check: https://hub.docker.com/r/mkieboom/mapr-pacc-nginx-docker/
FROM maprtech/pacc

# Add the launch script which adds a second cluster to mapr-clusters.conf
ADD launch.sh /launch.sh
RUN sudo chmod +x /launch.sh

# Launch
CMD /launch.sh && /bin/bash