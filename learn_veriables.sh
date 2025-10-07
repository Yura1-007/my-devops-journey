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
