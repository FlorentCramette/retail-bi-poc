# Power BI Dashboard - Retail BI POC

## Instructions de création

1. **Ouvrir Power BI Desktop**

2. **Importer les données**:
   - Source: Excel → `outputs/reporting_retail.xlsx`
   - Ou directement PostgreSQL (voir configuration dans export_retail.py)

3. **Créer les visuels suivants**:

   ### Page 1: Dashboard Principal
   - **KPI Cards** (en haut):
     - Chiffre d'affaires total
     - Nombre de ventes
     - Nombre de clients
     - Panier moyen
   
   - **Bar Chart** (gauche):
     - Axe X: nom_enseigne
     - Axe Y: chiffre_affaires
     - Titre: "CA par Enseigne"
   
   - **Line Chart** (droite):
     - Axe X: periode (YYYY-MM)
     - Axe Y: chiffre_affaires
     - Titre: "Évolution Mensuelle du CA"
   
   - **Slicer** (haut):
     - Champ: nom_enseigne
     - Style: Dropdown

4. **Appliquer le thème**:
   - Couleurs: Bleu corporate (#2F5597)
   - Police: Segoe UI
   - Titre principal: "🎯 RETAIL BI DASHBOARD"

5. **Publier sur Power BI Service**:
   - Workspace: "Mon espace de travail"
   - Activer le partage public
   - Récupérer l'URL publique

6. **Mettre à jour le README.md** avec le lien

## Structure des données attendue

### Onglet "📊 Synthèse KPIs"
- Indicateur | Valeur
- Format: Table simple pour les KPI cards

### Onglet "🏪 KPIs Enseignes" 
- nom_enseigne, ville, region, nb_clients, nb_ventes, chiffre_affaires, panier_moyen

### Onglet "📈 Évolution Mensuelle"
- annee, mois, periode, nb_ventes, chiffre_affaires, panier_moyen, nb_clients_uniques

### Onglet "🛒 Détail Ventes"
- Toutes les colonnes des ventes pour le drill-down

## Conseils Power BI

- **Relations**: Automatiques via les noms de colonnes
- **Filtres**: Appliquer au niveau page pour les slicers
- **Format**: Utiliser les formats monétaires pour les montants
- **Interactions**: Configurer les interactions entre visuels
- **Mobile**: Créer une vue mobile optimisée

## Publication web

1. Power BI Service → Partager → Incorporer → Public
2. Générer le code iframe
3. Tester l'accès anonyme
4. Mettre à jour la documentation

Le fichier .pbix sera créé manuellement selon ces instructions.