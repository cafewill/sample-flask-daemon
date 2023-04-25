FROM python:3.9

WORKDIR /cube

COPY requirements.txt .
# RUN pip3 install flask 
RUN pip install --no-cache-dir -r requirements.txt

COPY . /cube

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=80"]

