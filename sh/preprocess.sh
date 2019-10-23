mkdir -p images cache model_output_logs data/submission

# Train
python -m source_code.preprocess.dicom_to_dataframe --input ./images/stage_1_train.csv --output ./cache/train_raw.pkl --imgdir ./images/stage_1_train_images
python -m source_code.preprocess.create_dataset --input ./cache/train_raw.pkl --output ./cache/train.pkl
python -m source_code.preprocess.make_folds --input ./cache/train.pkl --output ./cache/train_folds.pkl --n-fold 5 --seed 333

# Test
python -m source_code.preprocess.dicom_to_dataframe --input ./images/stage_1_sample_submission.csv --output ./cache/test_raw.pkl --imgdir ./images/stage_1_test_images
python -m source_code.preprocess.create_dataset --input ./cache/test_raw.pkl --output ./cache/test.pkl
