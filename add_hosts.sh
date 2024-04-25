#!/bin/bash

ip_address=$(hostname -I | awk '{print $1}')

if [ -z "$ip_address" ]; then
    echo "Не удалось извлечь IP-адрес."
    exit 1
fi

echo "$ip_address flask" | sudo tee -a /etc/hosts > /dev/null
echo "Запись успешно добавлена в /etc/hosts."

