# Python script to recursively unzip nested zip folders until the flag is found at the bottom of the nested stack
# Credit to Joshua Al - participant from the ADF Cyber Gap Program 2023

import os
import zipfile
filename = "99problems99.zip"
while True:
    try:
        with zipfile.ZipFile(filename, 'r') as zip_ref:
            zip_ref.extractall()
            print(f"Extracted {filename}")
    except FileNotFoundError:
        print(f"{filename} not found.")
        break
    except zipfile.BadZipFile:
        print(f"Cant open")
        break
    if filename == "99problems1":
        filename = "99problems99.zip"
        continue
    file_number = int(filename[len("99problems"):-len(".zip")])
    filename = f"99problems{file_number - 1}.zip"
    if filename == "99problems1.zip":
        filename = "99problems1"
        extracted_files = [f for f in os.listdir() if f.startswith("99problems") and f.endswith(".zip")]
        for extracted_file in extracted_files:
            os.remove(extracted_file)
        print("Cleaned up prev.")