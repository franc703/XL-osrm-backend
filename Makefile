.PHONY: build run deploy all

build:
	docker build -t xlarge-osrm-backend .

run:
	docker run -d -p 8080:8080 xlarge-osrm-backend

deploy:
	aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 231050005521.dkr.ecr.us-east-2.amazonaws.com
	docker build -t xlarge-osrm-backend .
	docker tag xlarge-osrm-backend:latest 231050005521.dkr.ecr.us-east-2.amazonaws.com/xlarge-osrm-backend:latest
	docker push 231050005521.dkr.ecr.us-east-2.amazonaws.com/xlarge-osrm-backend:latest

all: build run deploy
