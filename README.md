# 🥪 Jaffle Shop Data Transformation

Ce projet est une implémentation moderne du célèbre pipeline **Jaffle Shop**. Il transforme des données de vente brutes en modèles analytiques via **dbt Cloud** et **Google BigQuery**.

---

## 🚀 Vue d'ensemble
L'objectif est de transformer trois sources de données brutes :
* **Données Sources :** Clients, Commandes et Paiements (CSV).
* **Transformation :** Nettoyage (Staging) et Agrégation (Marts).
* **Destination :** BigQuery.

---

## 🛠 Stack Technique
* **Entrepôt :** Google BigQuery
* **Transformation :** dbt Cloud (Fusion 2.0)
* **Contrôle de version :** GitHub

---

## 🏗 Structure du Projet

* **models/staging/** : Nettoyage des données brutes (`stg_customers`, `stg_orders`).
* **models/marts/** : Tables finales pour la BI (`dim_customers`).
* **seeds/** : Fichiers sources CSV.

---

## 🚦 Guide de démarrage rapide

### 1. Préparation
`dbt seed`

### 2. Exécution
`dbt run`

### 3. Tests
`dbt test`

---

## 📈 Modèles Principaux
* **dim_customers** : Vision client 360° avec calcul du nombre de commandes.
* **stg_jaffle_shop** : Couche de staging pour normaliser les données d'entrée.

---

> **💡 Note :** Projet migré de AWS/Redshift vers BigQuery pour une meilleure fluidité.
