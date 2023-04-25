FROM python:3.10-slim

WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
COPY docker_config.py config.py

CMD flask run -h 0.0.0.0 -p 80