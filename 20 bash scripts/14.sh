# Создать скрипт для резкой отправки уведомлений по электронной почте.
#!/bin/bash

recipient="user@example.com"
subject="Уведомление"
body="Пример текста уведомления."

sendmail -t <<EOF
To: $recipient
Subject: $subject

$body
EOF

echo "Уведомление отправлено по электронной почте на адрес $recipient."

# для работы нужен sendmail