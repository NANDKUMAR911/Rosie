# ---- Copy project to /app ----
COPY . /app

# ---- Install Python dependencies ----
RUN python3 -m pip install --upgrade pip \
    && python3 -m pip install -r /app/requirements.txt

# ---- Start project ----
CMD ["python3", "/app/Rosie"]