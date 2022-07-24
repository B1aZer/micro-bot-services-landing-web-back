FROM python:2.7

WORKDIR /app

COPY ["requirements.txt", "./"]

RUN pip install -r requirements.txt

COPY . .

#RUN chmod 777 /app/start.sh