model=model002
conf=./conf/${model}.py

echo "Range [0, 5]"

echo "Fold 0"
python -m src.cnn.main train ${conf} --fold 0 --gpu 0

echo "Fold 1"
python -m src.cnn.main train ${conf} --fold 1 --gpu 0

echo "Fold 2"
python -m src.cnn.main train ${conf} --fold 2 --gpu 0

echo "Fold 3"
python -m src.cnn.main train ${conf} --fold 3 --gpu 0

echo "Fold 4"
python -m src.cnn.main train ${conf} --fold 4 --gpu 0