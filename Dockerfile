# base image
FROM python:3.10.5-alpine
# setup environment variable
ENV APP_HOME=/app

# set work directory
RUN mkdir -p $APP_HOME

# where your code lives
WORKDIR $APP_HOME

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip

# copy whole project to your docker home directory.
COPY . $APP_HOME
# run this command to install all dependencies
RUN pip install -r requirements.txt

# project setup
RUN python manage.py migrate # migrate the database

# port where the Django app runs
EXPOSE 8000
# start server
CMD python manage.py runserver 0.0.0.0:8000