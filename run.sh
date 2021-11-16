#!/bin/sh

# Install dependencies
# python3 -m pip install --upgrade pip
# python3 -m pip install --no-cache-dir -r docker/requirements.txt
which python3
cd particleflow
git submodule init
git submodule update

cd hep_tfds
git submodule init
git submodule update
python3 setup.py install

cd ..
# sudo apt install python3 python3-pip wget
# sudo python3 -m pip install --upgrade pip
python3 -m pip install --upgrade setuptools
python3 -m pip install tensorflow==2.6 setGPU tensorflow-estimator==2.6 \
    sklearn matplotlib mplhep pandas scipy uproot3 uproot3-methods \
    keras==2.6.0 awkward0 keras-tuner networkx \
    tensorflow-probability==0.14.1 tensorflow-addons==0.15.0 \
    tqdm click tensorflow-datasets 'ray[default]' 'ray[tune]' \
    tf-models-official tensorflow-text tensorflow-datasets==4.4.0 \
    tf2onnx onnxruntime zenodo_get seaborn scikit-optimize nevergrad
git submodule init
git submodule update

python3 mlpf/pipeline.py train -c parameters/delphes-bench.yaml --nepochs 1 -p docker_ --plot-freq 1000000 --ntrain 1 --ntest 1
