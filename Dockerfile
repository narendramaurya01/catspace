FROM python

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install gunicorn

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "SOCIAL.wsgi:application"]

EXPOSE 8000
