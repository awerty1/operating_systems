# Создать скрипт, который конвертирует все файлы в папке из одного формата в другой.
#!/bin/bash

# Параметры: папка с исходными файлами и папка для конвертации
input_dir=$1
output_dir=$2

if [ -z "$input_dir" ] || [ -z "$output_dir" ]; then
    echo "Usage: $0 <input_directory> <output_directory>"
    exit 1
fi

if [ ! -d "$input_dir" ] || [ ! -d "$output_dir" ]; then
    echo "Error: Input or output directory does not exist."
    exit 1
fi

# Перекодирование файлов
for file in "$input_dir"/*
do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        output_file="$output_dir/${filename%.*}.avi"  # меняем формат на avi

        ffmpeg -i "$file" "$output_file"  # конвертируем файл
        echo "Конвертирован файл: $filename"
    fi
done

echo "Конвертация завершена!"


# запуск ./convert_files.sh /путь/к/исходной_папке /путь/к/папке_для_конвертации