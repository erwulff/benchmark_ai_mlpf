# Containerized training workflow of MLPF
Containerized training workflow of an AI model for Particle-Flow reconstruction in High Energy Physics.

1. Clone this repo and `cd` into it.

2. `git submodule init && git submodule update`

4. `cd particleflow/hep_tfds && git submodule init && git submodule update && cd ../../`

4. Put data under `tensorflow_datasets/`

5. `./docker/setup_docker.sh`

6. `docker run mlpf:0.0.1`
