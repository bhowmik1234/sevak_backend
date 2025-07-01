#!/bin/bash

echo "📦 Installing dependencies"
pip install --no-cache-dir -r requirements.txt

echo "⚙️ Fetching Prisma binary"
python -m prisma py fetch || (echo "❌ Failed to fetch Prisma binary" && exit 1)

echo "⚙️ Generating Prisma client"
python -m prisma generate || (echo "❌ Failed to generate Prisma client" && exit 1)
