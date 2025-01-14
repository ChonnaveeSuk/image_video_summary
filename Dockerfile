# ใช้ Python เวอร์ชันล่าสุดเป็น Base Image
FROM python:3.9-slim

# ตั้งค่า Working Directory ภายใน Container
WORKDIR /app

# คัดลอกไฟล์ทั้งหมดไปยัง /app
COPY . /app

# ติดตั้ง dependencies ที่จำเป็นสำหรับ OpenCV และการใช้งานอื่น ๆ
RUN apt-get update && apt-get install -y libgl1-mesa-glx libglib2.0-0

# ติดตั้ง dependencies ของโปรเจคจาก requirements.txt
RUN pip install --no-cache-dir --default-timeout=1000 -i https://pypi.douban.com/simple -r image_video_summary/src/requirements.txt

# เปิดพอร์ต 8080
EXPOSE 8080

# คำสั่งเริ่มต้นเมื่อ Container รัน
CMD ["python", "image_video_summary/src/main_pipeline.py"]
