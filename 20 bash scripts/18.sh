# Создать скрипт для автоматического создания отчета об использовании ресурсов системы.
#!/bin/bash

# Создание временного файла для записи отчета
report_file="/tmp/system_report_$(date +"%Y-%m-%d_%H-%M-%S").txt"

# Запись информации о системе в отчет
echo "Системный отчет - $(date)" > $report_file
echo "" >> $report_file

# Информация о загрузке процессора
echo "### Использование процессора ###" >> $report_file
top -n 1 -b | grep "Cpu(s)" >> $report_file
echo "" >> $report_file

# Информация о загрузке памяти
echo "### Использование памяти ###" >> $report_file
free -h >> $report_file
echo "" >> $report_file

# Информация о дисковом пространстве
echo "### Использование дискового пространства ###" >> $report_file
df -h >> $report_file
echo "" >> $report_file

# Информация о запущенных процессах
echo "### Запущенные процессы ###" >> $report_file
ps aux >> $report_file
echo "" >> $report_file

echo "Отчет создан: $report_file"