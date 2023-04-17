FROM python:alpine

WORKDIR /app

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY app.py /app

EXPOSE 5000

# CMD ["python3", "app.py"]

ENTRYPOINT sh

# COPY requirements.txt /app
# RUN pip install -r requirements.txt

# FROM python

# WORKDIR /app

# COPY . /app

# RUN pip install -r requirements.txt

# RUN sh

# CMD ["flask", "run"]

# ENTRYPOINT ["python3"]

# CMD ["app.py"]


# FROM python:3.7-alpine
# WORKDIR /code

# COPY . .
# RUN python app.py