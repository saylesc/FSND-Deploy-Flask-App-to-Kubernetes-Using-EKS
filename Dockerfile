FROM python:stretch

COPY . /usr/local/k8sFlaskApp

WORKDIR /usr/local/k8sFlaskApp

RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
