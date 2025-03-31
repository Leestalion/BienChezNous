# Processus UX - BienChezNous

## 1. Inscription et Création de Profil
**Objectif** : Permettre à un utilisateur de s'inscrire et de créer un profil personnalisé.

**Processus** :
- L'utilisateur s'inscrit en fournissant des informations personnelles (nom, prénom, email, mot de passe, etc.).
- Une fois inscrit, il est redirigé vers une page de création de profil pour compléter ses préférences et critères de compatibilité (tabagisme, animaux, niveau de bruit préféré, etc.).
- L'utilisateur peut télécharger une photo de profil et ajouter des informations pertinentes (besoins de santé, préférences alimentaires, etc.).
- Le profil est enregistré dans la base de données.

---

## 2. Exploration des Profils
**Objectif** : Permettre à un utilisateur de consulter d'autres profils d'utilisateurs disponibles pour des matchs potentiels.

**Processus** :
- L'utilisateur explore les profils d'autres utilisateurs cherchant des colocataires.
- Des filtres permettent d'affiner la recherche selon des critères spécifiques (préférences alimentaires, niveau d'activité, etc.).
- L'utilisateur peut voir un aperçu des informations des autres profils, y compris leurs préférences et besoins spécifiques.

---

## 3. Matching Automatique
**Objectif** : Trouver les utilisateurs les plus compatibles sur la base de leurs critères.

**Processus** :
- L'application analyse les profils et compare les préférences des utilisateurs.
- Un score de compatibilité est calculé en fonction des critères partagés (tabagisme, animaux, horaires, etc.).
- Une liste de profils compatibles est générée, avec un score de compatibilité affiché.
- L'utilisateur peut consulter cette liste et choisir les personnes avec lesquelles il souhaite entrer en contact.

---

## 4. Communication entre Utilisateurs
**Objectif** : Permettre aux utilisateurs de discuter pour vérifier leur compatibilité.

**Processus** :
- Une fois un match trouvé, l'utilisateur peut envoyer un message ou démarrer une discussion.
- Un système de messagerie privée permet d'échanger sur les conditions de vie et les besoins spécifiques.
- La communication se poursuit jusqu'à ce que les utilisateurs aient suffisamment d'informations pour prendre une décision.

---

## 5. Confirmation de la Compatibilité
**Objectif** : Confirmer si les utilisateurs sont compatibles pour vivre ensemble.

**Processus** :
- Chaque utilisateur remplit un formulaire de confirmation de compatibilité.
- Le formulaire inclut une question principale : "Confirmez-vous que vous êtes compatibles pour vivre ensemble ?"
- Les réponses (oui/non) et commentaires sont enregistrés dans la table `ConfirmationCompatibilite`.
- Un score de satisfaction est également demandé pour évaluer l'expérience de communication.

---

## 6. Validation et Acceptation du Match
**Objectif** : Finaliser la décision et confirmer ou refuser un match.

**Processus** :
- Si les deux utilisateurs confirment la compatibilité et acceptent le match, ils sont considérés comme “matchés”.
- Un statut de match accepté est enregistré dans la table `MatchUtilisateur`.
- Une notification confirme que le match est validé et que les deux parties sont prêtes à cohabiter.

---

## 7. Gestion du Logement
**Objectif** : Faciliter la réservation et la gestion du logement après validation du match.

**Processus** :
- Les utilisateurs discutent des aspects pratiques (disponibilité des chambres, conditions du logement).
- La plateforme permet de réserver un logement disponible selon leurs préférences.
- Un contrat ou accord est signé électroniquement pour valider l'entrée dans le logement.
- La gestion de la cohabitation peut être suivie via l'application.

---

## 8. Feedback et Évaluation Post-Vie en Colocation
**Objectif** : Permettre aux utilisateurs de donner un feedback sur leur expérience.

**Processus** :
- Après un certain temps, les utilisateurs remplissent une évaluation de leur expérience.
- Les retours incluent la satisfaction générale, la compatibilité avec les colocataires, et les services offerts.
- Ces évaluations permettent d'améliorer les recommandations pour les futurs colocataires.

---

## 9. Gestion des Annonces de Logement
**Objectif** : Permettre aux gestionnaires de coliving d'ajouter et gérer des annonces.

**Processus** :
- Les gestionnaires ajoutent des annonces avec des informations détaillées (superficie, prix, équipements, etc.).
- Ces annonces sont visibles pour les utilisateurs et intégrées dans leurs recherches.

---

## 10. Notifications
**Objectif** : Garder les utilisateurs informés des évolutions importantes.

**Processus** :
- Notifications pour des événements importants (nouveau match, message reçu, confirmation de compatibilité).
- Notifications envoyées par email, SMS, ou via l'application.
- Les utilisateurs peuvent gérer leurs préférences de notification.

---

## Nouveaux Types d'Utilisateurs

### 1. Professionnels de Santé
**Rôle** : Prestataires externes responsables du suivi médical et du bien-être des colocataires.

**Processus** :
- **Inscription** : Les professionnels (médecins, infirmiers, etc.) s'inscrivent en fournissant leurs informations professionnelles (spécialité, qualifications, horaires, etc.).
- **Gestion des Services** : Création de services spécifiques (consultations, bilans de santé) avec horaires et tarifs.
- **Rendez-vous** : Les colocataires réservent des créneaux via l'application.
- **Évaluation** : Les colocataires évaluent les prestations fournies.
- **Suivi Médical** : Accès à un dossier médical simplifié (avec consentement) pour assurer un suivi adapté.

---

### 2. Membres de la Famille
**Rôle** : Soutien affectif et gestion des besoins des colocataires, notamment pour les personnes âgées.

**Processus** :
- **Inscription** : Les membres de la famille s'inscrivent comme accompagnants et lient leur compte à celui du colocataire.
- **Suivi** : Accès à un tableau de bord pour suivre les soins, rendez-vous, et besoins spécifiques.
- **Notifications** : Alertes en cas de situations urgentes ou activités importantes.
- **Communication** : Interaction avec le colocataire et les prestataires via la plateforme.
- **Évaluation** : Participation à l'évaluation de la qualité de vie du colocataire.

---

## Résumé des Processus
1. Inscription et création de profil
2. Exploration et recherche de matchs
3. Matching automatique avec calcul de compatibilité
4. Communication avec les colocataires potentiels
5. Confirmation de la compatibilité et évaluation
6. Validation du match et gestion du logement
7. Feedback et évaluation post-colocation
8. Gestion des annonces de logement
9. Notifications sur l'état de la recherche et des matchs
10. Intégration des professionnels de santé et des membres de la famille
