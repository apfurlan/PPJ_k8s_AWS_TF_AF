# k8s_IaC_ArgoCD


Neste projeto vou provisionar um cluster kubernets no ambiente da AWS 
utilizando Terraform.  Vou fazer o deploy do argoCD junto com uma 
aplicação.


A primeira parte do processo é cadastrar um conta AWS à sua máquina
para que o Terraform possa. Para isso você precisa fazer a instalação
da AWSCLI. Em uma distribuições linux derivadas de Debian isso a instalação
pode ser feita por

```
sudo apt install awscli
```