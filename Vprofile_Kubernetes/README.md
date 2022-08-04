# Vprofile Kubernetes Project

In this project, I took the containerized app from my [previous project](https://github.com/Chxnedu/Containerization-Projects/tree/main/Vprofile_Docker) and set it up to run on Kubernetes.
I used Kops on AWS to setup and manage my mini production grade k8s cluster
## Steps I took;
- I setup my cluster using kops. I wrote a simple [script](https://github.com/Chxnedu/Containerization-Projects/blob/main/Vprofile_Kubernetes/kops_setup.sh) to automate the setup process
- After that, I wrote deployment, secret and sevice definition files for each service in the application;
1. [Vproapp](https://github.com/Chxnedu/Containerization-Projects/blob/main/Vprofile_Kubernetes/vproappdep.yaml), the main app
2. [Vprodb](https://github.com/Chxnedu/Containerization-Projects/blob/main/Vprofile_Kubernetes/vprodbdep.yaml), the database 
3. [Rabbitmq](https://github.com/Chxnedu/Containerization-Projects/blob/main/Vprofile_Kubernetes/rmqdep.yaml), for message queuing
4. [Memcached](https://github.com/Chxnedu/Containerization-Projects/blob/main/Vprofile_Kubernetes/mcdep.yaml), for db caching
- I used kubectl to create all those objects using another [script](https://github.com/Chxnedu/Containerization-Projects/blob/main/Vprofile_Kubernetes/project_setup.sh) and verified my setup at the end with the external ip I got from the app
