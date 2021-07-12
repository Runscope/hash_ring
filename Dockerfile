FROM gcr.io/runscope-228819/py-service-builder-base:1.0.6 AS builder
WORKDIR /usr/src
COPY . .
RUN python setup.py test install sdist
ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1
RUN pip install twine \
    && twine upload --config-file=./.pypirc -r pypi-runscope dist/*.tar.gz
