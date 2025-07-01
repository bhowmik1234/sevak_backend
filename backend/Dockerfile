# Use official Python image with Debian + OpenSSL 3.x
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install OS dependencies
RUN apt-get update && \
    apt-get install -y build-essential curl && \
    apt-get clean

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Prisma: Fetch binaries & generate client
RUN python -m prisma py fetch
RUN python -m prisma generate

# Expose port
EXPOSE 8000

# Start FastAPI app
CMD ["uvicorn", "backend.app.main:app", "--host", "0.0.0.0", "--port", "8000"]
