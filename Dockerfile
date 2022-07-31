from python:3.8

copy ./techtrends/ /app

workdir /app

expose 3111

run pip3 install -r ./requirements.txt

cmd ["python3", "init_db.py"]

cmd ["python3", "app.py"]