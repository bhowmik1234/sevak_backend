#!/bin/bash

echo "🛠️ Installing dependencies..."
pip install --no-cache-dir -r requirements.txt

echo "📦 Fetching Prisma query engine binary..."
python -m prisma py fetch

echo "⚙️ Generating Prisma client..."
python -m prisma generate
