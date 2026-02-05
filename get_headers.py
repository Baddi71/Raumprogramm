
import csv
import os

input_file = 'standardraeume_formular_neu.csv'
base_dir = os.path.dirname(os.path.abspath(__file__))
file_path = os.path.join(base_dir, input_file)

with open(file_path, 'r', encoding='utf-8-sig') as f:
    reader = csv.DictReader(f, delimiter=';')
    print("Headers match:", reader.fieldnames)
    print("Number of headers:", len(reader.fieldnames))
