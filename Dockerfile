# Dockerfile - this is a comment. Delete me if you want.
FROM python:3.7-alpine

ADD . /app

WORKDIR /app

RUN apk --update --upgrade add --no-cache  gcc musl-dev jpeg-dev zlib-dev libffi-dev cairo-dev pango-dev gdk-pixbuf-dev

RUN python -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD [ "python", "app.py" ]

# 
# Set base image (host OS)
# FROM python:3.8-alpine

# # By default, listen on port 5000
# EXPOSE 5000/tcp

# # Set the working directory in the container
# WORKDIR /app

# # Copy the dependencies file to the working directory
# COPY requirements.txt .

# # Install any dependencies
# RUN pip install -r requirements.txt

# # Copy the content of the local src directory to the working directory
# COPY app.py .

# # Specify the command to run on container start
# CMD [ "python", "./app.py" ]