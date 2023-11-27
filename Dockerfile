FROM python:3.11
ENV PORT 8080
WORKDIR /
COPY requirements.txt .
ENV GOOGLE_APPLICATION_CREDENTIALS="/app/application_default_credenciales.JSON"
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8080
CMD [ "python", "app.py" ]
