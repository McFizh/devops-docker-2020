docker build -t frontend:latest .
docker run -p 5000:5000 frontend:latest

docker build -t backend:latest .
docker run -v $(pwd)/logs.txt:/service/logs.txt -p 8000:8000 backend:latest
