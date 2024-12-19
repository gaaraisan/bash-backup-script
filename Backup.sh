#!/bin/bash

# Шлях до директорії, яку потрібно бекапити
SOURCE_DIR="/path/to/your/directory"

# Шлях для збереження бекапів
BACKUP_DIR="/path/to/backup/location"

# Отримуємо поточну дату у форматі YYYY-MM-DD
CURRENT_DATE=$(date +"%Y-%m-%d")

# Назва файлу бекапу
BACKUP_NAME="backup_${CURRENT_DATE}.tar.gz"

# Створюємо архів та стискаємо його
echo "Починаємо створення бекапу..."
tar -czf "${BACKUP_DIR}/${BACKUP_NAME}" -C "${SOURCE_DIR}" .
if [ $? -eq 0 ]; then
    echo "Бекап створено: ${BACKUP_DIR}/${BACKUP_NAME}"
else
    echo "Помилка під час створення бекапу!"
    exit 1
fi