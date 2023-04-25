Simple Flask Daemon 

Step #1 code app.py

Step #2 Dockerfile

    FROM python:3.9
    WORKDIR /cube
    COPY requirements.txt .
    # RUN pip3 install flask 
    RUN pip install --no-cache-dir -r requirements.txt
    COPY . /cube
    CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=80"]

Step #3 Docker build

    sudo docker build -t flask-daemon .

Step #3 Docker run

    sudo docker run -p 5000:80 flask-daemon
    sudo docker run -p 8282:80 flask-daemon

## See Also

* https://github.com/cafewill/spring-daemon-devel
* https://github.com/cafewill/node-daemon-devel
* https://github.com/cafewill/flask-daemon-devel
* https://github.com/cafewill/fastapi-daemon-devel

* https://github.com/cafewill/simple-crud-gradle-jpa-h2-thymeleaf
* https://github.com/cafewill/simple-crud-maven-jpa-h2-freemarker
