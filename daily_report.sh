#!/bin/bash
# Ежедневный отчёт для GitHub

echo "ЕЖЕДНЕВНЫЙ ОТЧЁТ - $(date +"%d.%m.%Y")"
echo "======================================"

# Статистика коммитов
echo " СТАТИСТИКА GIT:"
commits_today=$(git log --oneline --since="today" 2>/dev/null | wc -l)
commits_total=$(git log --oneline 2>/dev/null | wc -l)

echo "Коммитов сегодня: $commits_today"
echo "Всего коммитов: $commits_total"

# Статистика файлов
echo ""
echo "СТАТИСТИКА ПРОЕКТА:"
sh_files=$(find . -maxdepth 1 -name "*.sh" | wc -l)
py_files=$(find . -maxdepth 1 -name "*.py" | wc -l)
backup_files=$(find backups -name "*.sh" 2>/dev/null | wc -l)

echo "Bash-скриптов: $sh_files"
echo "Python-скриптов: $py_files"
echo "Файлов в бэкапах: $backup_files"

# Цель на завтра
echo ""
echo "ЦЕЛЬ НА ЗАВТРА:"
echo "• Изучить условия if-else в Python"
echo "• Создать первый Python-скрипт с логикой"
echo "• Сделать 2+ коммита на GitHub"

echo ""
echo " ВСЕГО ДОБРОГО И ХОРОШЕГО ДНЯ! "
