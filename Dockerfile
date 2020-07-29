FROM python:3.7-slim-buster
COPY ./textplotrepo/requirements.txt /app/textplotrepo/requirements.txt
RUN pip install -r /app/textplotrepo/requirements.txt
COPY . /app
WORKDIR /app/textplotrepo/
RUN  python /app/textplotrepo/setup.py install
WORKDIR /app/
CMD ["python", "/app/main.py"]
