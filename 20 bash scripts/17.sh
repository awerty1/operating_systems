# Написать скрипт для удаления всех файлов с расширением ".tmp" в указанной папке.
#!/bin/bash

# Проверяем, что передан путь к папке как аргумент
if [ $# -ne 1 ]; then
    echo "Usage: $0 /path/to/directory"
    exit 1
fi

directory="$1"

# Проверяем, что указанная директория существует
if [ ! -d "$directory" ]; then
    echo "Указанная директория не существует."
    exit 1
fi

# Удаляем файлы с расширением ".tmp"
find "$directory" -type f -name "*.tmp" -delete

if [ $? -eq 0 ]; then
    echo "Удаление файлов с расширением .tmp завершено успешно."
else
    echo "Произошла ошибка в процессе удаления файлов."
fi

# запуск ./delete_tmp_files.sh /path/to/directory