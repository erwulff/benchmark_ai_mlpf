#!/bin/sh
docker run -u $(id -u):$(id -g) --rm --name "$(whoami)_mlpf" -it mlpf:0.0.1 bash
