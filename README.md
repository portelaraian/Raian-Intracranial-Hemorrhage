# [RSNA Intracranial Hemorrhage Detection](https://www.kaggle.com/c/rsna-intracranial-hemorrhage-detection)

## Directory layout

```
.
├── bin           # Scripts to perform various tasks such as `preprocess`, `train`.
├── cache         # Where preprocessed outputs are saved.
├── conf          # Configuration files for classification models.
├── input         # Input files provided by kaggle. 
├── model         # Where classification model outputs are saved.
├── src           # Code
└── submission    # Where submission files are saved.
```

Missing directories will be created when `./bin/preprocess.sh` is run.

## Specs
- Google Cloud Platform (GCP) instance used: 1x Tesla K80 + 4vCPU + 16 RAM


## Widowing used
| Channel | Matter | Window Level | Window Width |
----------|--------|---------------|---------------
| 0 | Brain | 40 | 80 |
| 1 | Blood/Subdural | 80 | 200 |
| 2 | Soft tissues | 40 | 380 |


## How to run
**On the root folder!**
### Requirements

The library versions we used. It does not mean other versions can not be used but not tested.

- Python 3.6.6
- CUDA 10.0 (CUDA driver 410.79)
- [Pytorch](https://pytorch.org/) 1.1.0
- [NVIDIA apex](https://github.com/NVIDIA/apex) 0.1 (for mixed precision training)


### Preprocessing

~~~
$ sh ./bin/preprocess.sh
~~~

[preprocess.sh](./bin/preprocess.sh) does the following at once.

- Creates directories such as `./cache`, `./model`.
- [dicom_to_dataframe.py](./src/preprocess/dicom_to_dataframe.py) reads dicom files and save its metadata into the dataframe.
- [create_dataset.py](./src/preprocess/create_dataset.py) creates a dataset for train/test.
- [make_folds.py](./src/preprocess/make_folds.py) makes folds(n=5) for cross validation. 


### Training (classification model)

~~~
$ sh ./bin/train.sh
~~~

- Trains two types of models `se_resnext50_32x4d` and `efficientnet-b2` with 5 folds each. 


### Predicting (classification model)

~~~
$ sh ./bin/predict.sh
~~~

- Makes predictions for test data.
- Checkpoints from 2nd and 3rd epoch of each fold are used for predictions.


### Ensembling (simple bagging)

~~~
$ sh ./bin/ensemble.sh
~~~

- Ensembles predictions from the previous step.
- Makes a submission file.


## License

The license is MIT.
