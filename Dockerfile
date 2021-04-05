FROM python:3.7.10

WORKDIR /src/
COPY . /src/

# Cache this
RUN apt-get update
RUN pip install --upgrade pip pipenv

RUN pipenv install --system --dev --ignore-pipfile

COPY .pypirc /root/.pypirc

ENTRYPOINT ["./run.sh"]
CMD [""]
