import pandas as pd

df = pd.read_csv("ketro_sa_soccer_dataset_advanced.csv", sep=';')

text_cols = [
    "player_name","team","marital_status","nationality",
    "country_of_birth","position","preferred_foot",
    "injury_status","agent","previous_club"
]

# Add quotes around each text field
for col in text_cols:
    df[col] = df[col].astype(str).apply(lambda x: f'"{x}"')

# Convert decimal dots to commas for all numeric columns
for col in df.select_dtypes(include=['float', 'int']).columns:
    df[col] = df[col].astype(str).str.replace('.', ',', regex=False)

df.to_csv("cleaned_text_fields.csv", index=False, sep=';')
