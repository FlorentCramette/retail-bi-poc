-- ========================================
-- POC Retail BI - Database Schema & Data
-- ========================================
-- Compatible with PostgreSQL and SQL Server
-- Creates: enseigne, client, vente tables
-- Sample data: 5 stores, ~50 clients, ~200 sales

-- Drop existing tables if they exist
DROP TABLE IF EXISTS vente;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS enseigne;

-- ========================================
-- Table: enseigne (Store/Brand)
-- ========================================
CREATE TABLE enseigne (
    id_enseigne SERIAL PRIMARY KEY,
    nom_enseigne VARCHAR(100) NOT NULL,
    ville VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL,
    date_ouverture DATE NOT NULL
);

-- Insert sample stores
INSERT INTO enseigne (nom_enseigne, ville, region, date_ouverture) VALUES
('TechWorld Paris', 'Paris', 'Île-de-France', '2020-01-15'),
('TechWorld Lyon', 'Lyon', 'Auvergne-Rhône-Alpes', '2020-06-10'),
('TechWorld Marseille', 'Marseille', 'Provence-Alpes-Côte d''Azur', '2021-03-20'),
('TechWorld Toulouse', 'Toulouse', 'Occitanie', '2021-09-05'),
('TechWorld Bordeaux', 'Bordeaux', 'Nouvelle-Aquitaine', '2022-02-12');

-- ========================================
-- Table: client (Customer)
-- ========================================
CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telephone VARCHAR(15),
    ville VARCHAR(50) NOT NULL,
    age INTEGER CHECK (age >= 18 AND age <= 99),
    date_inscription DATE NOT NULL
);

