# 📊 Retail BI POC - Analyse de Données Retail

> 🎯 **Démonstration pratique** : Pipeline **CSV → Python → Excel → Power BI** pour l'analyse retail

[![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?style=for-the-badge&logo=powerbi)](./powerbi/retail_dashboard.pbix)
[![Python](https://img.shields.io/badge/Python-ETL-blue?style=for-the-badge&logo=python)](./scripts/export_retail.py)
[![Download PBIX](https://img.shields.io/badge/📥_Télécharger-retail__dashboard.pbix-red?style=for-the-badge)](./powerbi/retail_dashboard.pbix)

## 🚀 **DÉMONSTRATION RAPIDE (2 minutes)**

### 📥 **Étape 1 : Télécharger Power BI Desktop**
- **Lien direct** : [aka.ms/pbidesktop](https://aka.ms/pbidesktop) 
- **Installation** : 5 minutes, gratuit

### 📊 **Étape 2 : Ouvrir le dashboard**
1. **🔴 [CLIQUER ICI pour télécharger le dashboard](./powerbi/retail_dashboard.pbix)** 
2. **Double-clic** sur le fichier téléchargé
3. **Explorer** les visualisations interactives

### 🎯 **Étape 3 : Ce que vous verrez**
- **Dashboard complet** avec analyses retail
- **Données réelles** : 311 transactions sur 5 enseignes
- **Interactivité** : Filtres par enseigne, période, ville

## 📈 **Analyses Incluses**

### 📊 **Métriques Principales**
- **💰 Chiffre d'Affaires** : Suivi global et par enseigne
- **🛒 Nombre de Ventes** : 311 transactions analysées
- **👥 Clients** : Analyse de la clientèle
- **🏪 Performance** : Comparaison des 5 enseignes
- **📅 Évolution** : Tendances mensuelles

### 🎯 **Insights Business**
- **Performance par enseigne** : Identification des leaders
- **Saisonnalité** : Pics et creux de ventes
- **Répartition géographique** : Analyse par ville
- **Paniers moyens** : Optimisation pricing

## 🛠️ **Architecture Simple et Efficace**

```
📄 CSV Source → 🐍 Python ETL → 📊 Excel → 📈 Power BI Dashboard
```

### 🔧 **Stack Technique**
- **Source** : Fichier CSV avec 311 transactions retail
- **Traitement** : Python avec pandas + openpyxl
- **Export** : Excel formaté (onglets multiples, style français)
- **Visualisation** : Power BI Desktop avec dashboard interactif

## 📁 **Structure du Projet**

```
retail-bi-poc/
├── 📊 powerbi/
│   └── 🔴 retail_dashboard.pbix    # DASHBOARD PRINCIPAL
├── 📈 outputs/
│   └── reporting_retail.xlsx       # Rapport Excel généré
├── 🐍 scripts/
│   └── export_retail.py            # Script de traitement
├── 📄 data/
│   └── retail_demo.csv             # Dataset source (311 lignes)
└── 📋 README.md                    # Documentation
```

## 🔄 **Régénération des Données**

Pour actualiser ou modifier les analyses :

```bash
# 1. Cloner le projet
git clone https://github.com/FlorentCramette/retail-bi-poc.git
cd retail-bi-poc

# 2. Installer les dépendances
pip install -r requirements.txt

# 3. Exécuter le pipeline
python scripts/export_retail.py

# 4. Ouvrir Power BI et actualiser
# Le dashboard se connecte automatiquement au nouveau fichier Excel
```

## 💡 **Valeur Démontrée**

### ✅ **Compétences Techniques**
- **Python** : Manipulation de données avec pandas
- **Excel** : Génération automatisée de rapports formatés
- **Power BI** : Création de dashboards interactifs
- **Pipeline** : Automatisation end-to-end

### ✅ **Approche Business**
- **Données réalistes** : Dataset enrichi avec variations saisonnières
- **Analyses pertinentes** : KPIs retail standards
- **Présentation pro** : Dashboard prêt pour management
- **Reproductibilité** : Process documenté et automatisé

## 🎯 **Cas d'Usage**

### 🏢 **Management**
- Vue d'ensemble des performances
- Comparaison entre enseignes
- Suivi des tendances

### 📊 **Analyse**
- Détection des patterns saisonniers
- Identification des opportunités
- Support à la prise de décision

## 📞 **À Propos**

**Objectif** : Démontrer une maîtrise pratique des outils BI modernes avec un cas d'usage concret.

**Technologies** : Python, Excel, Power BI Desktop

**Données** : 311 transactions retail réparties sur 5 enseignes avec variations géographiques et saisonnières.

---

📧 **Contactez-moi pour une démonstration live du dashboard**

---

## 📊 **Démo Live** 
🔗 **[Dashboard Power BI Public →](#)** *(Lien à ajouter après publication)*

---

## 📊 Vue d'ensemble

Ce POC démontre une chaîne complète d'analyse retail:
- 🗄️ **Base de données** structurée (PostgreSQL/SQL Server)
- 🐍 **Automatisation Python** (pandas, Excel export)
- 📈 **Reporting Excel** multi-onglets stylisé
- 🚀 **Dashboard Power BI** interactif et publiable

### 🎪 Démo en ligne
- 🌐 **Power BI Dashboard**: *[Lien à venir après publication]*
- 📺 **Streamlit App**: *[Lien existant si applicable]*
- 💻 **Repo GitHub**: `https://github.com/[username]/fresh_BI`

---

## 🏗️ Architecture

```
📦 fresh_BI/
├── 🗄️ sql/
│   └── retail_demo.sql      # Script création BDD + données
├── 📄 data/
│   └── retail_demo.csv      # Fallback CSV (si pas de BDD)
├── 🐍 scripts/
│   └── export_retail.py     # ETL Python -> Excel
├── 📊 outputs/
│   └── reporting_retail.xlsx # Rapport généré
├── 📈 powerbi/
│   └── retail_dashboard.pbix # Dashboard Power BI
├── 📋 requirements.txt      # Dépendances Python
└── 📖 README.md            # Ce fichier
```

---

## 🚀 Quick Start (3 étapes)

### 1️⃣ Setup Python
```bash
# Cloner le repo
git clone https://github.com/[username]/fresh_BI.git
cd fresh_BI

# Installer les dépendances
pip install -r requirements.txt
```

### 2️⃣ Données (Option A: PostgreSQL)
```sql
-- Créer la base
CREATE DATABASE retail_demo;

-- Exécuter le script
psql -d retail_demo -f sql/retail_demo.sql
```

### 2️⃣ Données (Option B: CSV uniquement)
```bash
# Les données CSV sont déjà présentes dans /data
# Le script Python bascule automatiquement si pas de BDD
```

### 3️⃣ Génération du rapport
```bash
python scripts/export_retail.py
```

**Résultat**: Fichier `outputs/reporting_retail.xlsx` généré ✅

---

## 📊 Données & KPIs

### 🏪 Dataset
- **5 enseignes** TechWorld (Paris, Lyon, Marseille, Toulouse, Bordeaux)
- **50 clients** avec profils diversifiés
- **200+ ventes** sur 15 mois (2023-2024)
- **Produits tech** réalistes (smartphones, laptops, accessoires)

### 📈 KPIs calculés
| Métrique | Description |
|----------|-------------|
| 💰 **CA Total** | Chiffre d'affaires consolidé |
| 🛒 **Nb Ventes** | Volume total des transactions |
| 👥 **Nb Clients** | Base client unique |
| 🎯 **Panier Moyen** | Montant moyen par transaction |
| 🏆 **Top Enseigne** | Meilleure performance par CA |
| 📅 **Évolution** | Tendance mensuelle |

---

## 📋 Livrables

### 1. 🗄️ Base de données (`sql/retail_demo.sql`)
- Tables relationnelles: `enseigne`, `client`, `vente`
- Vues pré-calculées pour l'analyse
- Compatible PostgreSQL & SQL Server
- Données factices mais crédibles

### 2. 🐍 Script Python (`scripts/export_retail.py`)
- Connexion BDD avec fallback CSV
- Calculs KPIs automatisés
- Export Excel multi-onglets stylisé
- Gestion d'erreurs robuste

### 3. 📊 Rapport Excel (`outputs/reporting_retail.xlsx`)
- **Onglet Synthèse**: KPIs exécutifs
- **Onglet Enseignes**: Performance par magasin
- **Onglet Évolution**: Tendances temporelles
- **Onglet Détails**: Transactions individuelles
- Mise en forme professionnelle

### 4. 📈 Dashboard Power BI (`powerbi/retail_dashboard.pbix`)
- Connexion directe Excel/CSV
- 3 visuels principaux:
  - 💰 Carte KPI (CA total)
  - 📊 Bar chart (CA par enseigne)
  - 📈 Courbe temporelle (évolution mensuelle)
- Filtre interactif par enseigne
- Prêt pour publication web

---

## 🛠️ Stack technique

| Couche | Technologies |
|--------|-------------|
| **Base de données** | PostgreSQL, SQL Server |
| **ETL/Processing** | Python, pandas, SQLAlchemy |
| **Reporting** | openpyxl, Excel |
| **Visualisation** | Power BI Desktop |
| **Déploiement** | Power BI Service, GitHub |

---

## 📸 Screenshots

### 📊 Dashboard Power BI
![Power BI Dashboard Placeholder](https://via.placeholder.com/800x400/2F5597/FFFFFF?text=Power+BI+Dashboard)

### 📋 Rapport Excel
![Excel Report Placeholder](https://via.placeholder.com/800x400/217346/FFFFFF?text=Excel+Multi-Tabs+Report)

### 🗄️ Modèle de données
![Data Model Placeholder](https://via.placeholder.com/600x400/D73502/FFFFFF?text=SQL+Data+Model)

---

## 🎯 Utilisation Power BI

### Connexion aux données
1. Ouvrir `powerbi/retail_dashboard.pbix`
2. **Actualiser** les sources:
   - Pointer vers `outputs/reporting_retail.xlsx`
   - Ou connecter directement à PostgreSQL
3. **Publier** sur Power BI Service
4. **Partager** le lien public

### Visuels disponibles
- 💰 **KPI Cards**: CA, Ventes, Clients
- 📊 **Bar Chart**: Chiffre d'affaires par enseigne
- 📈 **Line Chart**: Évolution mensuelle du CA
- 🎛️ **Slicer**: Filtre par enseigne/région
- 📅 **Timeline**: Filtre temporel

---

## 🔧 Troubleshooting

### ❌ Erreur connexion PostgreSQL
```bash
# Vérifier que PostgreSQL tourne
sudo systemctl status postgresql

# Le script bascule automatiquement vers CSV
python scripts/export_retail.py
```

### ❌ Modules Python manquants
```bash
# Réinstaller les dépendances
pip install -r requirements.txt --upgrade
```

### ❌ Excel non généré
```bash
# Vérifier les permissions d'écriture
chmod 755 outputs/
```

---

## 🚀 Roadmap & améliorations

### Phase 2 (si besoin)
- [ ] 🔄 **Pipeline CI/CD** (GitHub Actions)
- [ ] 🐳 **Containerisation** (Docker)
- [ ] ☁️ **Cloud** (Azure Data Factory)
- [ ] 🔐 **Sécurité** (authentification API)
- [ ] 🤖 **ML** (prédiction des ventes)

### Intégrations possibles
- [ ] 📧 **Email automatique** des rapports
- [ ] 🔔 **Alertes** sur seuils KPIs
- [ ] 🌐 **API REST** pour dashboard web
- [ ] 📱 **App mobile** Power BI

---

## 👨‍💻 About me

**Florent** - Candidat Data Analyst  
🎯 **Objectif**: Démontrer mes compétences BI en situation réelle  
💼 **Stack**: SQL, Python, Excel, Power BI, Git  
📧 **Contact**: [email@example.com]  
🔗 **LinkedIn**: [linkedin.com/in/profile]

---

## 📜 License

Ce projet est un POC à des fins de démonstration.  
Données fictives générées pour l'exemple.

---

## 🏆 Résultats

✅ **Base SQL** structurée et peuplée  
✅ **ETL Python** fonctionnel avec fallback  
✅ **Excel** multi-onglets stylisé  
✅ **Power BI** dashboard interactif  
✅ **GitHub** repo professionnel  
✅ **Documentation** complète  

**Temps de réalisation**: ~4h (objectif matinée ✅)  
**Prêt pour recruteurs**: 🚀

---

## 🔒 Sécurité

### ✅ **Niveau POC/Démo** (actuel)
- 🔐 Pas de credentials hardcodés
- 📁 Environnement virtuel isolé  
- 📊 Données fictives uniquement
- 🚫 `.gitignore` protège les fichiers sensibles

### 🏢 **Niveau Production** 
Pour un déploiement réel, voir **[SECURITY.md](SECURITY.md)** :
- Variables d'environnement (`.env`)
- Utilisateur DB readonly dédié
- Connexions SSL/TLS obligatoires
- Validation stricte des entrées
- Monitoring et alertes