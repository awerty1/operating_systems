# Написать скрипт для копирования файла из одной папки в другую.
#!/bin/bash

# Путь к исходному файлу
source_file="path/to/source/file.txt"

# Путь к папке, куда нужно скопировать файл
destination_folder="path/to/destination/folder/"

# Копирование файла
cp "$source_file" "$destination_folder"
echo "Файл скопирован в $destination_folder"