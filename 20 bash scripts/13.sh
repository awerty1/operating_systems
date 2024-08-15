# Написать скрипт для автоматической установки определенного приложения или пакета.
#!/bin/bash

# Указываем название пакета или приложения для установки
package_name="название_пакета"

# Проверяем, установлен ли уже пакет
if dpkg -s "$package_name" &> /dev/null; then
    echo "Пакет $package_name уже установлен."
else
    # Установка пакета
    sudo apt update
    sudo apt install $package_name -y

    # Проверяем успешность установки
    if [ $? -eq 0 ]; then
        echo "Пакет $package_name успешно установлен."
    else
        echo "Ошибка при установке пакета $package_name."
    fi
fi
