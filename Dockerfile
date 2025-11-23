COPY . /app
RUN python3 -m pip install --upgrade pip && python3 -m pip install -r /app/requirements.txt
CMD ["python3", "/app/Rosie"]