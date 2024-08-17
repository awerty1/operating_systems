# Написать скрипт для поиска и замены определенного текста в нескольких файлах.
#!/bin/bash

# Укажите путь к папке и расширение файлов, которые нужно обработать
directory="/path/to/files"
file_extension=".txt"

# Укажите текст для поиска и замены
search_text="старый_текст"
replace_text="новый_текст"

# Находим и заменяем текст в файлах
for file in "$directory"/*"$file_extension"; do
    if [ -f "$file" ]; then
        echo "Обработка файла: $file"
        sed -i "s/$search_text/$replace_text/g" "$file"
        echo "Замена текста выполнена."
    fi
done
