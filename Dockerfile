FROM python:3

ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY . /code/
RUN pip install -r requirements.txt
EXPOSE 8000/tcp
CMD python src/profiles_project/manage.py runserver 0.0.0.0:8000


