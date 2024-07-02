FROM python:3.10

RUN pip install explainerdashboard

COPY app/dashboard.py ./
COPY app/app.py ./

RUN python app/dashboard.py

EXPOSE 9050
CMD ["python", "./app/app.py"]