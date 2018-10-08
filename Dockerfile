FROM python:2-alpine
MAINTAINER Lukas Batteau "lukas@lift.cards"

RUN apk update && apk upgrade
RUN apk add --no-cache curl gcc g++ libffi libffi-dev openssl openssl-dev gfortran freetype-dev libpng-dev openblas-dev bash git openssh docker
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN pip install Cython==0.27.3 numpy==1.14.1; \
    pip install scipy==1.0.1; \
    pip install nltk==3.2.5 scikit-learn==0.19.1 gensim==3.6.0 pandas==0.20.1

# Download NLTK required corpora
RUN python -m nltk.downloader stopwords
RUN python -m nltk.downloader punkt

COPY vector_models /vector_models
COPY lift-data-loader-c3408895b0ce.json /google.json