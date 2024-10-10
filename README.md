# Projet Terraform - Déploiement Azure : Stockage, Machine Virtuelle, et WebApp

Ce projet Terraform permet de déployer des ressources Azure, y compris un compte de stockage, une machine virtuelle Linux, et une application Web. Chaque composant est géré dans un module distinct pour faciliter la gestion et la modularité.
Prérequis

Avant d'exécuter ce projet, assurez-vous de disposer de :

    - Un compte Azure valide.
    - Terraform installé (version >= 1.0).
    - Les informations d'authentification nécessaires à Azure :
        - ID de souscription Azure
        - ID client, secret client et ID du tenant (pour l'accès API).

## Structure du projet

Ce projet est organisé en trois modules distincts :
.
├── modules/
│   ├── storage/       # Module de création de compte de stockage
│   ├── vm/            # Module de création de la machine virtuelle
│   └── webapp/        # Module de création de la WebApp
├── main.tf            # Fichier principal d'assemblage des modules
├── providers.tf       # Configuration des providers
├── variables.tf       # Variables globales pour les modules
├── outputs.tf         # Outputs des modules
└── README.md          # Documentation du projet

### Contenu des modules

    Module storage : Crée un compte de stockage Azure avec un conteneur.
    Module vm : Déploie une machine virtuelle Linux avec un groupe de sécurité, un stockage, et une interface réseau.
    Module webapp : Crée une application web sur Azure App Service.

## Configuration des fichiers

Chaque module dispose de sa propre configuration de ressources, variables et outputs.

    - main.tf : Définit les ressources spécifiques à chaque module.
    - variables.tf : Définit les variables nécessaires pour chaque module.
    - outputs.tf : Définit les sorties des informations pertinentes (ex. : nom du compte de stockage, VM, etc.).

## Variables Globales

Les variables suivantes doivent être définies au niveau global (fichier variables.tf) pour gérer les déploiements dans chaque module :

hcl

    variable "subscription_id" {
    description = "L'ID de la souscription Azure"
    type        = string
    }

    variable "resource_group_name" {
    description = "Le nom du groupe de ressources"
    type        = string
    }

    variable "resource_group_location" {
    description = "La région Azure pour le déploiement"
    type        = string
    default     = "northeurope"
    }

1. Instructions d'utilisation

Clonez ce dépôt sur votre machine locale.

bash

    git clone https://github.com/hesolean/Brief-Terraform.git

2. Initialisez Terraform dans le répertoire du projet :

bash

    terraform init

3. Définissez vos variables dans le fichier terraform.tfvars ou passez-les en ligne de commande lors de l'exécution de Terraform :

hcl

    subscription_id        = "votre_subscription_id"
    resource_group_name    = "nom_du_groupe_de_ressources"
    resource_group_location = "northeurope"

4. Appliquez le plan Terraform pour déployer les ressources :

bash

    terraform apply -var-file="terraform.tfvars"

Confirmez l'opération lorsque Terraform vous demande de l'approuver.

5. Terraform déploiera les ressources dans les trois modules (stockage, VM, WebApp) et affichera les outputs, comme le nom de la machine virtuelle, du compte de stockage, etc.

## Outputs

À la fin du déploiement, les sorties suivantes seront disponibles :

    vm_storage: Nom du compte de stockage associé à la machine virtuelle.
    web_app: Nom de la WebApp.
    storage_account_name: Nom du compte de stockage.

## Avertissements et bonnes pratiques

    - Ne partagez jamais vos identifiants d'authentification Azure dans un dépôt public.
    - Assurez-vous de configurer des règles de sécurité appropriées pour la VM et la WebApp, surtout si elles sont accessibles publiquement.
    - Modifiez les paramètres de sécurité pour restreindre les accès SSH et HTTP.