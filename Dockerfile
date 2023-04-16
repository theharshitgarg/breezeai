FROM python:3.7-alpine

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD ["flask", "run"]

# ENTRYPOINT ["python3"]

# CMD ["app.py"]


# FROM python:3.7-alpine
# WORKDIR /code

# COPY . .
# RUN python app.py