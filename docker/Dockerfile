# FROM nvidia/cuda:11.0-base-ubuntu20.04
FROM tensorflow/tensorflow:2.6.0-gpu
# FROM tensorflow/tensorflow:2.6.0

# Install some basic utilities
RUN apt-get update && \
    apt clean && rm -rf /var/lib/apt/lists/*

RUN mkdir /workspace
WORKDIR /workspace

# Install dependencies
COPY docker/requirements.txt /workspace/
RUN python3 -m pip install --upgrade pip==21.3
RUN python3 -m pip install --no-cache-dir -r /workspace/requirements.txt

# Get the source code for MLPF
RUN rm -rf particleflow/notebooks particleflow/images
COPY particleflow /workspace/particleflow

# Get the data
COPY delphes_pf /workspace/tensorflow_datasets/delphes_pf

COPY docker/train.sh /workspace/
CMD bash train.sh
