# 🚀 My OpenStreetMap Route Optimization with OSRM and AWS 🗺️

Hello! Welcome to my repository! I've built an efficient system using OpenStreetMap, OSRM, and AWS to create an optimized routing solution. In this repository, you'll find a Dockerfile for setting up the OSRM backend and a Makefile for automating the process. I deploy my application using AWS App Runner and use it with the OSRM package in R for all my geospatial needs.

## 🐳 Dockerfile

The Dockerfile in this repo is designed by me to create a Docker image with the OSRM backend. This image is based on the official `osrm/osrm-backend` image and includes the OSRM tools necessary for setting up a routing engine. I also download and prepare map data for the state of Minnesota.

## 🛠️ Makefile

The Makefile in this repository automates the process of building my Docker image and running my Docker container. Simply running `make all` gets everything up in the Elastict Container Registry!

## ☁️ AWS App Runner

I use AWS App Runner to automatically build and deploy my application in a fully managed environment. App Runner connects directly to my ECR, and deploys an application that's accessible via a public endpoint.

## 📊 Using with R

Once my application is up and running, I can use it with the OSRM package in R. This package provides an interface to the OSRM API, allowing me to perform tasks such as calculating driving distances and times, generating routes, and creating isochrones.

## 🚀 Deployment Steps

1. 🏗️ **Build the Docker Image**: I run `make build` to build the Docker image using the Dockerfile in this repo.

2. 🚀 **Run the Docker Container**: I run `make run` to start the Docker container. This launches the OSRM backend and starts processing requests.

3. ☁️ **Deploy to AWS App Runner**: I follow the instructions in the AWS App Runner documentation to deploy my application. I connect App Runner to my ECR, and start a new service.

4. 📊 **Use with R**: Once my application is deployed and the OSRM backend is running, I can use the OSRM package in R to interact with it. See the OSRM R package documentation for more details.
