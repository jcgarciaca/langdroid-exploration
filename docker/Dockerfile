FROM python:3.11

RUN python3 -m pip install -U pip

RUN apt-get update \
    && apt-get install -y nano screen \
    && apt-get autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir pandas matplotlib jupyterlab tqdm "langroid[all]"

WORKDIR /home