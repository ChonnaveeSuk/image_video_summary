import os

# ชื่อโปรเจค
project_name = "image_video_summary"

# โฟลเดอร์ที่ต้องการสร้าง
folders = [
    "data/raw",
    "data/processed",
    "notebooks",
    "src/models",
    "src/utils",
    "logs",
    "configs",
    "tests"
]

# สร้างโครงสร้างโฟลเดอร์
for folder in folders:
    os.makedirs(os.path.join(project_name, folder), exist_ok=True)

print("Project structure created successfully!")
