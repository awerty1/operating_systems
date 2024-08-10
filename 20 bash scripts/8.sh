# Создать скрипт для резкой генерации случайного пароля заданной длины.
#!/bin/bash

# Параметр: длина пароля
password_length=$1

if [ -z "$password_length" ]; then
    echo "Usage: $0 <password_length>"
    exit 1
fi

# Генерация случайного пароля заданной длины
password=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c$password_length)

echo "Случайный пароль длиной $password_length: $password"