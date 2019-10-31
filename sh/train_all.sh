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

echo "Fold 0"
python -m source_code.cnn.main train ${conf} --fold 0 --gpu 0

echo "Fold 1"
python -m source_code.cnn.main train ${conf} --fold 1 --gpu 0

echo "Fold 2"
python -m source_code.cnn.main train ${conf} --fold 2 --gpu 0

echo "Fold 3"
python -m source_code.cnn.main train ${conf} --fold 3 --gpu 0

echo "Fold 4"
python -m source_code.cnn.main train ${conf} --fold 4 --gpu 0

#######################
## SEResNeXt-50_i512 ##
#######################
model = model_seresnext_50_i512
echo "Model: Seresnext-50 imgsize: 512"
echo "Range [0, 5]"

echo "Fold 0"
python -m source_code.cnn.main train ${conf} --fold 0 --gpu 0

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

echo "Fold 0"
python -m source_code.cnn.main train ${conf} --fold 0 --gpu 0

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

echo "Model: EfficientNet-B0"
echo "Range [0, 5]"

echo "Fold 0"
python -m source_code.cnn.main train ${conf} --fold 0 --gpu 0

echo "Fold 1"
python -m source_code.cnn.main train ${conf} --fold 1 --gpu 0

echo "Fold 2"
python -m source_code.cnn.main train ${conf} --fold 2 --gpu 0

echo "Fold 3"
python -m source_code.cnn.main train ${conf} --fold 3 --gpu 0

echo "Fold 4"
python -m source_code.cnn.main train ${conf} --fold 4 --gpu 0

##############
## Resnet34 ##
##############
model = model_resnet34

echo "Model: Resnet34"
echo "Range [0, 5]"

echo "Fold 0"
python -m source_code.cnn.main train ${conf} --fold 0 --gpu 0

echo "Fold 1"
python -m source_code.cnn.main train ${conf} --fold 1 --gpu 0

echo "Fold 2"
python -m source_code.cnn.main train ${conf} --fold 2 --gpu 0

echo "Fold 3"
python -m source_code.cnn.main train ${conf} --fold 3 --gpu 0

echo "Fold 4"
python -m source_code.cnn.main train ${conf} --fold 4 --gpu 0


#####################
## Efficientnet-b2 ##
#####################
model = model_efficientnet_b2

echo "Model: EfficientNet-B2"
echo "Range [0, 5]"

echo "Fold 0"
python -m source_code.cnn.main train ${conf} --fold 0 --gpu 0

echo "Fold 1"
python -m source_code.cnn.main train ${conf} --fold 1 --gpu 0

echo "Fold 2"
python -m source_code.cnn.main train ${conf} --fold 2 --gpu 0

echo "Fold 3"
python -m source_code.cnn.main train ${conf} --fold 3 --gpu 0

echo "Fold 4"
python -m source_code.cnn.main train ${conf} --fold 4 --gpu 0