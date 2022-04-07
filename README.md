# **Provisioning a Kubernetes cluster on Amazon EKS**
## Providing Airflow and Superset

[![Build Status](https://github.com/cotes2020/jekyll-theme-chirpy/workflows/build/badge.svg?branch=master&event=push)](https://github.com/cotes2020/jekyll-theme-chirpy/actions?query=branch%3Amaster+event%3Apush)
[![GitHub license](https://img.shields.io/github/license/cotes2020/jekyll-theme-chirpy.svg)](https://github.com/cotes2020/jekyll-theme-chirpy/blob/master/LICENSE)
[![Build Status](https://github.com/cotes2020/jekyll-theme-chirpy/workflows/build/badge.svg?branch=master&event=push)](https://github.com/cotes2020/jekyll-theme-chirpy/actions?query=branch%3Amaster+event%3Apush)
[![Discourse badge](https://img.shields.io/discourse/https/discourse.jupyter.org/users.svg?color=%23f37626)](https://www.terraform.io/ "Terraform Documentation")
 

<br/>
<br/>

The goal of this project is to deploy a Kubernetes cluster on AWS through Amazon EKS. 
To perform the deployment we will use [Terraform](https://www.terraform.io) together with 
its [aws-eks](https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest)
module. We will also be deploying two applications that are extremely 
used in the data engineering world, the orchestrator 
[Apache Airflow](https://airflow.apache.org/) and also a dataviz tool,
the [Apache Superset](https://superset.apache.org/).  


## **File Descriptions**
### **Folders**

- infrastructure : Corresponds to the terraform files to provisioning
EKS.

- k8s :
    - Airflow : .yaml files to deploy  
    - Superset : .yaml files to deploy 

<br/>
<br/>


# **Required Instalations**
## **install kubectl** 

The instalation of the CLI kubectl was performed follow the oficial
documentation of [Kubernetes](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-kubectl-binary-with-curl-on-linux)  
```
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
```

```
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

```
kubectl version --client
```
## **install Terraform for debian based Linux distro** 
The installation of terraform can be done by following the 
[official documentation] 
(https://learn.hashicorp.com/tutorials/terraform/install-cli). For debian based linux distro the lines below are 
sufficient. 
```
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
```
```
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
```
```
sudo apt-get update && sudo apt-get install terraform
```

<br/>
<br/>

# **How to interact with your project**
Just download (or git-clone) this project and adapt the codes to 
suit your needs.


# **Licensing**
## **MIT License**
Copyright (c) 2021 Alexandre P. Furlan

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software")
, to deal in the Software without restriction, including without 
limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software, and to permit persons 
to whom the Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be included 
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
DEALINGS IN THE SOFTWARE.

<br/>
<br/>

# **Acknowledgements**
I acknoledge [Gabriel Bonifácio](https://github.com/ghbonifacio) for several helpful discussions. 

<br/>
<br/>

# **Author**
1 - Alexandre Penteado Furlan
