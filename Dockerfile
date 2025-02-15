FROM python:3.9.7

WORKDIR /usr/src/application

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

CMD ["uvicorn","app.main:app","--host","0.0.0.0","--port","8000"]
