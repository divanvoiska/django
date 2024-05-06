FROM python:3.8
EXPOSE 8000

COPY . /site/
WORKDIR /site

RUN pip install --upgrade pip
RUN pip install django
RUN pip install gunicorn
RUN django-admin startproject my_project .

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
