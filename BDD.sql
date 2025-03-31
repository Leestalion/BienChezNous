CREATE TABLE Utilisateurs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    mot_de_passe VARCHAR(255) NOT NULL,
    DateNaissance DATE,
    telephone VARCHAR(20),
    Sexe VARCHAR(50),
    type ENUM('Resident', 'Famille', 'Medecin', 'Gestionnaire', 'Prestataire') NOT NULL,
    Adresse VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Residences (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    adresse TEXT NOT NULL,
    ville VARCHAR(100) NOT NULL,
    code_postal VARCHAR(10) NOT NULL,
    description TEXT,
    capacite INT NOT NULL,
    gestionnaire_id INT,
    FOREIGN KEY (gestionnaire_id) REFERENCES Utilisateurs(id)
);

CREATE TABLE Logements (
    id INT PRIMARY KEY AUTO_INCREMENT,
    residence_id INT NOT NULL,
    numero_chambre VARCHAR(50) NOT NULL,
    type ENUM('Studio', 'T2', 'T3') NOT NULL,
    statut ENUM('Disponible', 'Occupé', 'Réservé') NOT NULL,
    equipements TEXT,
    FOREIGN KEY (residence_id) REFERENCES Residences(id)
);

CREATE TABLE Services (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    description TEXT,
    categorie ENUM('Soins', 'Repas', 'Activités') NOT NULL,
    prestataire_id INT,
    FOREIGN KEY (prestataire_id) REFERENCES Utilisateurs(id)
);

CREATE TABLE Reservations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    utilisateur_id INT NOT NULL,
    logement_id INT,
    service_id INT,
    date_debut DATE NOT NULL,
    date_fin DATE,
    statut ENUM('En attente', 'Confirmé', 'Annulé') DEFAULT 'En attente',
    FOREIGN KEY (utilisateur_id) REFERENCES Utilisateurs(id),
    FOREIGN KEY (logement_id) REFERENCES Logements(id),
    FOREIGN KEY (service_id) REFERENCES Services(id)
);

CREATE TABLE SuiviMedical (
    id INT PRIMARY KEY AUTO_INCREMENT,
    resident_id INT NOT NULL,
    medecin_id INT NOT NULL,
    description TEXT NOT NULL,
    date_consultation DATE NOT NULL,
    ordonnance TEXT,
    FOREIGN KEY (resident_id) REFERENCES Utilisateurs(id),
    FOREIGN KEY (medecin_id) REFERENCES Utilisateurs(id)
);

CREATE TABLE Messages (
    id INT PRIMARY KEY AUTO_INCREMENT,
    expediteur_id INT NOT NULL,
    destinataire_id INT NOT NULL,
    contenu TEXT NOT NULL,
    date_envoi TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (expediteur_id) REFERENCES Utilisateurs(id),
    FOREIGN KEY (destinataire_id) REFERENCES Utilisateurs(id)
);

CREATE TABLE Partenariats (
    id INT PRIMARY KEY AUTO_INCREMENT,
    gestionnaire_id INT NOT NULL,
    proprietaire_id INT NOT NULL,
    type ENUM('Location', 'Vente', 'Investissement') NOT NULL,
    details TEXT,
    FOREIGN KEY (gestionnaire_id) REFERENCES Utilisateurs(id),
    FOREIGN KEY (proprietaire_id) REFERENCES Utilisateurs(id)
);

CREATE TABLE CompatibiliteUtilisateur (
    CompatibiliteID INT PRIMARY KEY AUTO_INCREMENT,
    UtilisateurID INT,
    PreferanceFumeur VARCHAR(50),
    PreferanceAnimaux VARCHAR(50),
    PreferanceCalme VARCHAR(50),
    HoraireSommeil VARCHAR(50),
    NiveauActivite VARCHAR(50),
    BesoinsSante VARCHAR(255),
    PreferanceAlimentaire VARCHAR(255),
    StyleCommunication VARCHAR(50),
    FOREIGN KEY (UtilisateurID) REFERENCES Utilisateurs(id)
);

CREATE TABLE MatchUtilisateur (
    MatchID INT PRIMARY KEY AUTO_INCREMENT,
    Utilisateur1ID INT,
    Utilisateur2ID INT,
    ScoreCompatibilite DECIMAL(5,2),
    DateMatch DATETIME DEFAULT CURRENT_TIMESTAMP,
    MatchAccepte BIT,
    FOREIGN KEY (Utilisateur1ID) REFERENCES Utilisateurs(id),
    FOREIGN KEY (Utilisateur2ID) REFERENCES Utilisateurs(id)
);

CREATE TABLE ConfirmationCompatibilite (
    ConfirmationID INT PRIMARY KEY AUTO_INCREMENT,
    MatchID INT,
    UtilisateurID INT,
    ConfirmeCompatibilite BIT,
    Commentaires VARCHAR(500),
    DateConfirmation DATETIME DEFAULT CURRENT_TIMESTAMP,
    FeedbackSatisfaction INT,
    FOREIGN KEY (MatchID) REFERENCES MatchUtilisateur(MatchID),
    FOREIGN KEY (UtilisateurID) REFERENCES Utilisateurs(id)
);
