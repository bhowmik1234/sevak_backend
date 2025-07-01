#!/bin/bash

echo "📦 Installing Prisma query engine binary..."
poetry run prisma py fetch || prisma py fetch
