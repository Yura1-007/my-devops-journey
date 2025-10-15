#!/bin/bash
# Скрипт быстрого бэкапа проектов

echo "=== БЫСТРЫЙ БЭКАП ==="
echo "Дата: $(date +"%d.%m.%Y %H:%M")"

# Создаем папку для бэкапа с timestamp
backup_dir="backups/backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$backup_dir"

# Копируем все важные файлы
echo "📁 Копирую файлы..."
cp *.sh "$backup_dir/" 2>/dev/null
cp *.py "$backup_dir/" 2>/dev/null
cp *.txt "$backup_dir/" 2>/dev/null
cp *.md "$backup_dir/" 2>/dev/null

# Проверяем что скопировалось
file_count=$(find "$backup_dir" -type f | wc -l)

echo " Бэкап создан: $backup_dir"
echo " Файлов сохранено: $file_count"

# Показываем размер бэкапа
du -sh "$backup_dir"
