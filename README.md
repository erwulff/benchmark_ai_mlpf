# Containerized training workflow of MLPF
Containerized training workflow of an AI model for Particle-Flow reconstruction in High Energy Physics.

How to build and run the container:

1. Clone this repo and `cd` into it.
2. `git submodule init && git submodule update`
3. `cd particleflow/hep_tfds && git submodule init && git submodule update && cd ../../`
4. `./docker/setup_docker.sh`
5. `docker run mlpf:<tag>`

If you want to modify the training workflow, change the `docker/train.sh` script and/or the configuration file `particleflow/parameters/delphes-benchmark.yaml`
