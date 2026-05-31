import sqlite3
import pandas as pd

df = pd.read_csv('Sample - Superstore.csv', encoding='latin1')
conn = sqlite3.connect('Sample - Superstore.db')
df.to_sql('orders', conn, if_exists='replace', index=False)

print("Done! Rows loaded:", len(df))
print(df.columns.tolist())