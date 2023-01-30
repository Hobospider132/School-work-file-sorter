import os
import re
import platform

dest_folder = input("Please input destination folder\n\n")
folders = input("\n\nSelect what folders to check in, Please provide full path\nPlease type a comma between each path\n\n")
folder_array = [x.strip() for x in folders.split(',')]
file_names = input("\nSelect what basename each file should have\n\n")
file_array = [x.strip() for x in file_names.split(',')]

current_os = platform.system()
if current_os == "Windows":
    separator = "\\"
elif current_os in ["Linux", "Darwin"]:
    separator = "/"
else:
    raise ValueError("Unsupported operating system")

extensions = [".pdf", ".txt", ".docx"]

for folder in folder_array:
    for root, dirs, files in os.walk(folder):
        for file in files:
            base_name, extension = os.path.splitext(file)
            if extension.lower() not in extensions:
                continue

            dest_name = dest_folder + separator + base_name + extension
            if any(re.match(fr'^{folder.lower()}', root.lower()) for folder in folder_array):
                print(base_name + extension)
                os.rename(os.path.join(root, file), dest_name)