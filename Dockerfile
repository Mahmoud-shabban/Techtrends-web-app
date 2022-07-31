FROM python:3.8
LABEL maintainer="mahmoud shaban"

COPY ./techtrends/ /app
WORKDIR /app
EXPOSE  3111
RUN python3 -m pip install -r requirements.txt
RUN python3 init_db.py

CMD [ "python3", "./app.py" ]