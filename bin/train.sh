gpu=0

train() {
    model=$1
    fold=$2

    conf=./conf/${model}.py
    python -m src.cnn.main train ${conf} --fold ${fold} --gpu ${gpu}
}

train model_seresnext_50_i512.py 0
train model_seresnext_50_i512.py 1
train model_seresnext_50_i512.py 2
train model_seresnext_50_i512.py 3
train model_seresnext_50_i512.py 4

train model_efficientnet_b2.py 0
train model_efficientnet_b2.py 1
train model_efficientnet_b2.py 2
train model_efficientnet_b2.py 3
train model_efficientnet_b2.py 4


