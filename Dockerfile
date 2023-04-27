FROM python:3.10-slim

WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY default_config.py config.py
COPY app.py .

CMD flask run -h 0.0.0.0 -p 80