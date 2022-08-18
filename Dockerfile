FROM python:3.9
ENV PYTHONUNBUFFERED=1
WORKDIR /app
ADD . /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

# RUN chmod +x /app/entrypoint.sh
# RUN chmod +x /app/media


# CMD ["/app/entrypoint.sh"]