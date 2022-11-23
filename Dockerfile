FROM python:3.11

RUN useradd -m -d /home/dev-user -s /bin/bash dev-user
USER dev-user
WORKDIR /home/dev-user
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r /home/dev-user/requirements.txt
