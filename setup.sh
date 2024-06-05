#!/bin/bash

# Đường dẫn tới tệp zip trên GitHub
ZIP_URL="https://github.com/giahuyanhduy/phase/raw/main/Phase_3.zip"

# Đường dẫn tới thư mục đích
DEST_DIR="/home/Phase_3"

# Kiểm tra và cài đặt unzip nếu chưa được cài đặt
if ! command -v unzip &> /dev/null
then
    echo "Unzip chưa được cài đặt. Đang cài đặt unzip..."
    sudo apt-get update
    sudo apt-get install unzip -y
fi

# Tạo thư mục /home/Phase_3 nếu chưa tồn tại
if [ ! -d "$DEST_DIR" ]; then
    echo "Tạo thư mục $DEST_DIR..."
    sudo mkdir -p "$DEST_DIR"
fi

# Tải xuống Phase_3.zip từ GitHub
echo "Đang tải xuống Phase_3.zip từ GitHub..."
wget -O /tmp/Phase_3.zip "$ZIP_URL"

# Giải nén Phase_3.zip vào /home/Phase_3
echo "Giải nén Phase_3.zip vào $DEST_DIR..."
sudo unzip -o /tmp/Phase_3.zip -d "$DEST_DIR"

echo "Hoàn thành."
