model = model_efficientnet_b0

# Constraints
tta = 5
clip = 1e-6
conf__ = ./model_configuration/${model}.py


############
## Fold 0 ##
############

# Fold 0 | Epoch 0
snapshot=./model_output_logs/${model}/fold0_ep0.pt
valid=./model_output_logs/${model}/fold0_ep0_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold0_ep0_test_tta${tta}.pkl
sub=./data/submission/${model}_fold0_ep0_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 0 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

# Fold 0 | Epoch 1
snapshot=./model_output_logs/${model}/fold0_ep1.pt
valid=./model_output_logs/${model}/fold0_ep1_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold0_ep1_test_tta${tta}.pkl
sub=./data/submission/${model}_fold0_ep1_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 0 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

# Fold 0 | Epoch 2
snapshot=./model_output_logs/${model}/fold0_ep2.pt
valid=./model_output_logs/${model}/fold0_ep2_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold0_ep2_test_tta${tta}.pkl
sub=./data/submission/${model}_fold0_ep2_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 0 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}


############
## Fold 1 ##
############

# Fold 1 | Epoch 0
snapshot=./model_output_logs/${model}/fold1_ep0.pt
valid=./model_output_logs/${model}/fold1_ep0_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold1_ep0_test_tta${tta}.pkl
sub=./data/submission/${model}_fold1_ep0_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 1 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

# Fold 1 | Epoch 1
snapshot=./model_output_logs/${model}/fold1_ep1.pt
valid=./model_output_logs/${model}/fold1_ep1_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold1_ep1_test_tta${tta}.pkl
sub=./data/submission/${model}_fold1_ep1_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 1 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

# Fold 1 | Epoch 2
snapshot=./model_output_logs/${model}/fold1_ep2.pt
valid=./model_output_logs/${model}/fold1_ep2_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold1_ep2_test_tta${tta}.pkl
sub=./data/submission/${model}_fold1_ep2_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 1 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}


############
## Fold 2 ##
############

# Fold 2 | Epoch 0
snapshot=./model_output_logs/${model}/fold2_ep0.pt
valid=./model_output_logs/${model}/fold2_ep0_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold2_ep0_test_tta${tta}.pkl
sub=./data/submission/${model}_fold2_ep0_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 2 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

# Fold 2 | Epoch 1
snapshot=./model_output_logs/${model}/fold2_ep1.pt
valid=./model_output_logs/${model}/fold2_ep1_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold2_ep1_test_tta${tta}.pkl
sub=./data/submission/${model}_fold2_ep1_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 2 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

# Fold 2 | Epoch 2
snapshot=./model_output_logs/${model}/fold2_ep2.pt
valid=./model_output_logs/${model}/fold2_ep2_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold2_ep2_test_tta${tta}.pkl
sub=./data/submission/${model}_fold2_ep2_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 2 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}


############
## Fold 3 ##
############

# Fold 3 | Epoch 0
snapshot=./model_output_logs/${model}/fold3_ep0.pt
valid=./model_output_logs/${model}/fold3_ep0_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold3_ep0_test_tta${tta}.pkl
sub=./data/submission/${model}_fold3_ep0_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 3 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

# Fold 3 | Epoch 1
snapshot=./model_output_logs/${model}/fold3_ep1.pt
valid=./model_output_logs/${model}/fold3_ep1_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold3_ep1_test_tta${tta}.pkl
sub=./data/submission/${model}_fold3_ep1_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 3 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

# Fold 3 | Epoch 2
snapshot=./model_output_logs/${model}/fold3_ep2.pt
valid=./model_output_logs/${model}/fold3_ep2_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold3_ep2_test_tta${tta}.pkl
sub=./data/submission/${model}_fold3_ep2_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 3 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}


############
## Fold 4 ##
############

# Fold 4 | Epoch 0
snapshot=./model_output_logs/${model}/fold4_ep0.pt
valid=./model_output_logs/${model}/fold4_ep0_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold4_ep0_test_tta${tta}.pkl
sub=./data/submission/${model}_fold4_ep0_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 4 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

# Fold 4 | Epoch 1
snapshot=./model_output_logs/${model}/fold4_ep1.pt
valid=./model_output_logs/${model}/fold4_ep1_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold4_ep1_test_tta${tta}.pkl
sub=./data/submission/${model}_fold4_ep1_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 4 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

# Fold 4 | Epoch 2
snapshot=./model_output_logs/${model}/fold4_ep2.pt
valid=./model_output_logs/${model}/fold4_ep2_valid_tta${tta}.pkl
test=./model_output_logs/${model}/fold4_ep2_test_tta${tta}.pkl
sub=./data/submission/${model}_fold4_ep2_test_tta${tta}.csv

python -m source_code.cnn.main test ${conf_} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 4 --gpu ${gpu}
python -m source_code.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}
