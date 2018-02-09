# mapr-pacc-multicluster

##### Clone the project
```
git clone https://github.com/mkieboom/mapr-pacc-multicluster
cd mapr-pacc-multicluster
```

#### Modify the launch.sh file to adapt your second cluster config
```
vi launch.sh
```

#### Build the container
```
docker build -t mkieboom/mapr-pacc-multicluster .
```

#### Run the container
```
docker run -it \
--cap-add SYS_ADMIN \
--cap-add SYS_RESOURCE \
--device /dev/fuse \
-e MAPR_CLUSTER=edge01.mapr.com \
-e MAPR_CLDB_HOSTS=172.16.1.87 \
-e MAPR_CONTAINER_USER=mapr \
-e MAPR_CONTAINER_GROUP=mapr \
-e MAPR_CONTAINER_UID=5000 \
-e MAPR_CONTAINER_GID=5000 \
-e MAPR_MOUNT_PATH=/mapr \
mkieboom/mapr-pacc-multicluster
```
