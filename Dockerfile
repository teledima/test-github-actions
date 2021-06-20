FROM python:3.9-alpine
WORKDIR /
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
ENV PORT 5000
CMD ["gunicorn", "-b", "0.0.0.0:5000", "main:app"]
