FROM python:3.13-slim

ENV APP_HOME=/usr/app/src

WORKDIR $APP_HOME

USER root

COPY pyproject.toml uv.lock ./

RUN pip3 install uv && uv sync --locked --no-install-project

COPY . .