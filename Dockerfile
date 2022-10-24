FROM python:3.8.10
LABEL maintainer="ffoctopus@gmail.com"

ENV PYTHONUNBUFFERED 1

COPY ./first_approval_back /first_approval_back
COPY ./apps /apps
COPY ./templates /templates
COPY ./manage.py /manage.py
COPY ./requirements.txt /requirements.txt

WORKDIR /
EXPOSE 8000

RUN python -m venv /.venv && \
    /.venv/bin/pip install --upgrade pip && \
    /.venv/bin/pip install -r /requirements.txt && \
    adduser --disabled-password --no-create-home app

ENV PATH="/.venv/bin:$PATH"

USER app