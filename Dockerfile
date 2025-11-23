# ---- Set working directory ----
WORKDIR /app

# ---- Copy project ----
COPY . .

# ---- Install Python dependencies ----
RUN python3 -m pip install --upgrade pip \
    && python3 -m pip install -r requirements.txt

# ---- Start project ----
CMD ["python3", "Rosie"]