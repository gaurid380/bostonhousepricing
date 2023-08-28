FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD [“gunicorn”,”-w” “4”,”app:app”,”--bind” “0.0.0.0:8000”]