FROM python:3.8-alpine
LABEL maintainer=TittyTwister
RUN apk update && apk add postgresql-dev gcc musl-dev libffi-dev py3-cffi
COPY requirements.txt /app/
WORKDIR /app
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
COPY . /app
CMD ["python3", "-m", "tg_bot"]
