FROM python:2

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

ADD . .

ENTRYPOINT ["python", "-m"]
