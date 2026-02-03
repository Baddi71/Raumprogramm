
import csv

file_path = '/home/baddi/Development/Raumprogramm/Standardräume mit Ausstattung-Grid view.csv'


with open(file_path, 'r', encoding='utf-8-sig') as f:
    reader = csv.reader(f)
    header = next(reader)
    
    print(f"Header length: {len(header)}")
    for i, col in enumerate(header):
        clean_col = col.replace('\n', ' ').replace('\r', '').strip()
        print(f"{i}: {clean_col}")
