import pandas as pd
import glob

path_ = '../../data/submission/*.csv'
submissions = glob.glob(path_)
print("Total of submissions: {0}".format(len(submissions)))

def make_dataframe_info(submissions_):

    
    '''
    Recieve the submissions and will output a dataframe with usefull informations of the submission.
    '''
    
    df_usefull = {
        'Model' : [],
        'Fold' : [],
        'Epoch' : [],
        'TTA' : [],
        'File' : []
    }

    for submission in submissions_:
        df_usefull['Model'].append(submission.split("/")[-1].split('_')[0])
        df_usefull['Fold'].append(submission.split("/")[-1].split('_')[1][-1])
        df_usefull['Epoch'].append(submission.split("/")[-1].split('_')[2][-1])
        df_usefull['TTA'].append(5)
        df_usefull['File'].append(submission.split("/")[-1])

    df_usefull = pd.DataFrame(df_usefull)
    df_usefull = df_usefull.sort_values(by = 'Model')
    
    return df_usefull

df_usefull = make_dataframe_info(submissions)
df_usefull = df_usefull.query("Epoch == '2'")

def average_folds(submission_folds):
    
    '''
    - Recieves the path of the submission files;
    - Read all the submissions given;
    - Concat all Labels (Score by ID);
    - Average and output a new dataframe with columns (ID and Label) respectively;
    '''
    
    first_submission = pd.read_csv('../../data/submission/' + submission_folds[0])
    
    for submission_file in submission_folds[1:]:
        
        # Read the file
        sub_fold = pd.read_csv('../../data/submission/' + submission_file)
        
        submission_df = first_submission.merge(sub_fold, on='ID', how='left')
        
        # Removing from memory
        sub_fold = None
    
    # Averaging
    submission_df['med'] = submission_df.mean(axis = 1)
    submission_df = submission_df[['ID', 'med']]
    submission_df.columns = ['ID', 'Label']
    
    return submission_df

def final_submission(df_usefull):
    isTheFirstTime = True
    for model in df_usefull['Model'].unique():

        df = df_usefull.query("Model == @model")
        print(model)
        models_path_file = list(df['File'])
        
        print(models_path_file)

        if isTheFirstTime == True:
            main_submission = average_folds(models_path_file)
        else:
            child_submission = average_folds(models_path_file)
            main_submission = main_submission.merge(child_submission, on='ID', how='left')

        child_submission = None


    main_submission['med'] = main_submission.mean(axis = 1)
    main_submission = main_submission[['ID', 'med']]
    main_submission.columns = ['ID', 'Label']
    return main_submission

submission = final_submission(df_usefull)
submission.to_csv('../../data/submission/final_submission.csv', index = False)