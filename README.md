# Répertoire du TP3 Terraform

## Objectifs

L'objectif est le déploiement d'un groupe de ressource ou dans lequel on pourrait retoruver:

- Une VM Azure avec une ip public sur lequel on peut se connecter en ssh avec un certificat.
  
- Un compte de stockage
  

## Elements requis :

- Un répertoire Github en Public
  
- Un compte Microsoft Azure avec de l'argent
  
- Terraform installé :https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
  
- Azure CLI installé : https://learn.microsoft.com/fr-fr/cli/azure/install-azure-cli-linux?pivots=apt

## Repertoire Github :

Pour utiliser le projet, la 1ère étape est de mettre les différents fichier dans votre répertoire Github en mode "Public" puis de clone ce répertoire github sur votre machine.
Vous pouvez utilisez le script ssh/sh pour copier le certificat ssh dans le bon répertoire (/home/azureuser/.ssh)

## Mettre en place Azure sur sa machine Ubuntu

#### 1: Se connecter à Azure
```
az login
```
#### 2: Récupération du Subscription ID
```
az account list --query "[].{name:name, subscriptionId:id}"
```
#### 3: Création d’un Service Principal
```
az ad sp create-for-rbac --role="Contributor"

--scopes="/subscriptions/<YourSubscriptionId>"
```
#### 4: Set des variables d’environnement
```
export ARM_SUBSCRIPTION_ID=<SubscriptionId>
```
```
export ARM_CLIENT_ID=<appI>
```
```
export ARM_CLIENT_SECRET=<password>
```
```
export ARM_TENANT_ID=<tenant>
```


## Terraform :

Dans votre répertoire terraform : 

Pour initier le projet :
```
terraform init
```
Pour vérifier la configuration :
```
terraform plan
```
Pour appliquer la configuration :
```
terraform apply
```
Pour voir la configuration
```
terraform show
```
Pour détruire la configuration
```
terraform destroy
```
## Azure :

Vous pouvez vérifier maintenant la bonne création de la configuration sur votre compte Azure.
