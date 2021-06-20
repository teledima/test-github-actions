FROM python:3.9-alpine
WORKDIR /
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
ENV PORT 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
