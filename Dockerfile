FROM python:3.10.12
#https://hub.docker.com/_/python

LABEL maintainer="IoTechCrafts OU"

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME

COPY . ./

# RUN apt-get update && apt-get install -y \
#     build-essential \
#     curl \
#     software-properties-common \
#     git \
#     && rm -rf /var/lib/apt/lists/*

# Install production dependencies.
RUN pip install -r requirements.txt


EXPOSE 7860
