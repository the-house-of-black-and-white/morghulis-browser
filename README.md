## Browse face datasets with Morghulis

Use the `morghulis-browse` Docker image to download and browse face detection datasets.


### Download a dataset

First you need a dataset in the filesystem.
In the example below we are using AFW.
You can skip this step if you already have.

```bash
# create the directory where the dataset will be downloaded
mkdir -p ${HOME}/datasets/AFW

# download the dataset
docker run --rm -it  \
    -v ${HOME}/datasets/:/datasets \
    housebw/morghulis-browser morghulis.download --dataset=afw --output_dir=/datasets/AFW
```

### Browse the dataset

```bash
xhost + && \
docker run --rm -it --privileged \
    -e DISPLAY=unix$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ${HOME}/datasets/:/datasets \
    housebw/morghulis-browser morghulis.browse --dataset=afw --data_dir=/datasets/AFW
```
