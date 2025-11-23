# Base image (lightweight)
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Install system dependencies (ffmpeg)
RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy project files
COPY Rosie ./Rosie
COPY requirements.txt .

# Install Python dependencies
RUN python3 -m pip install --upgrade pip \
    && python3 -m pip install -r requirements.txt

# Run the bot
CMD ["python3", "Rosie"]
