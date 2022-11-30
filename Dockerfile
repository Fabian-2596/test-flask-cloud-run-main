FROM python:3.10-alpine
COPY ./requirements.txt /test-flask-cloud-run-main/requirements.txt
WORKDIR /test-flask-cloud-run-main
RUN pip install -r requirements.txt
COPY . /test-flask-cloud-run-main
ENTRYPOINT [ "python" ]
CMD ["hello.py" ]
