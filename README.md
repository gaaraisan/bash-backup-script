Налаштування запуску кожні 24 години о 12:00
Відкрийте редактор для планування задач (Cron): crontab -e
Додайте правило для запуску скрипта: 0 12 * * * /bin/bash /path/to/backup_script.sh
Зберігаємо данні та закриваємо

Якщо сервер не налаштований на час UTC+2, встановіть таймзону: в терміналі
sudo timedatectl set-timezone Europe/Kiev


Шляхи: Змініть /path/to/your/directory та /path/to/backup/location на реальні шляхи.
Перевірка: Після налаштування запустіть скрипт вручну, щоб переконатися, що він працює.
