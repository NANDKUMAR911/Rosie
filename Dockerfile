# ---- Base image ----
FROM python:3.11-slim

# ---- Set working directory ----
WORKDIR /app

# ---- Copy project files ----
COPY . .

# ---- Upgrade pip and install Python dependencies ----
RUN python3 -m pip install --upgrade pip \
    && python3 -m pip install -r requirements.txt

# ---- Start the project ----
CMD ["python3", "Rosie"]