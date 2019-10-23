# Constraints
## Model Name
model = model_seresnext_50

# Model Configuration and HyperParams
conf = ./conf/${model}.py


##################
## SEResNeXt-50 ##
##################
echo "Model: Seresnext-50"
echo "Range [0, 5]"

echo "Fold 1"
python -m source_code.cnn.main train ${conf} --fold 1 --gpu 0

echo "Fold 2"
python -m source_code.cnn.main train ${conf} --fold 2 --gpu 0

echo "Fold 3"
python -m source_code.cnn.main train ${conf} --fold 3 --gpu 0

echo "Fold 4"
python -m source_code.cnn.main train ${conf} --fold 4 --gpu 0

###########
## VGG19 ##
###########
model = model_vgg19

echo "Model: VGG19"
echo "Range [0, 5]"

echo "Fold 1"
python -m source_code.cnn.main train ${conf} --fold 1 --gpu 0

echo "Fold 2"
python -m source_code.cnn.main train ${conf} --fold 2 --gpu 0

echo "Fold 3"
python -m source_code.cnn.main train ${conf} --fold 3 --gpu 0

echo "Fold 4"
python -m source_code.cnn.main train ${conf} --fold 4 --gpu 0

#####################
## Efficientnet-b0 ##
#####################
model = model_efficientnet_b0

echo "Model: VGG19"
echo "Range [0, 5]"

echo "Fold 1"
python -m source_code.cnn.main train ${conf} --fold 1 --gpu 0

echo "Fold 2"
python -m source_code.cnn.main train ${conf} --fold 2 --gpu 0

echo "Fold 3"
python -m source_code.cnn.main train ${conf} --fold 3 --gpu 0

echo "Fold 4"
python -m source_code.cnn.main train ${conf} --fold 4 --gpu 0