# Написать скрипт для мониторинга использования дискового пространства.
#!/bin/bash

# Параметр: пороговый процент использования дискового пространства для оповещения
threshold=$1

if [ -z "$threshold" ]; then
    echo "Usage: $0 <threshold_percentage>"
    exit 1
fi

# Получаем список точек монтирования дисков
mount_points=$(df -h | awk '{print $6}' | tail -n +2)

# Проверяем использование дискового пространства для каждой точки монтирования
for mount_point in $mount_points
do
    disk_usage=$(df -h "$mount_point" | awk 'NR==2 {print $5}' | cut -d'%' -f1)
    
    if [ $disk_usage -ge $threshold ]; then
        echo "Предупреждение: Использование дискового пространства для $mount_point превышает $threshold%"
    fi
done