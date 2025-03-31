# TunnelShare 
**TunnelShare**, est un script pour créer un serveur HTTP local pour partager vos fichiers via une URL.

Ce projet est uniquement à but de simplifier les partages de fichiers ponctuels entre utilisateurs,
ce script n'est pas prévu pour rester actif en permanence, et n'embarque pas de sécurité poussée.

Suivez ces étapes simples pour commencer. ( vous pouvez télécharger les fichiers [ici](https://github.com/WalTho/TunnelShare/releases). )

## Guide d’Installation

**Temps estimé : ~20-30 minutes**

Bienvenue !  
Ce guide vous explique comment configurer **TunnelShare**, un script de serveur HTTP local pour partager vos fichiers via une URL. 

---

## Étape 1 : Installer Chocolatey
Chocolatey est un gestionnaire de paquets qui simplifie l’installation des outils nécessaires.

- Rendez-vous sur : [https://chocolatey.org/install](https://chocolatey.org/install)
- Ouvre PowerShell en mode administrateur et suis les instructions d’installation.
- Vérifie l’installation avec la commande :  
  choco -v

---

## Étape 2 : Installer Node.js et Serve
Node.js est requis pour exécuter le serveur HTTP, et `serve` est l’outil qui héberge vos fichiers.

1. **Installe Node.js** : Avec Chocolatey installé, ouvre une invite de commande (ou PowerShell) en mode administrateur et tape :  
   choco install nodejs -y
Cela installe Node.js automatiquement.

2. **Installe Serve** : Dans la même invite, tape :  
   npm install -g serve
Cela installe `serve` globalement sur ton système.

3. **Vérifie** : Tape ces commandes pour confirmer :  
   node -v
   serve -v
Tu devrais voir des numéros de version.

---

## Étape 3 : Installer et Configurer Ngrok
Ngrok crée un tunnel sécurisé pour rendre ton serveur accessible sans exposer ton IP.

1. **Crée un compte** : Inscris-toi sur [https://dashboard.ngrok.com/signup](https://dashboard.ngrok.com/signup).
2. **Installe Ngrok** : Suis les instructions ici : [Setup Windows](https://dashboard.ngrok.com/get-started/setup/windows) (Étape 1 uniquement).
3. **Récupère un domaine statique** : Toujours dans l’Étape 1, va dans "Static Domain", crée un domaine (ex. `tadpole-grewn-ferret.ngrok-free.app`) et note-le.

Exemple :  
ngrok http --url=tadpole-grewn-ferret.ngrok-free.app 80

---

## Étape 4 : Ouvrir un Port
Tu dois ouvrir un port (ex. `30120`) en UDP/TCP pour que le serveur fonctionne :

- Ajoute une règle dans ton pare-feu Windows pour ce port.
- Configure la redirection de port sur ton routeur.
- Si tu ne sais pas comment faire, recherche sur Google :  
  "Ouvrir un port Windows + [nom de ton routeur]".

---

## Étape 5 : Configurer le Script
Modifie le fichier `TunnelShare.bat` avec un éditeur de texte :

1. Ouvre le fichier.
2. Définis les variables, par exemple :  
   :: Définir les variables
   set PORT=30120
   set NGROK_URL=tadpole-grewn-ferret.ngrok-free.app
3. Sauvegarde.

---

## Étape 6 : Lancer le Serveur
Double-clique sur `TunnelShare.bat` pour démarrer.

- Le serveur sera accessible via le domaine Ngrok, par exemple :  
  `https://tadpole-grewn-ferret.ngrok-free.app/`
- Pour arrêter, appuie sur une touche dans les fenêtres ouvertes ou utilise `Ctrl + C`.

---

## Étape 7 : Ajouter vos Fichiers à Partager
Les fichiers à partager doivent être placés dans le répertoire `public`, déjà présent dans le dossier du script.

- Ce répertoire contient des sous-dossiers pré-créés :
  - `Jeux` : Pour tes jeux ou fichiers associés.
  - `Logiciels` : Pour tes applications ou installateurs.
  - `Images` : Pour tes photos ou graphiques.
  - `Vidéos` : Pour tes clips ou films.
- Dépose tes fichiers dans ces dossiers ou crée-en de nouveaux selon tes besoins.

Ensuite, partage le lien avec tes amis de confiance ! 
Ferme le script quand tu ne l’utilises pas ; la configuration reste en place. 
Relance simplement avec un double-clic sur `TunnelShare.bat`.

---

## Note : Utilisation de `killport.bat`
Si le serveur ne se ferme pas correctement :
- Lance `killport.bat`.
- Entre le port (ex. `30120`) et suis les instructions.

---

## Et Voilà !
Partage tes fichiers facilement. Des questions ? Vérifie tes installations et configurations.
**- Walto**

---

## Images :
Node Serve :

![image](https://github.com/user-attachments/assets/02966e9f-30a1-4c25-8f44-4e89d716ee32)

TunnelShare + Serve :

![image](https://github.com/user-attachments/assets/feeaf321-4888-44a3-b63b-0b6ab8e0bbc6)

Ngrok :

![image](https://github.com/user-attachments/assets/ee5265f7-94b8-454d-b046-e1406824cb4b)


*Supporte-moi sur [Buy Me a Coffee](https://www.buymeacoffee.com/Walto) si tu trouves ça utile !*