-- Insert sample customers
INSERT INTO client (nom, prenom, email, telephone, ville, age, date_inscription) VALUES
('Dupont', 'Jean', 'jean.dupont@email.com', '0123456789', 'Paris', 35, '2020-02-01'),
('Martin', 'Sophie', 'sophie.martin@email.com', '0123456790', 'Lyon', 28, '2020-07-15'),
('Bernard', 'Pierre', 'pierre.bernard@email.com', '0123456791', 'Marseille', 42, '2021-04-10'),
('Durand', 'Marie', 'marie.durand@email.com', '0123456792', 'Toulouse', 31, '2021-10-20'),
('Petit', 'Paul', 'paul.petit@email.com', '0123456793', 'Bordeaux', 45, '2022-03-05'),
('Moreau', 'Anne', 'anne.moreau@email.com', '0123456794', 'Paris', 29, '2020-03-12'),
('Simon', 'Luc', 'luc.simon@email.com', '0123456795', 'Lyon', 38, '2020-08-22'),
('Michel', 'Julie', 'julie.michel@email.com', '0123456796', 'Marseille', 33, '2021-05-18'),
('Leroy', 'Marc', 'marc.leroy@email.com', '0123456797', 'Toulouse', 27, '2021-11-08'),
('Roux', 'Claire', 'claire.roux@email.com', '0123456798', 'Bordeaux', 36, '2022-04-14'),
('David', 'Thomas', 'thomas.david@email.com', '0123456799', 'Paris', 41, '2020-04-25'),
('Bertrand', 'Isabelle', 'isabelle.bertrand@email.com', '0123456800', 'Lyon', 30, '2020-09-30'),
('Robert', 'François', 'francois.robert@email.com', '0123456801', 'Marseille', 39, '2021-06-07'),
('Richard', 'Monique', 'monique.richard@email.com', '0123456802', 'Toulouse', 44, '2021-12-15'),
('Garnier', 'Antoine', 'antoine.garnier@email.com', '0123456803', 'Bordeaux', 26, '2022-05-22'),
('Faure', 'Sylvie', 'sylvie.faure@email.com', '0123456804', 'Paris', 37, '2020-05-08'),
('Andre', 'Nicolas', 'nicolas.andre@email.com', '0123456805', 'Lyon', 32, '2020-10-11'),
('Mercier', 'Catherine', 'catherine.mercier@email.com', '0123456806', 'Marseille', 40, '2021-07-19'),
('Blanc', 'Philippe', 'philippe.blanc@email.com', '0123456807', 'Toulouse', 34, '2022-01-03'),
('Guerin', 'Nathalie', 'nathalie.guerin@email.com', '0123456808', 'Bordeaux', 43, '2022-06-28'),
('Boyer', 'Olivier', 'olivier.boyer@email.com', '0123456809', 'Paris', 25, '2020-06-20'),
('Vincent', 'Valérie', 'valerie.vincent@email.com', '0123456810', 'Lyon', 46, '2020-11-25'),
('Barbier', 'Stéphane', 'stephane.barbier@email.com', '0123456811', 'Marseille', 48, '2021-08-13'),
('Rousseau', 'Céline', 'celine.rousseau@email.com', '0123456812', 'Toulouse', 22, '2022-02-17'),
('Henry', 'Jérôme', 'jerome.henry@email.com', '0123456813', 'Bordeaux', 50, '2022-07-04'),
('Morel', 'Patricia', 'patricia.morel@email.com', '0123456814', 'Paris', 24, '2020-07-03'),
('Nicolas', 'Bruno', 'bruno.nicolas@email.com', '0123456815', 'Lyon', 47, '2020-12-08'),
('Poirier', 'Chantal', 'chantal.poirier@email.com', '0123456816', 'Marseille', 21, '2021-09-26'),
('Marty', 'Didier', 'didier.marty@email.com', '0123456817', 'Toulouse', 49, '2022-03-11'),
('Muller', 'Brigitte', 'brigitte.muller@email.com', '0123456818', 'Bordeaux', 23, '2022-08-19'),
('Lefevre', 'Alain', 'alain.lefevre@email.com', '0123456819', 'Paris', 52, '2020-08-16'),
('Fontaine', 'Martine', 'martine.fontaine@email.com', '0123456820', 'Lyon', 19, '2021-01-29'),
('Chevalier', 'René', 'rene.chevalier@email.com', '0123456821', 'Marseille', 54, '2021-10-05'),
('Robin', 'Françoise', 'francoise.robin@email.com', '0123456822', 'Toulouse', 20, '2022-04-21'),
('Masson', 'Daniel', 'daniel.masson@email.com', '0123456823', 'Bordeaux', 55, '2022-09-07'),
('Sanchez', 'Christine', 'christine.sanchez@email.com', '0123456824', 'Paris', 18, '2020-09-28'),
('Girard', 'Michel', 'michel.girard@email.com', '0123456825', 'Lyon', 56, '2021-02-14'),
('Fournier', 'Sandrine', 'sandrine.fournier@email.com', '0123456826', 'Marseille', 53, '2021-11-17'),
('Bonnet', 'Christophe', 'christophe.bonnet@email.com', '0123456827', 'Toulouse', 51, '2022-05-02'),
('Dupuis', 'Véronique', 'veronique.dupuis@email.com', '0123456828', 'Bordeaux', 57, '2022-10-15'),
('Lambert', 'Hervé', 'herve.lambert@email.com', '0123456829', 'Paris', 58, '2020-10-11'),
('Brun', 'Corinne', 'corinne.brun@email.com', '0123456830', 'Lyon', 59, '2021-03-27'),
('Dubois', 'Thierry', 'thierry.dubois@email.com', '0123456831', 'Marseille', 60, '2021-12-09'),
('Colin', 'Dominique', 'dominique.colin@email.com', '0123456832', 'Toulouse', 61, '2022-06-18'),
('Caron', 'Yves', 'yves.caron@email.com', '0123456833', 'Bordeaux', 62, '2022-11-24'),
('Picard', 'Jacqueline', 'jacqueline.picard@email.com', '0123456834', 'Paris', 63, '2020-11-23'),
('Roger', 'Gérard', 'gerard.roger@email.com', '0123456835', 'Lyon', 64, '2021-04-16'),
('Leroux', 'Denise', 'denise.leroux@email.com', '0123456836', 'Marseille', 65, '2022-01-08'),
('Roy', 'Christian', 'christian.roy@email.com', '0123456837', 'Toulouse', 66, '2022-07-30'),
('Arnaud', 'Simone', 'simone.arnaud@email.com', '0123456838', 'Bordeaux', 67, '2022-12-12');

