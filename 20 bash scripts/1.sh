# Создать скрипт, который приветствует пользователя по имени.
#!/bin/bash

# Запрашиваем у пользователя его имя
echo "Привет! Как тебя зовут?"
read username

# Проверяем, было ли введено имя пользователя
if [ -z "$username" ]; then
    echo "Кажется, ты забыл ввести свое имя. Давай попробуем снова!"
else
    # Выводим приветствие с именем пользователя
    echo "Привет, $username! Рад приветствовать тебя!"
fi