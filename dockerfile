# syntax=docker/dockerfile:1
FROM python:latest
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY ./code /code/
WORKDIR /code/
# CMD gunicorn app.wsgi 0.0.0.0:3000  --workers 2
# --keep-alive 10 --access-logfile '-' --error-logfile '-'