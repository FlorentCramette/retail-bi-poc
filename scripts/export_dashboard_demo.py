#!/usr/bin/env python3
"""
Export Dashboard Demo - Génération de captures pour démo
========================================================
Crée des exports statiques du dashboard pour démonstration
sans nécessiter Power BI Desktop

Author: Florent
Date: October 2025
"""

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from pathlib import Path
import os

def create_demo_visuals():
    """Crée des visualisations de démonstration basées sur les données retail"""
    
    # Chargement des données
    data_path = Path(__file__).parent.parent / "data" / "retail_demo.csv"
    
    if not data_path.exists():
        print(f"❌ Fichier de données non trouvé : {data_path}")
        return
    
    df = pd.read_csv(data_path)
    
    # Configuration du style
    plt.style.use('seaborn-v0_8')
    fig, axes = plt.subplots(2, 2, figsize=(16, 12))
    fig.suptitle('📊 RETAIL BI DASHBOARD - APERÇU DÉMONSTRATION', fontsize=20, fontweight='bold')
    
    # 1. Chiffre d'affaires par enseigne
    if 'nom_enseigne' in df.columns and 'montant_total' in df.columns:
        ca_enseigne = df.groupby('nom_enseigne')['montant_total'].sum().sort_values(ascending=False)
        axes[0,0].bar(ca_enseigne.index, ca_enseigne.values, color='steelblue')
        axes[0,0].set_title('💰 CA par Enseigne', fontweight='bold')
        axes[0,0].tick_params(axis='x', rotation=45)
        
    # 2. Évolution mensuelle
    if 'date_vente' in df.columns:
        df['date_vente'] = pd.to_datetime(df['date_vente'])
        df['mois'] = df['date_vente'].dt.to_period('M')
        evolution = df.groupby('mois')['montant_total'].sum()
        axes[0,1].plot(evolution.index.astype(str), evolution.values, marker='o', color='green', linewidth=3)
        axes[0,1].set_title('📈 Évolution Mensuelle', fontweight='bold')
        axes[0,1].tick_params(axis='x', rotation=45)
    
    # 3. Top produits
    if 'produit' in df.columns:
        top_produits = df.groupby('produit')['montant_total'].sum().nlargest(10)
        axes[1,0].barh(top_produits.index, top_produits.values, color='orange')
        axes[1,0].set_title('🛒 Top 10 Produits', fontweight='bold')
    
    # 4. Répartition géographique
    if 'ville_client' in df.columns:
        repartition_ville = df.groupby('ville_client')['montant_total'].sum()
        axes[1,1].pie(repartition_ville.values, labels=repartition_ville.index, autopct='%1.1f%%')
        axes[1,1].set_title('🗺️ Répartition par Ville', fontweight='bold')
    
    plt.tight_layout()
    
    # Sauvegarde
    output_path = Path(__file__).parent.parent / "outputs" / "dashboard_demo_preview.png"
    plt.savefig(output_path, dpi=300, bbox_inches='tight')
    print(f"✅ Aperçu démo sauvegardé : {output_path}")
    
    return output_path

if __name__ == "__main__":
    create_demo_visuals()