FROM python:3.10-alpine

WORKDIR /usr/src/app

EXPOSE 5001

RUN pip install poetry && addgroup app && adduser -S -G app app

COPY . .

RUN chown -R app:app .

USER app

RUN poetry install --no-root

CMD poetry run python3 src/index.py
