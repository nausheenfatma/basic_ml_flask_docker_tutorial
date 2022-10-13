
FROM python:3.8-slim-buster

WORKDIR /home/nausheenfatma/tutorials/ml_flask_docker
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .

CMD [ "flask", "run"]