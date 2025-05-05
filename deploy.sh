#!/bin/bash

echo "🔍 Поиск JAR-файла в папке target/..."

JAR_FILE=$(find target -type f -name "*.jar" | head -n 1)

if [[ -z "$JAR_FILE" ]]; then
  echo "❌ JAR-файл не найден."
  exit 1
fi

FILE_SIZE=$(du -h "$JAR_FILE" | cut -f1)

echo "✅ Найден файл: $JAR_FILE"
echo "📏 Размер: $FILE_SIZE"