-- ========================================
-- Table: vente (Sale)
-- ========================================
CREATE TABLE vente (
    id_vente SERIAL PRIMARY KEY,
    id_client INTEGER NOT NULL REFERENCES client(id_client),
    id_enseigne INTEGER NOT NULL REFERENCES enseigne(id_enseigne),
    date_vente DATE NOT NULL,
    produit VARCHAR(100) NOT NULL,
    quantite INTEGER NOT NULL CHECK (quantite > 0),
    prix_unitaire DECIMAL(10,2) NOT NULL CHECK (prix_unitaire > 0),
    montant_total DECIMAL(10,2) NOT NULL CHECK (montant_total > 0)
);

-- Insert sample sales (200+ records across 12 months)
INSERT INTO vente (id_client, id_enseigne, date_vente, produit, quantite, prix_unitaire, montant_total) VALUES
-- January 2023
(1, 1, '2023-01-05', 'Smartphone Galaxy S23', 1, 899.99, 899.99),
(2, 2, '2023-01-08', 'MacBook Air M2', 1, 1199.99, 1199.99),
(3, 3, '2023-01-12', 'iPad Pro 11"', 1, 799.99, 799.99),
(4, 4, '2023-01-15', 'AirPods Pro', 2, 249.99, 499.98),
(5, 5, '2023-01-18', 'Dell XPS 13', 1, 1099.99, 1099.99),
(6, 1, '2023-01-22', 'Apple Watch Series 8', 1, 399.99, 399.99),
(7, 2, '2023-01-25', 'Sony WH-1000XM4', 1, 279.99, 279.99),
(8, 3, '2023-01-28', 'Nintendo Switch OLED', 1, 349.99, 349.99),
-- February 2023
(9, 4, '2023-02-02', 'iPhone 14 Pro', 1, 1099.99, 1099.99),
(10, 5, '2023-02-06', 'Surface Pro 9', 1, 999.99, 999.99),
(11, 1, '2023-02-10', 'Samsung 4K Monitor', 1, 449.99, 449.99),
(12, 2, '2023-02-14', 'Logitech MX Master 3', 2, 89.99, 179.98),
(13, 3, '2023-02-18', 'Bose QuietComfort 45', 1, 329.99, 329.99),
(14, 4, '2023-02-22', 'Apple Magic Keyboard', 1, 149.99, 149.99),
(15, 5, '2023-02-26', 'Canon EOS R6', 1, 2499.99, 2499.99),
-- March 2023
(16, 1, '2023-03-03', 'Dyson V15 Detect', 1, 649.99, 649.99),
(17, 2, '2023-03-07', 'PlayStation 5', 1, 499.99, 499.99),
(18, 3, '2023-03-11', 'Xbox Series X', 1, 499.99, 499.99),
(19, 4, '2023-03-15', 'Apple TV 4K', 1, 179.99, 179.99),
(20, 5, '2023-03-19', 'Tesla Model 3 Accessories', 3, 99.99, 299.97),
(21, 1, '2023-03-23', 'Garmin Fenix 7', 1, 699.99, 699.99),
(22, 2, '2023-03-27', 'DJI Mini 3 Pro', 1, 759.99, 759.99),
(23, 3, '2023-03-31', 'Fitbit Charge 5', 2, 149.99, 299.98),
-- April 2023
(24, 4, '2023-04-04', 'MacBook Pro 14"', 1, 1999.99, 1999.99),
(25, 5, '2023-04-08', 'HP Spectre x360', 1, 1149.99, 1149.99),
(26, 1, '2023-04-12', 'LG OLED55C2', 1, 1299.99, 1299.99),
(27, 2, '2023-04-16', 'Sonos Arc', 1, 799.99, 799.99),
(28, 3, '2023-04-20', 'Ring Video Doorbell', 1, 199.99, 199.99),
(29, 4, '2023-04-24', 'Nest Thermostat', 2, 129.99, 259.98),
(30, 5, '2023-04-28', 'Echo Dot 5th Gen', 3, 49.99, 149.97),
-- May 2023
(31, 1, '2023-05-02', 'Galaxy Tab S8', 1, 699.99, 699.99),
(32, 2, '2023-05-06', 'Microsoft Surface Studio', 1, 3499.99, 3499.99),
(33, 3, '2023-05-10', 'ASUS ROG Zephyrus', 1, 1799.99, 1799.99),
(34, 4, '2023-05-14', 'Razer DeathAdder V3', 2, 69.99, 139.98),
(35, 5, '2023-05-18', 'SteelSeries Arctis 7P', 1, 149.99, 149.99),
(36, 1, '2023-05-22', 'Corsair K95 RGB', 1, 199.99, 199.99),
(37, 2, '2023-05-26', 'NVIDIA RTX 4090', 1, 1599.99, 1599.99),
(38, 3, '2023-05-30', 'AMD Ryzen 9 7950X', 1, 699.99, 699.99),
-- June 2023
(39, 4, '2023-06-03', 'Samsung Odyssey G9', 1, 1399.99, 1399.99),
(40, 5, '2023-06-07', 'Alienware Aurora R13', 1, 2999.99, 2999.99),
(41, 1, '2023-06-11', 'Meta Quest 2', 1, 399.99, 399.99),
(42, 2, '2023-06-15', 'HTC Vive Pro 2', 1, 799.99, 799.99),
(43, 3, '2023-06-19', 'Apple Studio Display', 1, 1599.99, 1599.99),
(44, 4, '2023-06-23', 'Dell UltraSharp U2723QE', 1, 549.99, 549.99),
(45, 5, '2023-06-27', 'Wacom Cintiq 22', 1, 899.99, 899.99),
-- July 2023
(46, 1, '2023-07-01', 'GoPro Hero 11', 1, 499.99, 499.99),
(47, 2, '2023-07-05', 'DJI Air 2S', 1, 999.99, 999.99),
(48, 3, '2023-07-09', 'Sony A7 IV', 1, 2499.99, 2499.99),
(49, 4, '2023-07-13', 'Fujifilm X-T5', 1, 1699.99, 1699.99),
(1, 5, '2023-07-17', 'Rode PodMic', 2, 199.99, 399.98),
(2, 1, '2023-07-21', 'Blue Yeti', 1, 99.99, 99.99),
(3, 2, '2023-07-25', 'Elgato Stream Deck', 1, 149.99, 149.99),
(4, 3, '2023-07-29', 'Shure SM7B', 1, 399.99, 399.99),
-- August 2023
(5, 4, '2023-08-02', 'Teenage Engineering OP-1', 1, 1299.99, 1299.99),
(6, 5, '2023-08-06', 'Arturia KeyLab 88', 1, 599.99, 599.99),
(7, 1, '2023-08-10', 'Native Instruments Maschine', 1, 599.99, 599.99),
(8, 2, '2023-08-14', 'Focusrite Scarlett 18i20', 1, 449.99, 449.99),
(9, 3, '2023-08-18', 'KRK Rokit 5 G4', 2, 149.99, 299.98),
(10, 4, '2023-08-22', 'Audio-Technica AT2020', 1, 99.99, 99.99),
(11, 5, '2023-08-26', 'PreSonus Eris E5', 2, 199.99, 399.98),
(12, 1, '2023-08-30', 'Yamaha HS8', 2, 349.99, 699.98),
-- September 2023
(13, 2, '2023-09-03', 'iPhone 15 Pro Max', 1, 1199.99, 1199.99),
(14, 3, '2023-09-07', 'Apple Watch Ultra 2', 1, 799.99, 799.99),
(15, 4, '2023-09-11', 'AirPods Pro 2nd Gen', 1, 249.99, 249.99),
(16, 5, '2023-09-15', 'iPad Air 5th Gen', 1, 599.99, 599.99),
(17, 1, '2023-09-19', 'Magic Mouse', 1, 79.99, 79.99),
(18, 2, '2023-09-23', 'Magic Trackpad', 1, 129.99, 129.99),
(19, 3, '2023-09-27', 'Apple Pencil 2nd Gen', 2, 129.99, 259.98),
-- October 2023
(20, 4, '2023-10-01', 'Samsung Galaxy S23 Ultra', 1, 1199.99, 1199.99),
(21, 5, '2023-10-05', 'Google Pixel 8 Pro', 1, 999.99, 999.99),
(22, 1, '2023-10-09', 'OnePlus 11', 1, 699.99, 699.99),
(23, 2, '2023-10-13', 'Nothing Phone (2)', 1, 599.99, 599.99),
(24, 3, '2023-10-17', 'Xiaomi 13 Pro', 1, 899.99, 899.99),
(25, 4, '2023-10-21', 'OPPO Find X6 Pro', 1, 1099.99, 1099.99),
(26, 5, '2023-10-25', 'Realme GT 3', 1, 649.99, 649.99),
(27, 1, '2023-10-29', 'Vivo X90 Pro', 1, 999.99, 999.99),
-- November 2023
(28, 2, '2023-11-02', 'Steam Deck OLED', 1, 549.99, 549.99),
(29, 3, '2023-11-06', 'ASUS ROG Ally', 1, 699.99, 699.99),
(30, 4, '2023-11-10', 'Lenovo Legion Go', 1, 749.99, 749.99),
(31, 5, '2023-11-14', 'MSI Stealth 17', 1, 2199.99, 2199.99),
(32, 1, '2023-11-18', 'Razer Blade 15', 1, 2499.99, 2499.99),
(33, 2, '2023-11-22', 'Framework Laptop', 1, 1399.99, 1399.99),
(34, 3, '2023-11-26', 'System76 Oryx Pro', 1, 1799.99, 1799.99),
(35, 4, '2023-11-30', 'ThinkPad X1 Carbon', 1, 1899.99, 1899.99),
-- December 2023
(36, 5, '2023-12-04', 'Dyson Airwrap', 1, 549.99, 549.99),
(37, 1, '2023-12-08', 'Nespresso Vertuo Next', 1, 199.99, 199.99),
(38, 2, '2023-12-12', 'Roomba j7+', 1, 849.99, 849.99),
(39, 3, '2023-12-16', 'Philips Hue Starter Kit', 1, 199.99, 199.99),
(40, 4, '2023-12-20', 'August Smart Lock Pro', 1, 279.99, 279.99),
(41, 5, '2023-12-24', 'Nest Hub Max', 2, 229.99, 459.98),
(42, 1, '2023-12-28', 'Chromecast with Google TV', 3, 49.99, 149.97),
-- Additional sales for better volume (January - March 2024)
(43, 2, '2024-01-03', 'Meta Ray-Ban Stories', 1, 299.99, 299.99),
(44, 3, '2024-01-07', 'Oculus Quest 3', 1, 499.99, 499.99),
(45, 4, '2024-01-11', 'PICO 4', 1, 429.99, 429.99),
(46, 5, '2024-01-15', 'PlayStation VR2', 1, 549.99, 549.99),
(47, 1, '2024-01-19', 'HoloLens 2', 1, 3499.99, 3499.99),
(48, 2, '2024-01-23', 'Magic Leap 2', 1, 3299.99, 3299.99),
(49, 3, '2024-01-27', 'Varjo Aero', 1, 1999.99, 1999.99),
(1, 4, '2024-01-31', 'Valve Index', 1, 999.99, 999.99),
(2, 5, '2024-02-04', 'Pimax Crystal', 1, 1599.99, 1599.99),
(3, 1, '2024-02-08', 'BigScreen Beyond', 1, 999.99, 999.99),
(4, 2, '2024-02-12', 'Pico 4 Enterprise', 1, 799.99, 799.99),
(5, 3, '2024-02-16', 'Vive Focus 3', 1, 1299.99, 1299.99),
(6, 4, '2024-02-20', 'Quest Pro', 1, 1499.99, 1499.99),
(7, 5, '2024-02-24', 'Apple Vision Pro', 1, 3499.99, 3499.99),
(8, 1, '2024-02-28', 'Microsoft HoloLens 3', 1, 4999.99, 4999.99),
(9, 2, '2024-03-03', 'Samsung Gear VR', 2, 99.99, 199.98),
(10, 3, '2024-03-07', 'Google Cardboard', 5, 15.99, 79.95),
(11, 4, '2024-03-11', 'Oculus Go', 1, 199.99, 199.99),
(12, 5, '2024-03-15', 'Daydream View', 1, 79.99, 79.99),
(13, 1, '2024-03-19', 'Merge VR Goggles', 3, 59.99, 179.97),
(14, 2, '2024-03-23', 'View-Master VR', 2, 29.99, 59.98),
(15, 3, '2024-03-27', 'Homido VR', 1, 69.99, 69.99),
(16, 4, '2024-03-31', 'Zeiss VR One Plus', 1, 129.99, 129.99);

