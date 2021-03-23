# MaraWeb Kayla : La science au service du sport


## Descriptif du projet :

Il s’agit de rendre accessible aux amoureux du sport les dernières tendances concernant leur discipline sportive, à la fois en termes d’objectifs (e.g. réduire sa fatigue, améliorer son souffle, aller plus vite…), de préparation sportive (entrainement, récupération, programme de nutrition…), mais aussi de solution santé (ou thérapie non-médicamenteuse (TNM) comme la relaxation, la consommation de jus de betterave…) pour améliorer ses performances sportives.

## Descriptif jeu de donnée :

Chaque publication fait le lien entre un ou des sports, un ou des objectifs (out), une ou des interventions non médicamenteuses (npi)
On a donc une grande liste de tryptiques inm-objectif-sport, nous avons beaucoup de valeurs manquantes 

- Nombre de fichiers : 3    
- Format : CSV, séparateur : |    
- Taille du fichier principal : sport.csv 14,3 MO     
- Tailles des deux autre fichier : annotated 424 ko,       
                                 Marathon web_outcomes_detection 57ko.          

### Les variables
Les variables sont les suivantes :   
- 'pmid' : identifiant PubMed de l'article   
- 'doi' : identifiant international de l'article     
- 'npi' : non-internventional intervention, ce que nous appellons les TNM pour thérapie non médicamenteuse     
- 'ttl': title de l'article     
- 'jn': journalname - nom du journal de l'article     
- 'pub' : date de publication de l'article     
- 'hg' : Health Goal (Prevent, Care or Cure pour Prévention, soin ou guérision)     
- 'pop' : type de population étudiée Adulte, Agée, Enfant...      
- 'out' : outcome - correspond au résultat ### Attention à filtrer les catégories economical et health ne présentent pas d'intérêt ici ###     
- 'abs' : abstract      
- 'stype' : study type il s'agit du mode de réalisatin de l'étude revue systématique de al littérature, études comparatives etc.    
- 'cntry' : country (pays du 1er auteur)     
- 'rd' : research design (décrit la façon dont l'étude a été réalisée interventionnelle, observationnelle...)    
- 'method': lié au type d'étude (SR: revue systématique de la littérature, MA: méta-analyses, RCT: essai clinique randommisé...)       
- 'sport' : sports concernés      

## Objectifs :

### Premier objectif :

Proposer un outil / interface qui permette aux pratiquants de naviguer dans ces données.

- Il peut rechercher un sport, et voir les objectifs et les solutions disponibles
- Il peut rechercher un objectif dans un sport, et trouver les inm disponibles
- Il peut rechercher une inm, et voir quels effets (objectifs) elle a sur quels sports

Exemples applicatifs : 
- je suis danseur et je cherche à améliorer ma souplesse. Je recherche donc sport danse et objectif souplesse, et je vais trouver que l'huile essentielle de patchoulis permet ça (exemple complètement fictif, évidemment!)
- je suis footeux et je cherche à m'améliorer, je choisis le foot, et j'ai une liste de ce que je peux améliorer (objectifs), et en choisissant un objectif, j'ai des méthodes (npi) et éventuellement accès aux publications qui en parlent
- j'ai du curcuma à la maison, je me demande si ça peut améliorer des pratiques, je sélectionne curcuma (npi) et ça me donne ce que ça peut améliorer (out) dans quels sports

### Deuxième objectif

Proposer des outils de navigation graphiques (dataviz), de l'info synthétique (dataviz), des stats descriptives (les inm les plus étudiées par sport, le top 10...)

### Troisième objectif

Déterminer le niveau d'efficacité (peu efficace, relativement efficace, très efficace) pour chaque tryptique sport-inm-objectif (apprentissage) 

## Outils de gestion :
Lien trello : https://trello.com/b/9NsPyYEl/kalya     
Github     
Google Drive : https://drive.google.com/drive/u/0/folders/1pJLMzTziITUB9jIHFY_s591EGBLtUHrp     

