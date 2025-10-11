#!/bin/bash
# Мой учебный скрипт по переменным Bash
# Дата создания: $(date)

echo "НАЧАЛО РАБОТЫ С ПЕРЕМЕННЫМИ"
echo "================================="

#1. ПРОСТЫЕ ПЕРЕМЕННЫЕ
MY_NAME="Юра"
MY_SKILL="DevOps"
TRAINING_DAY="День-1"

#2. ПЕРЕМЕННЫЕ С КОМАНДАМИ LINUX
CURRENT_USER=$(whoami)
CURRENT_DIR=$(pwd)
CURRENT_DATE=$(date +%d.%m.%Y)
CURRENT_TIME=$(date +%H.%M.%S)

#3. ЧИСЛОВЫЕ ПЕРЕМЕННЫЕ
AGE=33
FILE_COUNT=10
SCRIPT_SIZE=256

#4. ПЕРЕМЕННЫЕ С РЕАЛЬНЫМИ ДАННЫМИ
REAL_FILE_COUNT=$(ls | wc -l)
REAL_SCRIPT_SIZE=$(wc -c  <learn_veriables.sh)

echo "Личная информация" 
echo "Имя: $MY_NAME"
echo "Навык: $MY_SKILL"
echo "День обучения: $TRAINING_DAY"
echo "Возраст: $AGE лет"

echo ""
echo "Системная информация:"
echo "Пользователь: $CURRENT_USER"
echo "Текущая папка: $CURRENT_DIR"
echo "Дата: $CURRENT_DATE"
echo "Время: $CURRENT_TIME"

echo ""
echo "Статистика:"
echo "Количество файлов для создания: $FILE_COUNT"
echo "Размер скрипта: $SCRIPT_SIZE байт"

echo ""
echo "=== Твой прогресс === "
echo "Сегодня: $(date +"%d.%m.%Y")"
echo "Ты изучил: переменные Bash, Git, Linux"
echo "Ты создал: $REAL_FILE_COUNT файлов в этой папке"
echo "Каждый шаг - это достижение!"

echo ""
echo "=== МЕСТО НА ДИСКЕ ==="
df -h /home | tail -1 | awk '{print "Свободно: "$4 " из " $2}'



#!/bin/bash
#  УЛУЧШЕННЫЙ СКРИПТ С УСЛОВИЯМИ И БЭКАПАМИ

echo "=== УЛУЧШЕННЫЙ СКРИПТ BASH ==="
echo "Дата: $(date +"%d.%m.%Y %H:%M")"
echo "=================================="

# 1. ПЕРЕМЕННЫЕ (повторение)
NAME="Юра"
SKILL="DevOps"
CURRENT_USER=$(whoami)
CURRENT_DIR=$(pwd)

echo "Личная информация:"
echo "Имя: $NAME"
echo "Навык: $SKILL"
echo "Пользователь: $CURRENT_USER"
echo "Директория: $CURRENT_DIR"

# 2. ПРОВЕРКА СВОБОДНОГО МЕСТА С УСЛОВИЕМ
echo ""
echo " ПРОВЕРКА ДИСКА:"
free_space_gb=$(df -h / | awk 'NR==2 {print $4}' | sed 's/G//')

if [ "$free_space_gb" -lt 10 ]; then
    echo "❌ КРИТИЧЕСКИ МАЛО МЕСТА: ${free_space_gb}G"
    echo "   Рекомендуется очистить диск!"
elif [ "$free_space_gb" -lt 20 ]; then
    echo "  МАЛОВАТО МЕСТА: ${free_space_gb}G"
    echo "   Стоит задуматься об очистке"
else
    echo " МЕСТА ДОСТАТОЧНО: ${free_space_gb}G"
    echo "   Отлично! Можно продолжать работу!"
fi

# 3. АВТОМАТИЧЕСКИЙ БЭКАП СКРИПТА
echo ""
echo " СОЗДАНИЕ БЭКАПА:"
backup_dir="backups"
mkdir -p $backup_dir
backup_file="$backup_dir/learn_variables_$(date +%Y%m%d_%H%M%S).sh"

cp learn_veriables.sh "$backup_file"
echo "Создан бэкап: $backup_file"

# 4. ИНФОРМАЦИЯ О ПРОЕКТЕ
echo ""
echo " СТАТИСТИКА ПРОЕКТА:"
file_count=$(find . -maxdepth 1 -type f -name "*.sh" -o -name "*.py" | wc -l)
backup_count=$(find $backup_dir -type f 2>/dev/null | wc -l)

echo "Скриптов в проекте: $file_count"
echo "Бэкапов создано: $backup_count"
echo ""
echo " СКРИПТ УСПЕШНО ВЫПОЛНЕН! "
