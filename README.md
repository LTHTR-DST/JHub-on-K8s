# JHub_on_K8s
JupyterHub on K8s on AKS vai Terraform

The concept here is to deploy a generic instance of Azure Kubernetes Service, with an automated install of Jupyter Hub, which can be customised by using Helm charts. 

This repo is to maintain the base terraform code for the cluster and the Jupyterhub deployment. The Helm charts can be stored in here, or possibly externally.

v 0.1 basic deployment of AKS + setting up TF deployment from Git Actions with a Service Principle as a parameter to the Workflow (hopefully)