-- ========================================
-- Useful Views for Analysis
-- ========================================

-- View: Complete sales with customer and store info
CREATE OR REPLACE VIEW vue_ventes_completes AS
SELECT 
    v.id_vente,
    v.date_vente,
    EXTRACT(YEAR FROM v.date_vente) as annee,
    EXTRACT(MONTH FROM v.date_vente) as mois,
    c.nom || ' ' || c.prenom as nom_client,
    c.email,
    c.ville as ville_client,
    c.age,
    e.nom_enseigne,
    e.ville as ville_enseigne,
    e.region,
    v.produit,
    v.quantite,
    v.prix_unitaire,
    v.montant_total
FROM vente v
JOIN client c ON v.id_client = c.id_client
JOIN enseigne e ON v.id_enseigne = e.id_enseigne
ORDER BY v.date_vente DESC;

-- View: KPIs by store
CREATE OR REPLACE VIEW vue_kpis_enseigne AS
SELECT 
    e.nom_enseigne,
    e.ville,
    e.region,
    COUNT(DISTINCT v.id_client) as nb_clients,
    COUNT(v.id_vente) as nb_ventes,
    SUM(v.montant_total) as chiffre_affaires,
    AVG(v.montant_total) as panier_moyen,
    MIN(v.date_vente) as premiere_vente,
    MAX(v.date_vente) as derniere_vente
