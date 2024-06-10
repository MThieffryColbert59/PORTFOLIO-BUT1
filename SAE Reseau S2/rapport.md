# Rapport sur l'Installation d'une Machine Virtuelle Debian avec Environnement Graphique MATE

## 1. Introduction

Ce rapport détaille le processus d'installation manuelle d'une machine virtuelle Debian, y compris la configuration de l'environnement graphique MATE et l'ajout d'utilisateurs et de logiciels initiaux. Cette installation servira de base pour automatiser le déploiement ultérieur.

## 2. Prérequis Matériels

Avant de commencer, assurez-vous que la machine physique sur laquelle VirtualBox sera exécuté réponde aux spécifications suivantes :

- **4 Go de RAM minimum**
- **20 Go d'espace disque ou plus**
- **VirtualBox installé avec son "extension pack" (VBoxGuestAddition.iso) sur la machine hôte.**

## 3. Préparation de la Machine Virtuelle

### 3.1 Lancement d'Oracle VM VirtualBox

Avant d'entamer le processus d'installation manuelle, assurez-vous de lancer Oracle VM VirtualBox sur votre machine hôte. Pour démarrer l'interface graphique de VirtualBox et créer une nouvelle machine:
   1. Recherchez et ouvrez l'application Oracle VM VirtualBox sur votre système d'exploitation.![Oracle VirtualBox icone](icone%20virtualBox.jpg)
   2. Appuyer sur l'icone nouvelle.![icone nouvelle machine virtuelle](vm%20VirtualBox%20icone%20nouvelle.png)
   3. Puis entrez les informations selon les caracteristiques ci-dessous.

### 3.2 Caractéristiques à Respecter

Suivez attentivement ces étapes pour créer la machine virtuelle avec les caractéristiques spécifiées :

- Nom de la machine dans VirtualBox : `sae203`
- Dossier de la machine : `/usr/local/virtual_machine/infoetu/login` (Remplacez `login` par votre login)
- Type : Linux
- Version : Debian 64-bit 
    ``` Dans "Debian 64-bit", l'expression "64-bit" fait référence à l'architecture du système d'exploitation Debian, qui est conçu pour fonctionner sur des processeurs 64 bits. Cela signifie que le système d'exploitation peut gérer et utiliser des instructions et des données de 64 bits à la fois, ce qui permet généralement des performances améliorées et une prise en charge de quantités de mémoire plus importantes par rapport aux systèmes d'exploitation 32 bits.```
- Mémoire vive (RAM) : 2048 Mo
![choix ram](choix%20ram.png)
- Disque dur : 20 Go (une seule partition)
![choix stockage](choix%20stockage.png)
- Laisser le reste par défaut.

    ``` La configuration réseau utilisée par défaut dans Debian est généralement NAT (Network Address Translation) par défaut. NAT est une méthode qui permet de traduire les adresses IP et les ports utilisés dans un réseau privé en adresses IP visibles sur l'Internet public. Cela permet aux dispositifs dans le réseau privé d'accéder à Internet en utilisant une seule adresse IP publique.```

    ``` Le nom du fichier XML contenant la configuration de votre machine dépend du type de virtualisation utilisé (par exemple, si vous utilisez VirtualBox, VMWare, ou un autre logiciel de virtualisation). Il pourrait s'agir de fichiers tels que "vm.xml" pour libvirt, "config.xml" pour VirtualBox, ou d'autres noms similaires.```

    ``` Il est généralement possible de modifier directement le fichier de configuration pour attribuer davantage de ressources matérielles à votre machine virtuelle, comme l'ajout de processeurs. Cependant, les détails précis sur la manière de le faire dépendent du logiciel de virtualisation utilisé et de sa syntaxe de configuration spécifique. En règle générale, vous devrez modifier les paramètres appropriés dans le fichier de configuration pour spécifier le nombre de processeurs désiré, puis redémarrer la machine virtuelle pour que les changements prennent effet. Assurez-vous de sauvegarder le fichier de configuration avant d'apporter des modifications, au cas où quelque chose ne se passerait pas comme prévu.```

Après avoir saisi ces informations et les avoir validées, le matériel de la machine virtuelle sera créé. Un lecteur de CD-ROM virtuel sera disponible par défaut pour l'installation du système d'exploitation à partir d'une image ISO bootable.

## 4 Installation Manuelle

### 4.1 Configuration prè-lancement

