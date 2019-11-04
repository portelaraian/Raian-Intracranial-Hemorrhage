# RSNA Intracranial Hemorrhage Competition

I used (Python 3.7) and CUDA 10.0/cuDNN v7.6 and the models were trained on the cloud using a Tesla K80 GPU.
<br>
## Installing dependences 
### Pretrainedmodels
To install:
```
 cd source_code/cnn/pretrained_models/pretrained-models.pytorch/
 python setup.py install
```

### EfficientNet-Pytorch
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
## Preparing data
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
#### Train all models
Models used:

- Seresnext50-32-4d (224, 224)
- Seresnext50-32-4d (512, 512)
- VGG19
- EfficientNet-b0
- EfficientNet-b2
- Resnet34

```
./sh/train_all.sh
```

<br>

## Predict

```
./sh/predict_all.sh
```

## Make Submissions
I've averaged all the predictions of all folds by model then I averaged the predictions of those models.

<br>
## Knoledgments
[1] - Hybrid 3D/2D Convolutional Neural Network for Hemorrhage Evaluation on Head CT | Source: http://www.ajnr.org/content/early/2018/07/26/ajnr.A5742

[2] - Precise diagnosis of intracranial hemorrhage and subtypes using a three-dimensional joint convolutional and recurrent neural network | Source: https://link.springer.com/article/10.1007/s00330-019-06163-2

[3] - Development and Validation of Deep Learning Algorithms for Detection of Critical Findings in Head CT Scans | Source: https://arxiv.org/abs/1803.05854

[4] - Brain Hemorrhage Diagnosis by Using Deep Learning | Source: https://www.researchgate.net/publication/315853163_Brain_Hemorrhage_Diagnosis_by_Using_Deep_Learning

[5] - Image Thresholding Improves 3-Dimensional Convolutional Neural Network Diagnosis of Different Acute Brain Hemorrhages on Computed Tomography Scans | Source: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6539746/

[6] - Classification of CT brain images based on deep learning networks | Source: https://www.researchgate.net/publication/309328039_Classification_of_CT_brain_images_based_on_deep_learning_networks

[7] - RADNET: Radiologist Level Accuracy using Deep Learning for HEMORRHAGE detection in CT Scans | Source

[8] - Application of Deep Learning in Neuroradiology: Brain Haemorrhage Classification Using Transfer Learning | Source: https://www.hindawi.com/journals/cin/2019/4629859/

[9] - Improved ICH classification using task-dependent learning | Source: https://arxiv.org/abs/1907.00148






