#create below folder structure using python script


    #Write a python script to create the above folder structure with empty files.
import os          
# Define the folder structure
folder_structure = {
    "ingress-alb-scenario": {
        "scenario.yaml": "",
        "steps": {
            "step1.md": "",
            "step2.md": "",
            "step3.md": "",
            "step4.md": ""
        },
        "scripts": {
            "verify.sh": ""
        },
        "manifests": {
            "deployment.yaml": "",
            "service.yaml": "",
            "ingress.yaml": ""
        }
    }
}

#write a function to create the folder structure
def create_folder_structure(base_path, structure):  
    for folder, contents in structure.items():
        folder_path = os.path.join(base_path, folder)
        os.makedirs(folder_path, exist_ok=True)  # Create the folder if it doesn't exist
        for item, value in contents.items():
            if isinstance(value, dict):  # If the item is a subfolder
                create_folder_structure(folder_path, {item: value})  # Recursively create subfolder
            else:  # If the item is a file
                file_path = os.path.join(folder_path, item)
                with open(file_path, 'w') as f:  # Create an empty file
                    f.write(value)

# Specify the base path where the folder structure will be created
base_path = "."  # Current directory
create_folder_structure(base_path, folder_structure)