Avant de commencer l'installation manuelle, assurez-vous d'avoir une image ISO bootable de l'installation de Debian 11 ou Debian 12 (amd64). Vous pouvez récupérer l'ISO d'installation réseau sur le site officiel de Debian. Ces fichiers ont une taille d'environ 400 Mo et 600 Mo respectivement.

    ``` Un fichier ISO bootable est une image de disque conçue pour être utilisée comme support d'installation ou de démarrage pour un système d'exploitation. Lorsque vous gravez un fichier ISO sur un CD ou un DVD, ou que vous le copiez sur une clé USB, vous obtenez un support amorçable qui peut être utilisé pour installer ou démarrer un système d'exploitation sur un ordinateur.```

Pour récupérer l'ISO depuis le site officiel de Debian, suivez ces étapes :

1. Accédez au site [Debian](lien_vers_le_site_officiel_debian).
2. Recherchez la section des téléchargements et sélectionnez la version appropriée (Debian 11 ou Debian 12, amd64).
3. Téléchargez l'ISO d'installation réseau.

Une fois que vous avez obtenu l'ISO, il faut ouvrir la panneau de configuration grâce à cette icône :
![icone configuration](icone%20configuration.png)

Dans l’onglet stockage vous pouvez changer de disque de système d’exploitation :
![changement du disque de systeme d'exploitation](changement%20du%20disque%20de%20systeme%20d'exploitation.png)

En cas de difficultés, référez-vous à la documentation Debian disponible sur le [guide Debian](lien_vers_le_guide).

### 4.2 Configuration

Vous pouvez enfin demarrer votre machine et suivre la configuration en entrant ces information:

