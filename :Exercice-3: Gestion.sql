DROP DATABASE IF EXISTS gestion;

CREATE DATABASE gestion;
USE library;

CREATE TABLE produits (
    code INT AUTO_INCREMENT PRIMARY KEY,
    designation VARCHAR(255) NOT NULL,
    prix VARCHAR(255) UNIQUE,
    id_entreprise INT NOT NULL,
    id_fournisseurs INT NOT NULL, 
    FOREIGN KEY (id_entreprise) REFERENCES entreprise(id),
    FOREIGN KEY (id_fournisseurs) REFERENCES fournisseur(id)

);

CREATE TABLE fournisseur (
    numero INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255),
    livrer_nombre INT NOT NULL 

);
CREATE TABLE entreprise (
    id INT AUTO_INCREMENT PRIMARY KEY,
    designation VARCHAR(255) NOT NULL,
    prix VARCHAR(255) UNIQUE,
    id_produit INT,
    FOREIGN KEY (id_produit) REFERENCES produits(id)
);
