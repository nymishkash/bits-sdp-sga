FROM python:3.11-slim
WORKDIR /app
COPY app/ /app/
COPY web/ /app/web/
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD ["python", "app.py"]
