# Use Python 3.11 slim image as base
FROM python:3.12.11-slim

# Set working directory
WORKDIR /app

# RUN apt-get update && apt-get install -y \
#     libgl1-mesa-glx \
#     libglib2.0-0 \
#     libgomp1 \
#     && rm -rf /var/lib/apt/lists/*

# Copy requirements file
COPY requirements.txt .

ENV PYTHONUNBUFFERED=true

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .