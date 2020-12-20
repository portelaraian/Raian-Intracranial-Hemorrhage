workdir = './model/model_efficientnet_b2'
seed = 400
apex = True

n_fold = 5
epoch = 4
resume_from = None

batch_size = 28
num_workers = 4
imgsize = (480, 480) #(height, width)

loss = dict(
    name='BCEWithLogitsLoss',
    params=dict(),
)

optim = dict(
    name='Adam',
    params=dict(
        lr=1e-5,
    ),
)

model = dict(
    name='efficientnet-b2',
    pretrained='imagenet',
    n_output=6,
)

scheduler = dict(
    name='MultiStepLR',
    params=dict(
        milestones=[1,2,3],
        gamma=2/3,
    ),
)


#normalize = None
normalize = {'mean': [13.197, 7.179, -78.954,], 'std': [24.509, 55.063, 113.127,]}


crop = dict(name='RandomResizedCrop', params=dict(height=imgsize[0], width=imgsize[1], scale=(0.7,1.0), p=1.0))
crop_test = dict(name='RandomResizedCrop', params=dict(height=imgsize[0], width=imgsize[1], scale=(0.75,1.0), p=1.0))
resize = dict(name='Resize', params=dict(height=imgsize[0], width=imgsize[1]))
hflip = dict(name='HorizontalFlip', params=dict(p=0.5,))
vflip = dict(name='VerticalFlip', params=dict(p=0.5,))
contrast = dict(name='RandomBrightnessContrast', params=dict(brightness_limit=0.08, contrast_limit=0.08, p=0.5))
totensor = dict(name='ToTensor', params=dict(normalize=normalize))
rotate = dict(name='Rotate', params=dict(limit=30, border_mode=0), p=0.7)
rotate_test = dict(name='Rotate', params=dict(limit=25, border_mode=0), p=0.7)
dicomnoise = dict(name='RandomDicomNoise', params=dict(limit_ratio=0.05, p=0.9))
dicomnoise_test = dict(name='RandomDicomNoise', params=dict(limit_ratio=0.04, p=0.7))

window_policy = 4

data = dict(
    train=dict(
        dataset_type='CustomDataset',
        annotations='./cache/train_folds5_seed300.pkl',
        imgdir='./input/stage_2_train_images',
        imgsize=imgsize,
        n_grad_acc=1,
        loader=dict(
            shuffle=True,
            batch_size=batch_size,
            drop_last=True,
            num_workers=num_workers,
            pin_memory=False,
        ),
        transforms=[crop, hflip, rotate, dicomnoise, totensor],
        dataset_policy=1,
        window_policy=window_policy,
    ),
    valid = dict(
        dataset_type='CustomDataset',
        annotations='./cache/train_folds5_seed300.pkl',
        imgdir='./input/stage_2_train_images',
        imgsize=imgsize,
        loader=dict(
            shuffle=False,
            batch_size=batch_size,
            drop_last=False,
            num_workers=num_workers,
            pin_memory=False,
        ),
        transforms=[crop_test, hflip, rotate_test, dicomnoise_test, totensor],
        dataset_policy=1,
        window_policy=window_policy,
    ),
    test = dict(
        dataset_type='CustomDataset',
        annotations='./cache/test.pkl',
        imgdir='./input/stage_2_test_images',
        imgsize=imgsize,
        loader=dict(
            shuffle=False,
            batch_size=batch_size,
            drop_last=False,
            num_workers=num_workers,
            pin_memory=False,
        ),
        transforms=[crop_test, hflip, rotate_test, dicomnoise_test, totensor],
        dataset_policy=1,
        window_policy=window_policy,
    ),
)
