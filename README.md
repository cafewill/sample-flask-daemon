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

Step #3 Docker run and connect localhost:5000 or localhost:8282

    sudo docker run -p 5000:80 flask-daemon
    sudo docker run -p 8282:80 flask-daemon
    
    sudo docker ps
    sudo docker logs -f [container id]

## See Also

* https://github.com/cafewill/sample-node-daemon
* https://github.com/cafewill/sample-flask-daemon
* https://github.com/cafewill/sample-spring-daemon
