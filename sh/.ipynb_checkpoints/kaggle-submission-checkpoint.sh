model=model001
gpu=0
tta=5
clip=1e-6
conf=./conf/${model}.py


kaggle competitions submit rsna-intracranial-hemorrhage-detection -m "" -f ./data/submission/model001_fold1_ep2_test_tta5.csv
kaggle competitions submit rsna-intracranial-hemorrhage-detection -m "" -f ./data/submission/model001_fold2_ep0_test_tta5.csv
kaggle competitions submit rsna-intracranial-hemorrhage-detection -m "" -f ./data/submission/model001_fold2_ep1_test_tta5.csv
kaggle competitions submit rsna-intracranial-hemorrhage-detection -m "" -f ./data/submission/model001_fold2_ep2_test_tta5.csv
kaggle competitions submit rsna-intracranial-hemorrhage-detection -m "" -f ./data/submission/model001_fold3_ep0_test_tta5.csv

