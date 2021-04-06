FROM python:3.9-slim

ENV LC_ALL=C.UTF-8 LANG=C.UTF-8

RUN apt update
RUN apt install -y git

RUN pip install --upgrade pip
RUN pip install poetry

# コンテナ内で仮想環境の作成を無効
RUN poetry config virtualenvs.create false
RUN poetry config virtualenvs.in-project true