- Nom de la machine (à l’installation) : serveur
- Domaine : Laisser vide
- Pays/langue : France
- Miroir : [http://debian.polytech-lille.fr](http://debian.polytech-lille.fr)
- Proxy : pas de proxy
- Compte administrateur : root / root
- Un compte utilisateur : User / user / user
- Partition : 1 seule partition de la taille du disque
- Sélection des logiciels de démarrage (Paquetages logiciels à préinstaller pour se simplifier la vie par la suite) :
  - environnement de bureau Debian
  - … MATE (penser à décocher Gnome)
  
    ``` MATE et GNOME sont tous deux des environnements de bureau pour les systèmes d'exploitation basés sur Linux, comme Ubuntu. MATE est connu pour son interface plus traditionnelle et légère, tandis que GNOME offre une expérience plus moderne et riche en fonctionnalités. MATE est souvent préféré par les utilisateurs cherchant une interface plus familière et plus simple, notamment pour les débutants.```
    
  - serveur web
  
    ``` Un serveur web est un logiciel qui s'exécute sur un ordinateur et qui stocke les fichiers constituant un site web. Il répond aux requêtes HTTP des clients (navigateurs web) en leur envoyant les fichiers demandés, ce qui permet aux utilisateurs d'accéder au contenu du site via Internet.```
    
  - serveur ssh
    
    ``` Un serveur SSH est un serveur qui prend en charge le protocole SSH (Secure Shell). SSH est un protocole réseau sécurisé qui permet aux utilisateurs de se connecter à distance à un ordinateur via un canal chiffré. Les administrateurs système utilisent souvent SSH pour accéder à distance à des serveurs et exécuter des commandes en ligne de commande de manière sécurisée.```
    
  - utilitaire usuels du système
    ``` Un serveur mandataire, également appelé serveur proxy, est un serveur informatique qui agit en tant qu'intermédiaire entre un poste client et un serveur cible. Il reçoit les requêtes des clients et les transmet au serveur cible, puis renvoie les réponses du serveur cible au client. Les serveurs mandataires sont souvent utilisés pour filtrer le trafic, améliorer les performances et renforcer la sécurité.```

## 5 Gestion de la machine

### 5.1 Accès sudo pour user

L'attribution d'un accès sudo à l'utilisateur facilitera la gestion du système, bien que dans des situations réelles, cela ne soit pas obligatoire et puisse être considéré comme une fragilité. Suivez ces étapes :

- Passer en mode console : `Ctrl + Alt + F1` (si cela vous met en plein écran, vous n'êtes pas dans la console de la machine virtuelle).
- Se connecter en tant que root: login = root et mot de passe = root.(pour changer d'utilisateur à root 'su root')
- Ajouter le groupe sudo à votre utilisateur principal (sudo gpasswd -a <nom de l'utilisateur> sudo). Et pour voir qui a les droits sudo: 'usermod -aG sudo <nom de l'utilisateur>'.
- Recharger votre session.

Vous pouvez maintenant utiliser la commande `sudo` avec le compte utilisateur.
La version du noyau Linux utilisée par votre machine virtuelle est la 6.1.0-17-amd64, comme indiqué par la commande "uname -r".

### 5.2 Installation des Suppléments Invités

Les suppléments invités sont des logiciels supplémentaires fournis par des programmes de virtualisation comme VirtualBox ou VMware. Deux principales raisons de les installer sont :

- Redimensionner : Les suppléments invités permettent souvent de redimensionner dynamiquement la fenêtre de la machine virtuelle, offrant une meilleure adaptation à l'environnement d'affichage de l'hôte.

- Amélioration de l'environnement de travail : Ils offrent souvent des fonctionnalités supplémentaires telles que le partage de fichiers entre l'hôte et la machine virtuelle, le glisser-déposer de fichiers, l'intégration du presse-papiers, etc., ce qui améliore considérablement l'expérience de l'utilisateur dans la virtualisation.

Pour ajouter les suppléments invités, nous allons devoir compiler des programmes. Il nous faut donc des outils de compilation et les fichiers d’en-têtes du noyau Linux utilisé. Suivez ces étapes :

1. Insérer le CD des suppléments : `Périphériques › Insérer l’image CD des additions invités…`
2. Pour monter le CD entrez dans le terminal :
   - sudo mount /dev/cdrom /mnt
    ``` Pour information la commande "mount" est utilisée pour attacher un système de fichiers à un point de montage dans la hiérarchie du système de fichiers. En d'autres termes, elle permet d'accéder à un système de fichiers en le liant à un emplacement spécifique dans le système de fichiers existant. Cela permet aux utilisateurs d'accéder au contenu du système de fichiers monté comme s'il faisait partie intégrante de la hiérarchie du système de fichiers local.```
3. Pour installer les suppléments entrez dans le terminal :
   - sudo /mnt/VBoxLinuxAdditions.run
4. Eteignez et redemarrez la machine, vous conctatez que vous pouvez mettre la machine en pleine écran.

## 6 Quelques informations sur debian

Le Projet Debian est une initiative mondiale de volontaires visant à créer un système d'exploitation composé exclusivement de logiciels libres. Le nom Debian trouve son origine dans les prénoms de ses créateurs, Ian Murdock et son épouse, Debra1.

Le Projet Debian offre trois durées de prise en charge pour ses versions : la durée minimale, la durée en support long terme (LTS), et la durée en support long terme étendue (ELTS). La durée minimale est généralement de 5 ans, la durée LTS est de 5 ans supplémentaires, et l'ELTS offre un prolongement commercial de 10 ans2.

Les mises à jour de sécurité sont fournies gratuitement à tous les utilisateurs Debian, sans date de fin2.

Debian maintient activement au moins trois versions majeures : stable (actuellement Debian 12 "Bookworm"), testing, et unstable3.

Les noms de code des différentes versions de Debian sont inspirés des personnages du film d'animation "Toy Story" des studios Pixar Animation Studios4.

Debian prend en charge huit architectures officielles dans la version Bullseye, dont PC 32 bits (i386), PC 64 bits (amd64), ARM 64 bits (arm64), ARM EABI (armel), ARMv7 (armhf), MIPS mipsel, MIPS 64 bits petit-boutiste (mips64el), PowerPC 64 bits petit-boutiste (ppc64el), et IBM System z (s390x)5.

Le premier nom de code de Debian était "Buzz", annoncé le 17 juin 1996, avec le numéro de version 1.1.
Projet Debian - Introduction ↩


[Versions de Debian](https://fr.wikipedia.org/wiki/Historique_des_versions_de_Debian)

## 7 Installation préconfigurée

Comme illustré dans la section sur l'Installation automatisée, l'image ISO d'installation de Debian 11 propose une option avancée permettant d'automatiser le processus d'installation. Cette fonctionnalité est également disponible pour la version actuelle de Debian 12. Elle offre la possibilité de valider automatiquement les choix par défaut, éliminant ainsi la nécessité de rester devant l'ordinateur pendant l'ensemble de l'installation, sans devoir surveiller d'éventuelles étapes demandant une action spécifique.


![installation automatisée](installation%20automatisée.PNG)

## 8  Automatisation

### 8.1 Fichiers de Pré-configuration

Pour faciliter la pré-configuration de votre machine virtuelle, suivez ces étapes :

1. Récupérez l'archive `autoinstall_Debian.zip` depuis Moodle et décompressez-la dans le répertoire de votre machine virtuelle.

2. Remplacez la chaîne `@@UUID@@` par un identifiant unique universel en exécutant la commande suivante dans le même répertoire que votre fichier `S203-Debian12.viso` :
   ```bash
   sed -i -E "s/(--iprt-iso-maker-file-marker-bourne-sh).*$/\1=$(cat /proc/sys/kernel/random/uuid)/" S203-Debian12.viso```

3. Entrez ces commandes afin de configurer et avoir une interface graphique

![commande automatisation et installation d'une interface graphique](commande%20automatisation.png)


# Conclusion
Cette section guide l'utilisateur à travers les étapes nécessaires pour pré-configurer la machine virtuelle en vue d'une installation automatisée. 