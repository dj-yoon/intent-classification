FROM mcr.microsoft.com/devcontainers/python:3.11-bookworm
LABEL maintainer="alchemine <djyoon0223@gmail.com>"

ENV PROJECT_ROOT=/app
ENV POETRY_VERSION=1.8.2

RUN pipx install poetry
COPY poetry.lock pyproject.toml ./
RUN poetry install --no-interaction --no-ansi
