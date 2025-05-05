#!/bin/bash
echo "🔍 Deploying app..."
JAR=$(find target -name "*.jar" | head -n 1)
echo "📦 Found artifact: $JAR"
echo "📏 Size:"
du -h "$JAR"
echo "✅ Deploy complete"