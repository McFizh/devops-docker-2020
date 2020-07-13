docker build -t backend:latest .
docker run -v $(pwd)/logs.txt:/service/logs.txt -p 8000:8000 backend:latest
