FROM jupyter/r-notebook:python-3.10

USER root

WORKDIR /home/jovyan/work

COPY ./ ./

RUN pip install --upgrade pip \
    && pip install --upgrade setuptools
RUN pip install -r requirements.txt
