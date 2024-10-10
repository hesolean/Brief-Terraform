# Création d'un Compte de stockage sur Azure avec Terraform

Ce projet Terraform déploie un compte de stockage sur Azure. Il inclut la création d'un conteneur.

## Prérequis

Avant d'exécuter ce projet, vous aurez besoin de :

    - Un compte Azure valide.
    - Terraform installé (version >= 1.0).
    - L'accès aux informations de votre souscription Azure (ID de souscription, ID client, secret client, ID du tenant).

## Structure du projet

Le projet est organisé comme suit :

.
├── main.tf          # Définition des ressources pour le compte de stockage et le conteneur
├── variables.tf     # Définition des variables d'entrée
├── outputs.tf       # Définition des outputs
├── providers.tf     # Configuration des providers Terraform (azurerm)
└── README.md        # Documentation du projet

## Contenu des fichiers

    - main.tf : Contient la configuration du compte de stockage et du conteneur.
    - variables.tf : Définit les variables utilisées dans ce projet, comme l'ID de souscription, les noms et la localisation des ressources.
    - providers.tf : Configure les providers nécessaires.
    - outputs.tf : Définit la sortie pour obtenir le nom du compte de stockage et du conteneur.

## Variables

Les principales variables que vous devez définir sont :

    - subscription_id: L'ID de la souscription Azure.
    - resource_group_name: Le nom du groupe de ressources Azure où les ressources seront créées.
    - resource_group_location: La région où les ressources seront déployées (ex: northeurope).
    - network_interface_id: L'ID de l'interface réseau associée à la VM.
    - storage_account_name: Le nom du compte de stockage.
    - storage_container_name: Le nom du.

## Outputs

    - storage_account_name: Le nom du compte de stockage.
    - storage_container_name: Le nom du conteneur.


## Avertissements

    Veillez à ne jamais exposer les données sensibles de votre organisation.