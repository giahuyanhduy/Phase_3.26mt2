#!/bin/bash

# Tải tệp zip từ GitHub
curl -L -o /tmp/Phase_3.zip https://github.com/giahuyanhduy/phase/blob/main/Phase_3.zip?raw=true

# Kiểm tra xem thư mục /home/giang có tồn tại hay không
if [ -d "/home/giang" ]; then
    # Nếu tồn tại, giải nén vào /home/giang
    unzip -o /tmp/Phase_3.zip -d /home/giang/
    # Truy cập vào thư mục Phase_3
    cd /home/giang/Phase_3 || exit
else
    # Nếu không tồn tại, giải nén ra /home
    unzip -o /tmp/Phase_3.zip -d /home/
    # Truy cập vào thư mục Phase_3
    cd /home/Phase_3 || exit
fi

# Chạy lệnh npm install
#npm install

# Xóa tệp zip đã tải
rm /tmp/Phase_3.zip
