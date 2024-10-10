# Création d'une Webapp sur Azure avec Terraform

Ce projet Terraform déploie une web application sur Azure.

## Prérequis

Avant d'exécuter ce projet, vous aurez besoin de :

    - Un compte Azure valide.
    - Terraform installé (version >= 1.0).
    - L'accès aux informations de votre souscription Azure (ID de souscription, ID client, secret client, ID du tenant).

## Structure du projet

Le projet est organisé comme suit :

.
├── main.tf          # Définition de la ressource pour la webapp
├── variables.tf     # Définition des variables d'entrée
├── outputs.tf       # Définition des outputs
├── providers.tf     # Configuration des providers Terraform (azurerm)
└── README.md        # Documentation du projet

## Contenu des fichiers

    - main.tf : Contient la configuration de la webb app.
    - variables.tf : Définit les variables utilisées dans ce projet, comme l'ID de souscription, les noms de ressources, le nom de la webbapp et du service plan auquel elle est associée.
    - providers.tf : Configure les providers nécessaires.
    - outputs.tf : Définit la sortie pour obtenir le nom de la webbapp.

## Variables

Les principales variables que vous devez définir sont :

    - subscription_id: L'ID de la souscription Azure.
    - resource_group_name: Le nom du groupe de ressources Azure où les ressources seront créées.
    - resource_group_location: La région où les ressources seront déployées (ex: northeurope).
    - web_app_name: Le nom de la webbapp.
    - service_plan_id: L'ID du service plan

## Outputs

    webb_app: Le nom de la webbapp.


## Avertissements

    Veillez à ne jamais exposer les données sensibles de votre organisation.