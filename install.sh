#!/bin/sh

pip install scipy matplotlib pycocotools scikit-learn
pip install numpy==1.20.0
pip install mmdet==2.28.2

pip install torch==1.13.0+cu116 torchvision==0.14.0+cu116 --extra-index-url https://download.pytorch.org/whl/cu116
pip install mmcv-full -f https://download.openmmlab.com/mmcv/dist/cu116/torch1.13/index.html

git clone --branch 2.x https://github.com/open-mmlab/mmdetection.git
cd mmdetection
python setup.py install
pip uninstall yapf -y
pip install yapf==0.40.1

mkdir checkpoints
wget -O ./checkpoints/ssd300_coco_20210803_015428-d231a06e.pth  https://download.openmmlab.com/mmdetection/v2.0/ssd/ssd300_coco/ssd300_coco_20210803_015428-d231a06e.pth
