# Vprofile Kubernetes Project

In this project, I took the containerized app from my previous project and set it up to run on Kubernetes.
I used Kops on AWS to setup and manage my production grade cluster
## Steps I took;
- I setup my cluster using kops. I wrote a simple [script](https://github.com/Chxnedu/Containerization-Projects/blob/main/Vprofile_Kubernetes/kops_setup.sh) to automate the setup process
- After that, I wrote deployment, secret and sevice definition files for each service in the app
- I used kubectl to create all those objects using another [script](https://github.com/Chxnedu/Containerization-Projects/blob/main/Vprofile_Kubernetes/project_setup.sh) and verified my setup at the end with the external ip I got from the app
