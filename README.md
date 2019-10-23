# RSNA Intracranial Hemorrhage Competition

All requirements should be detailed in `requirements.txt`. I used (Python 3.7)

I used CUDA 10.0/cuDNN v7.6 and the models were trained on the cloud using a Tesla K80 GPU.

## Installing dependences <br><br>
### Seresnext101-32x4d and VGG19
To install:
```
 cd source_code/cnn/pretrained_models/pretrained-models.pytorch/
 python setup.py install
```

### EfficientNet-b0
To install:
```
cd source_code/cnn/pretrained_models/EfficientNet-Pytorch/
pip install -e .
```

### Installing AMP
```
cd source_code/cnn/apex/
pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./
```

### Requirements
** In the main folder

```
pip install -r requirements.txt
```
<br><br>
## Preparing data <br><br>
Make sure that you're at the Main Folder
```
./sh/preprocess.sh
```
### Windows Applied and source code

For this challenge, windowing is important to focus on the matter, in this case the brain and the blood. There are good kernels explaining how windowing works.

- [See like a Radiologist with Systematic Windowing](https://www.kaggle.com/dcstang/see-like-a-radiologist-with-systematic-windowing) by David Tang
- [RSNA IH Detection - EDA](https://www.kaggle.com/allunia/rsna-ih-detection-eda) by Allunia

We used three types of windows to focus and assigned them to each of the chennel to construct images on the fly for training.

| Channel | Matter | Window Center | Window Width |
----------|--------|---------------|---------------
| 0 | Brain | 40 | 80 |
| 1 | Blood/Subdural | 80 | 200 |
| 2 | Soft tissues | 40 | 380 |

## Trainning Phase
| Model | Folds | Batch Size | Epochs | Loss | Augmentations | Learning Rate |
----------|--------|---------------|-----------|--------|--------------------- |--------------------| 
| SE-Resnext50_32x4d | 5 | 20 | 3 | BCE With Logits Loss | Crop, Hflip, Contrast, To Tensor | 6e-5 |
| VGG19 | 5 | 20 | 3 | BCE With Logits Loss | Crop, Hflip, Contrast, To Tensor | 6e-5 |
| EfficientNet B0 | 5 | 20 | 3 | BCE With Logits Loss | Crop, Hflip, To Tensor | 6e-5 |

#### Train all models
Models used:

- Seresnext50-32-4d
- VGG19
- EfficientNet-b0

```
./sh/train_all.sh
```

<br><br>
## Predict
```
./sh/predict_all.sh
```
<br><br>
## Make Submissions



<br><br>
## Knoledgments




