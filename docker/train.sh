#!/bin/sh
cd /workspace/particleflow/hep_tfds
python3 setup.py install

cd /workspace/particleflow/
python3 mlpf/pipeline.py train -c parameters/delphes-benchmark.yaml --nepochs 1 -p docker_ --plot-freq 1000000 --ntrain 1 --ntest 1
