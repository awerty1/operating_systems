# В параметрах скрипта передаются две строки. Вывести сообщение о равенстве или неравенстве переданных строк
#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Ошибка: Пожалуйста, передайте две строки в качестве аргументов"
	exit 1
fi

if [ "$1" = "$2" ]; then
	echo "Переданные строки равны"
else
	echo "Переданные строки не равны"
fi
