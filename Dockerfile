FROM python:3.14-slim
WORKDIR /app
COPY helloworld.py /app
CMD ["python", "helloworld.py"]