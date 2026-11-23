#!/bin/bash

echo "--- Khởi chạy Course-Service (Mock) ---"

# Kiểm tra xem container đã tồn tại chưa, nếu có thì xóa đi để tạo mới
if [ "$(docker ps -aq -f name=rikkei-course-service)" ]; then
    echo "Phát hiện container cũ. Đang dọn dẹp..."
    docker rm -f rikkei-course-service
fi

# Khởi chạy container
echo "Đang tải image và khởi chạy container..."
docker run -d \
  --name rikkei-course-service \
  -p 8081:80 \
  nginxdemos/hello

echo "--- Khởi chạy hoàn tất ---"
echo "Bạn có thể kiểm tra bằng lệnh: docker ps"
echo "Hoặc truy cập: http://localhost:8081"
