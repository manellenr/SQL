CREATE TABLE Utilisateur
(
Raison_telechargement VARCHAR2(20), 
Age INTEGER, 
Nom VARCHAR2(20),
Pays VARCHAR2(20),
Nationalite VARCHAR2(20), 
Heure_telechargement NUMBER(8,2)
);
 
CREATE TABLE Type_abonnement
(
Nb_Utilisateur INTEGER,
Duree_abonnement VARCHAR2(5)
);
 
CREATE TABLE Annee_version
(
Duree_telechargement Number(8,2),
Serveur VARCHAR2(20),
Memoire INTEGER,
Marque VARCHAR2(20)
);

Vérifier que les tables ont bien été créées:

SELECT *FROM TAB
SELECT * FROM Utilisateur;
SELECT * FROM Type_abonnement;
SELECT * FROM Annee_version;

