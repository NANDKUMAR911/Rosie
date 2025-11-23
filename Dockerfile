# Base image (lightweight)
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy project files
COPY Rosie ./Rosie
COPY requirements.txt .
COPY cookies.txt ./cookies.txt   

# Install Python dependencies
RUN python3 -m pip install --upgrade pip \
    && python3 -m pip install -r requirements.txt

# Run the bot
CMD ["python3", "Rosie/Rosie"]  