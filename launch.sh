#!/bin/bash

# Add a second cluster config to mapr-clusters.conf
echo "cloud01.mapr.com secure=false 172.16.1.37:7222" >> /opt/mapr/conf/mapr-clusters.conf
