# Написать скрипт для мониторинга активности пользователей в системе
#!/bin/bash

# Путь к файлу для записи активности пользователей
activity_log="/var/log/user_activity.log"

# Функция для записи активности пользователя
log_user_activity() {
    echo "$(date): Пользователь $USER выполнил действие: $1" >> $activity_log
}

# Мониторинг активности пользователя
while true; do
    current_user=$(who | awk '{print $1}')
    if [ ! -z "$current_user" ]; then
        if [ "$current_user" != "$prev_user" ]; then
            log_user_activity "Вход в систему"
            prev_user=$current_user
        fi

        read -t 5 -p "[$current_user] Введите действие (например, команду): " user_action

        if [ ! -z "$user_action" ]; then
            log_user_activity "$user_action"
        fi
    else
        if [ ! -z "$prev_user" ]; then
            log_user_activity "Выход из системы"
            prev_user=""
        fi
    fi
done