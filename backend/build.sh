#!/bin/bash

echo "🛠️ Installing dependencies..."
pip install --no-cache-dir -r requirements.txt

echo "⚙️ Generating Prisma client..."
python -m prisma generate