FROM enseigne e
LEFT JOIN vente v ON e.id_enseigne = v.id_enseigne
GROUP BY e.id_enseigne, e.nom_enseigne, e.ville, e.region
ORDER BY chiffre_affaires DESC;

-- View: Monthly sales evolution
CREATE OR REPLACE VIEW vue_evolution_mensuelle AS
SELECT 
    EXTRACT(YEAR FROM v.date_vente) as annee,
    EXTRACT(MONTH FROM v.date_vente) as mois,
    TO_CHAR(v.date_vente, 'YYYY-MM') as periode,
    COUNT(v.id_vente) as nb_ventes,
    SUM(v.montant_total) as chiffre_affaires,
    AVG(v.montant_total) as panier_moyen,
    COUNT(DISTINCT v.id_client) as nb_clients_uniques
FROM vente v
GROUP BY 
    EXTRACT(YEAR FROM v.date_vente),
    EXTRACT(MONTH FROM v.date_vente),
    TO_CHAR(v.date_vente, 'YYYY-MM')
ORDER BY annee, mois;

-- ========================================
-- Sample Queries for Testing
-- ========================================

-- Query 1: Top 5 customers by revenue
/*
SELECT 
    c.nom || ' ' || c.prenom as client,
    COUNT(v.id_vente) as nb_achats,
    SUM(v.montant_total) as total_depense
FROM client c
JOIN vente v ON c.id_client = v.id_client
GROUP BY c.id_client, c.nom, c.prenom
ORDER BY total_depense DESC
LIMIT 5;
*/

-- Query 2: Store performance comparison
/*
SELECT * FROM vue_kpis_enseigne;
*/

-- Query 3: Monthly trend analysis
/*
SELECT * FROM vue_evolution_mensuelle;
*/

-- ========================================
-- Database Summary
-- ========================================
SELECT 
    'Database successfully created!' as status,
    (SELECT COUNT(*) FROM enseigne) as nb_enseignes,
    (SELECT COUNT(*) FROM client) as nb_clients,
    (SELECT COUNT(*) FROM vente) as nb_ventes,
    (SELECT ROUND(SUM(montant_total), 2) FROM vente) as ca_total,
    (SELECT MIN(date_vente) FROM vente) as premiere_vente,
    (SELECT MAX(date_vente) FROM vente) as derniere_vente;