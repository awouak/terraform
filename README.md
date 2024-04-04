# Répertoire du TP3 Terraform

## Elements requis :

- Un répertoire Github en Public
  
- Un compte Microsoft Azure avec de l'argent
  
- Terraform installé :https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
  
- Azure CLI installé : https://learn.microsoft.com/fr-fr/cli/azure/install-azure-cli-linux?pivots=apt

## Repertoire Github :

Pour utiliser le projet, la 1ère étape est de mettre les différents fichier dans votre répertoire Github en mode "Public" puis de clone ce répertoire github sur votre machine.

## Azure

#### 1: Se connecter à Azure

az login

#### 2: Récupération du Subscription ID

az account list --query "[].{name:name, subscriptionId:id}"

#### 3: Création d’un Service Principal

az ad sp create-for-rbac --role="Contributor"

--scopes="/subscriptions/<YourSubscriptionId>"

Correspondance du résultat

● appId = ARM_CLIENT_ID.

● password = ARM_CLIENT_SECRET.

● tenant = ARM_TENANT_ID.

Exemple de résultat:

json

{

"appId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",

"displayName": "azure-cli-2020-04-01-10-31-17",

"name": "http://azure-cli-2020-04-01-10-31-17",

"password": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",

"tenant": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

}

#### 4: Set des variables d’environnement

export ARM_SUBSCRIPTION_ID=<SubscriptionId>

export ARM_CLIENT_ID=<appI>

export ARM_CLIENT_SECRET=<password>

export ARM_TENANT_ID=<tenant>



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
## Voir la page web :

Pour voir la page web, rendez vous sur https://nom.azurewebsites.net

Vous devriez voir normalement votre application Flask (Cela peux prendre 10min à s'afficher il faut etre patient)

Vous pouvez voir le status du déploiement dans "Service d'applications' et dans 'Overview' pour voir si le déploiement est toujours en cours ou terminé.
Vous pouvez aussi consulté cela dans "Actions" sur votre répertoire Github.
