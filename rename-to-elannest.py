import os
import re

def rename_files_in_directory(directory):
    for filename in os.listdir(directory):
        if filename.endswith('.el'):
            new_name = re.sub(r'ELAN', 'ElanNest', filename[:-3]) + '.en'
            os.rename(os.path.join(directory, filename), os.path.join(directory, new_name))
            print(f'Renamed: {filename} to {new_name}')

if __name__ == '__main__':
    directory_path = input('Enter the directory path: ')
    rename_files_in_directory(directory_path)