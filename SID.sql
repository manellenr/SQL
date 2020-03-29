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

ALTER TABLE Utilisateur ADD CONSTRAINT PK_ Utilisateur PRIMARY KEY(Raison_telechargement, Heure_telechargement);
ALTER TABLE Type_abonnement ADD CONSTRAINT PK_ Type_abonnement PRIMARY KEY(Raison_telechargement);
ALTER TABLE Annee_version ADD CONSTRAINT PK Annee_version PRIMARY KEY(Duree_telechargement , Serveur , Memoire, Marque, Raison_telechargement);
ALTER TABLE Version ADD CONSTRAINT PK_ Version PRIMARY KEY(Serveur , Marque, Duree_telechargement);

ALTER TABLE Version T ADD CONSTRAINT FK_ Version2 FOREIGN KEY(Duree_telechargement) REFERENCES Annee_version(Duree_telechargement) ON DELETE CASCADE;
ALTER TABLE Annee_version  ADD CONSTRAINT FK_ Annee_version FOREIGN KEY(Raison_telechargement) REFERENCES _ Annee_version(Duree_telechargement ) ON DELETE SET NULL;

ALTER TABLE Version ADD CONSTRAINT CK_ Serveur CHECK (Serveur IN(‘Windows’,’Linux’,’Android’,’Microsoft’, ‘MacOs_Server’, ‘IOS_Serveur’));

ALTER TABLE Utilisateur ADD CONSTRAINT CK_ Raison_telechargement CHECK (Raison_telechargement IN(‘Particulier’,’Profession_liberale’,’Entreprise’));

ALTER TABLE Version ADD CONSTRAINT CK_ Marque CHECK (Marque IN(‘Mac’,’HP’,’Samsung’,’Autres’));

ALTER TABLE Type_abonnement ADD CONSTRAINT CK_ Duree_telechargement CHECK (Duree_telechargement IN(‘8_12’,’ 12_14’,’ 14_18’,’ 18_8’));

DROP TABLE Utilisateur CASCADE CONSTRAINTS;
DROP TABLE Type_abonnement CASCADE CONSTRAINTS;
DROP TABLE Annee_version CASCADE CONSTRAINTS;
DROP TABLE Version CASCADE CONSTRAINTS;

insert into Utilisateur (Raison_telechargement, Age, Nom, Pays, Nationalite , Heure_telechargement) values(seq_ Utilisateur.nextval,110,'A220','Paris');
insert into Utilisateur (Raison_telechargement, Age, Nom, Pays, Nationalite , Heure_telechargement) values(seq_ Utilisateur.nextval,180,'B737-800','Lyon');
insert into Utilisateur (Raison_telechargement, Age, Nom, Pays, Nationalite , Heure_telechargement) values(seq_ Utilisateur.nextval,500,'A380','Paris');
insert into Utilisateur (Raison_telechargement, Age, Nom, Pays, Nationalite , Heure_telechargement) values(seq_ Utilisateur.nextval,300,'A320','Paris');
insert into Utilisateur (Raison_telechargement, Age, Nom, Pays, Nationalite , Heure_telechargement) values(seq_ Utilisateur.nextval,200,'A220','Lyon');
