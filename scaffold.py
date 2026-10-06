import os

base_dir = r"c:\Users\IT\Documents\Anti Gravity\24-7 Shalom Psychiatry PLLC"

# 1. State Pages
states = [
    ("New Mexico", "new-mexico.html"),
    ("Nevada", "nevada.html"),
    ("Arizona", "arizona.html")
]

with open(os.path.join(base_dir, "states", "texas.html"), "r", encoding="utf-8") as f:
    texas_content = f.read()

for state_name, file_name in states:
    content = texas_content.replace("Texas", state_name)
    with open(os.path.join(base_dir, "states", file_name), "w", encoding="utf-8") as f:
        f.write(content)

# 2. Conditions Pages
conditions = [
    ("Depression", "depression.html"),
    ("Bipolar Disorder", "bipolar.html"),
    ("OCD", "ocd.html"),
    ("PTSD / Trauma", "ptsd.html"),
    ("Insomnia", "insomnia.html"),
    ("Panic Disorder", "panic.html"),
    ("Medication Management", "medication.html")
]

with open(os.path.join(base_dir, "conditions", "anxiety.html"), "r", encoding="utf-8") as f:
    anxiety_content = f.read()

for cond_title, file_name in conditions:
    content = anxiety_content.replace("Anxiety Management", cond_title).replace("Anxiety", cond_title)
    with open(os.path.join(base_dir, "conditions", file_name), "w", encoding="utf-8") as f:
        f.write(content)

print("Scaffolding complete.")
