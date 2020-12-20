gpu=0
tta=5

predict_valid() {
    model=$1
    fold=$2
    ep=$3

    conf=./conf/${model}.py
    snapshot=./model/${model}/fold${fold}_ep${ep}.pt
    valid=./model/${model}/fold${fold}_ep${ep}_valid_tta${tta}.pkl

    python -m src.cnn.main valid ${conf} --snapshot ${snapshot} --output ${valid} --n-tta ${tta} --fold ${fold} --gpu ${gpu}
}

predict_test() {
    model=$1
    fold=$2
    ep=$3

    conf=./conf/${model}.py
    snapshot=./model/${model}/fold${fold}_ep${ep}.pt
    test=./model/${model}/fold${fold}_ep${ep}_test_tta${tta}.pkl

    python -m src.cnn.main test ${conf} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold ${fold} --gpu ${gpu}
}

predict_test model_seresnext_50_i512 0 2
predict_test model_seresnext_50_i512 0 3
predict_test model_seresnext_50_i512 1 2
predict_test model_seresnext_50_i512 1 3
predict_test model_seresnext_50_i512 2 2
predict_test model_seresnext_50_i512 2 3
predict_test model_seresnext_50_i512 3 2
predict_test model_seresnext_50_i512 3 3
predict_test model_seresnext_50_i512 4 2
predict_test model_seresnext_50_i512 4 3


predict_test model_efficientnet_b2 0 2
predict_test model_efficientnet_b2 0 3
predict_test model_efficientnet_b2 1 2
predict_test model_efficientnet_b2 1 3
predict_test model_efficientnet_b2 2 2
predict_test model_efficientnet_b2 2 3
predict_test model_efficientnet_b2 3 2
predict_test model_efficientnet_b2 3 3
predict_test model_efficientnet_b2 4 2
predict_test model_efficientnet_b2 4 3

