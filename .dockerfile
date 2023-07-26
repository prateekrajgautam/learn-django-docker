FROM ubuntu

LABEL name="localdjango"
LABEL author="prateek"
RUN apt update -y
RUN apt install -y python3
RUN apt install -y python3-pip
RUN pip3 install django
RUN pip3 install pytz tzdata
WORKDIR /home/app
# VOLUME /app

# RUN django-admin startproject mysite
# RUN python3 manage.py startapp myapp


# CMD ["python3", "manage.py", "runserver"]
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000", "--noreload"]