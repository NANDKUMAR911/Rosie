# ---- Base Image ----
FROM python:3.11-slim

# ---- Environment ----
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# ---- Work directory ----
WORKDIR /app

# ---- Copy requirements ----
COPY requirements.txt .

# ---- Install Python dependencies ----
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# ---- Copy project ----
COPY . .

# ---- Start ----
CMD ["python3", "Rosie"]