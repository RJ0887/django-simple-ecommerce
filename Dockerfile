FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /home/usercrc/django-simple-ecommerce

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000
STOPSIGNAL SIGINT
ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]