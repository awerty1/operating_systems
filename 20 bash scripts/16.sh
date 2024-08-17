# Создать скрипт для архивирования нескольких файлов в один архив.
#!/bin/bash

# Проверяем, что переданы аргументы
if [ $# -eq 0 ]; then
    echo "Usage: $0 file1 file2 file3 ..."
    exit 1
fi

# Имя архива
archive="my_archive.tar.gz"

# Создаем архив
tar -czvf $archive "$@"

if [ $? -eq 0 ]; then
    echo "Архивация успешно завершена. Архив создан: $archive"
else
    echo "Произошла ошибка во время архивации."
fi

# запуск ./create_archive.sh file1.txt file2.txt file3.txt