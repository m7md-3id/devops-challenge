FROM python:3.12-alpine

WORKDIR /app

COPY ./src/* /app/

RUN pip install -r requirements.txt

EXPOSE 8888

CMD [ "gunicorn", "--bind", "0.0.0.0:8888", "wsgi:app" ]