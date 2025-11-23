FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY Rosie ./Rosie
COPY requirements.txt .
COPY cookies.txt ./cookies.txt   # <-- explicitly copy cookies.txt to container root /app

# Install dependencies
RUN python3 -m pip install --upgrade pip \
    && python3 -m pip install -r requirements.txt

# Run the bot
CMD ["python3", "Rosie/Rosie"]  # adjust path if main script is Rosie/__main__.py