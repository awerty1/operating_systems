# В параметрах при запуске скрипта передаются три целых числа. Вывести максимальное из них.
#!/bin/bash

if [ "$#" -lt 3 ]; then
	echo "Ошибка: Пожалуйста, передайте как минимум три числа в качестве аргументов"
	echo 1
fi

max=$1

if [ $2 -gt $max ]; then
	max=$2
fi

if [ $3 -gt $max ]; then
	max=$3
fi

if [ ! -z "$max" ]; then
	echo "Максимальное число: $max"
fi
