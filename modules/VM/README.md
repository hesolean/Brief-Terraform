# Création d'une Machine Virtuelle sur Azure avec Terraform

Ce projet Terraform déploie une machine virtuelle Linux sur Azure. Il inclut la configuration des groupes de sécurité, le stockage, la création de l'interface réseau et la génération d'un mot de passe aléatoire.

## Prérequis

Avant d'exécuter ce projet, vous aurez besoin de :

    - Un compte Azure valide.
    - Terraform installé (version >= 1.0).
    - L'accès aux informations de votre souscription Azure (ID de souscription, ID client, secret client, ID du tenant).

## Structure du projet

Le projet est organisé comme suit :

.
├── main.tf          # Définition des ressources pour la VM et la sécurité
├── variables.tf     # Définition des variables d'entrée
├── outputs.tf       # Définition des outputs
├── providers.tf     # Configuration des providers Terraform (azurerm, random)
└── README.md        # Documentation du projet

## Contenu des fichiers

    - main.tf : Contient la configuration de la machine virtuelle, les règles de sécurité (SSH et HTTP), le groupe de sécurité réseau, l'association de l'interface - - réseau et le compte de stockage pour les diagnostics de la VM.
    - variables.tf : Définit les variables utilisées dans ce projet, comme l'ID de souscription, les noms de ressources, et l'ID de l'interface réseau.
    - providers.tf : Configure les providers nécessaires (Azure et génération de mot de passe aléatoire).
    - outputs.tf : Définit la sortie pour obtenir le nom du compte de stockage créé pour la VM.

## Variables

Les principales variables que vous devez définir sont :

    - subscription_id: L'ID de la souscription Azure.
    - resource_group_name: Le nom du groupe de ressources Azure où les ressources seront créées.
    - resource_group_location: La région où les ressources seront déployées (ex: northeurope).
    - network_interface_id: L'ID de l'interface réseau associée à la VM.
    - vm_storage_name: Le nom du compte de stockage pour la VM.
    - vm_name: Le nom de la machine virtuelle.

## Outputs

    vm_storage: Le nom du compte de stockage associé à la machine virtuelle.


## Avertissements

    Veillez à ne jamais exposer votre mot de passe généré automatiquement. Il est conseillé de le stocker en toute sécurité.
    Les règles de sécurité permettent l'accès via SSH (port 22) et HTTP (port 80) de n'importe quelle source. Assurez-vous de configurer des restrictions plus strictes si nécessaire.