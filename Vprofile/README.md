# Vprofile Project

In this project, I containerized a simple local webapp consisting of the following services;
- a mysql database
- memcached for db caching
- rabbitmq for message queuing
- nginx for load balancing
- and the main app

## Steps I used
* First, I had to research on which base image to use for each service. For the main app I used a tomcat image.
* Then I wrote dockerfiles for the services that needed their own customization like the database, the app, and the nginx server
* I built each image using;
> docker build -t imagename:1.0 .
* I wrote a docker compose file that I used to start up all the containers and started it with
> docker compose -f docker-compose.yaml up
* Then I verified that everything was set up correctly and working as intended
I hosted the images on AWS ECR service
