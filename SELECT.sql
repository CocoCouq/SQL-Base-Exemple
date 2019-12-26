USE otherexercice;



/* ex1 Afficher toutes les informations */
SELECT * FROM employe;

/* ex2 */
SELECT nodep FROM employe;

/* ex3 Test ligne par ligne : Afficher séparemment */
SELECT nom AS "Nom de l'employé" FROM employe;
SELECT dateemb AS "Date de l'embauche" FROM employe;
SELECT salaire AS Salaire FROM employe;

/* ex3 Test groupé : Afficher dans le meme tableau */
SELECT nom AS "Nom de l'employé", 
dateemb AS "Date de l'embauche", 
nosup AS "Numéro du supérieur", 
nodep AS "Numéro du département", 
salaire AS Salaire 
FROM employe;

/* ex4 */
SELECT titre FROM employe; 

/* ex5 Select distinct : Suppresion des doublons */
SELECT DISTINCT titre AS "Différents titres" FROM employe;

/* ex6 Where pour donner une condition */
SELECT nom AS "Nom de l'employé", 
noemp AS "Numéro employé", 
nodep AS "Numéro Département"
FROM employe 
WHERE titre = "secrétaire";

/* ex7 Where > 40 */
SELECT nom AS "Nom de l'employé", 
nodep AS "Numéro Département"
FROM employe 
WHERE nodep > 40;

/* ex8 Alphabétiquement antérieur */
SELECT nom AS Nom, 
prenom AS Prénom
FROM employe 
WHERE nom < prenom;

/* ex9 Where ... and ... */
SELECT nom AS Nom, 
salaire AS Salaire, 
nodep AS Departement
FROM employe
WHERE titre = "représentant"
AND nodep = 35
AND salaire > 20000;

/* ex10 Where ... or ... */
SELECT nom AS Nom, 
titre, salaire
FROM employe
WHERE titre = "représentant" 
OR titre = "président";

/* ex11 Where ... AND (... OR ...) */
SELECT nom, titre, 
nodep AS départment, 
salaire
FROM employe 
WHERE nodep = 34
AND (titre = "représentant" OR titre = "secrétaire");

/* ex12  Where ... OR (... AND ...) */
SELECT nom, titre,
nodep AS Departement, 
salaire
FROM employe
WHERE titre = "représentant"
OR (nodep = 34 AND titre = "secrétaire"); 

/* ex13 salaire entre 20000 et 30000 */
SELECT nom, salaire 
FROM employe 
WHERE (salaire < 30000 AND salaire > 20000); 

/* ex14 Les formateurs l'ont oublié */

/* ex15 Commençant par h */
SELECT nom FROM employe WHERE (nom LIKE "h%"); 

/* ex16 Finissant par n */
SELECT nom FROM employe WHERE (nom LIKE "%n"); 

/* ex17 3eme lettr est n */
SELECT nom FROM employe WHERE (nom LIKE "__n%"); 

/* ex18 Salaire par odre croissant */
SELECT nom, salaire 
FROM employe
ORDER BY salaire; 

/* ex19 */
SELECT nom, salaire 
FROM employe
ORDER BY salaire DESC;

/* ex20 Trier par titre et par salaire */
SELECT titre, salaire, nom 
FROM employe 
ORDER BY titre, salaire DESC; 

/* ex21 */
SELECT nom, salaire, tauxcom
FROM employe
WHERE tauxcom IS NOT NULL
ORDER BY tauxcom; 

/* ex22  Is null */
SELECT nom, salaire, 
tauxcom AS "Taux de com", 
titre 
FROM employe 
WHERE tauxcom IS NULL; 

/* ex23 Is not null */
SELECT nom, salaire, tauxcom, titre 
FROM employe
WHERE tauxcom IS NOT NULL; 

/* ex24 Inferieur */
SELECT nom, salaire, tauxcom, titre
FROM employe 
WHERE tauxcom < 15; 

/* ex25 Supérieur */
SELECT nom, salaire, tauxcom, titre
FROM employe 
WHERE tauxcom > 15; 

/* ex26 Multiplication */
SELECT nom, salaire, tauxcom,
(salaire * tauxcom) AS Commission 
FROM employe 
WHERE tauxcom IS NOT NULL; 

/* ex27 Multiplications croissantes */
SELECT nom, salaire, tauxcom,
(salaire * tauxcom) AS Commission 
FROM employe 
WHERE tauxcom IS NOT NULL
ORDER BY (salaire * tauxcom); 

/* ex28 Concatenation */
SELECT CONCAT(nom, " ",prenom) 
AS Employé
FROM employe; 

/* ex29 Substring (expression, poste de départ, nombre de caracteres) */
SELECT SUBSTRING(nom, 1, 5) AS Nom
FROM employe; 

/* ex30 Locate (chaine a trouver, dans la chaine) */
SELECT nom, 
LOCATE("r", nom) AS "PLace du r"
FROM employe; 

/* ex31 UPPER and LOWER + Where ... in (..., ..., ...) + UNION*/
SELECT nom, UPPER(nom)
FROM employe 
WHERE nom != "vrante"
UNION 
SELECT nom, LOWER(nom) 
FROM employe 
WHERE nom IN ("vrante"); 

/* ex32 Lenght */
SELECT nom, LENGTH(nom) AS LongueurNom
FROM employe; 

