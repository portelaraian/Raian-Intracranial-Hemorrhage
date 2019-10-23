model=model001
gpu=0
tta=5
clip=1e-6
conf=./conf/${model}.py


###############
# Fold 3 ep 0 #
###############
snapshot=./model/${model}/fold3_ep0.pt
valid=./model/${model}/fold3_ep0_valid_tta${tta}.pkl
test=./model/${model}/fold3_ep0_test_tta${tta}.pkl
sub=./data/submission/${model}_fold3_ep0_test_tta${tta}.csv

python -m src.cnn.main test ${conf} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 3 --gpu ${gpu}
python -m src.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

###########################################################


###############
# Fold 3 ep 1 #
###############
snapshot=./model/${model}/fold3_ep1.pt
valid=./model/${model}/fold3_ep1_valid_tta${tta}.pkl
test=./model/${model}/fold3_ep1_test_tta${tta}.pkl
sub=./data/submission/${model}_fold3_ep1_test_tta${tta}.csv

python -m src.cnn.main test ${conf} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 3 --gpu ${gpu}
python -m src.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

###########################################################


###############
# Fold 3 ep 2 #
###############
snapshot=./model/${model}/fold3_ep2.pt
valid=./model/${model}/fold3_ep2_valid_tta${tta}.pkl
test=./model/${model}/fold3_ep2_test_tta${tta}.pkl
sub=./data/submission/${model}_fold3_ep2_test_tta${tta}.csv

python -m src.cnn.main test ${conf} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 3 --gpu ${gpu}
python -m src.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

###########################################################

###############
# Fold 4 ep 0 #
###############
snapshot=./model/${model}/fold4_ep0.pt
valid=./model/${model}/fold4_ep0_valid_tta${tta}.pkl
test=./model/${model}/fold4_ep0_test_tta${tta}.pkl
sub=./data/submission/${model}_fold4_ep0_test_tta${tta}.csv

python -m src.cnn.main test ${conf} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 4 --gpu ${gpu}
python -m src.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

###########################################################

###############
# Fold 4 ep 1 #
###############
snapshot=./model/${model}/fold4_ep1.pt
valid=./model/${model}/fold4_ep1_valid_tta${tta}.pkl
test=./model/${model}/fold4_ep1_test_tta${tta}.pkl
sub=./data/submission/${model}_fold4_ep1_test_tta${tta}.csv

python -m src.cnn.main test ${conf} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 4 --gpu ${gpu}
python -m src.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}

###########################################################

###############
# Fold 4 ep 2 #
###############
snapshot=./model/${model}/fold4_ep2.pt
valid=./model/${model}/fold4_ep2_valid_tta${tta}.pkl
test=./model/${model}/fold4_ep2_test_tta${tta}.pkl
sub=./data/submission/${model}_fold4_ep2_test_tta${tta}.csv

python -m src.cnn.main test ${conf} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold 4 --gpu ${gpu}
python -m src.postprocess.make_submission --input ${test} --output ${sub} --clip ${clip}
