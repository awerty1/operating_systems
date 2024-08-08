# Написать скрипт, который проверяет доступность определенного веб-сайта.
#!/bin/bash

website="https://www.example.com"
timeout=10

if curl --output /dev/null --silent --head --fail --max-time $timeout "$website"; then
    echo "Сайт $website доступен"
else
    echo "Сайт $website недоступен"
fi
