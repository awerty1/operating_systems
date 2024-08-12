# Написать скрипт, который отслеживает изменения в определенной папке и записывает их в лог-файл.
#!/bin/bash

# Путь к отслеживаемой папке
dir_to_watch="/путь/к/папке"

# Путь к лог-файлу
log_file="/путь/к/логу.log"

# Создаем лог-файл, если его нет
touch $log_file

# Отслеживаем изменения в папке
inotifywait -m -r -e modify,create,delete $dir_to_watch | while read path action file
do
    # Записываем изменения в лог
    echo "Изменение: $action в файле $file в папке $path" >> $log_file
done