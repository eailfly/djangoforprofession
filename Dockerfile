# Base image
FROM python:latest

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PIPENV_PYPI_MIRROR "https://pypi.tuna.tsinghua.edu.cn/simple"

# Set work directory
WORKDIR /code

# Copy project
COPY . /code

# Install dependencies
RUN pip install pipenv && pipenv install --system
