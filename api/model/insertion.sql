-- ROLE --
INSERT INTO roles(name,"createdAt","updatedAt") values('vendeur',CURRENT_DATE,CURRENT_DATE);
INSERT INTO roles(name,"createdAt","updatedAt") values('acheteur',CURRENT_DATE,CURRENT_DATE);
INSERT INTO roles(name,"createdAt","updatedAt") values('admin',CURRENT_DATE,CURRENT_DATE);

-- USER --
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('nathan38','nathan','hugon','azerty','nathan.nathan@gmail.com',1,'2000-01-01',CURRENT_DATE,CURRENT_DATE,1);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('milo73','milo','niemaz','123456','milo.olim@gmail.com',0,'2001-12-25',CURRENT_DATE,CURRENT_DATE,1);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('etienne93','etienne','chazelle','poiuy','eti.enne@gmail.com',2,'2003-11-03',CURRENT_DATE,CURRENT_DATE,1);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('lilian22','lilian','gardon','zqsd','lil.yann@gmail.com',0,'2003-03-01',CURRENT_DATE,CURRENT_DATE,1);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('adrien_le_ouf','adrien','ligne','ytreza','adrien.ad@gmail.com',1,'2002-06-29',CURRENT_DATE,CURRENT_DATE,1);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('marie_dupont','marie','dupont','motdepasse','marie.dupont@gmail.com',0,'1990-01-01',CURRENT_DATE,CURRENT_DATE,1);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('paul_henry','paul','henry','motdepasse','paul.henry@gmail.com',0,'1985-03-15',CURRENT_DATE,CURRENT_DATE,1);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('julie_martin','julie','martin','motdepasse','julie.martin@gmail.com',0,'1995-09-30',CURRENT_DATE,CURRENT_DATE,1);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('lucie_dufour','lucie','dufour','motdepasse','lucie.dufour@gmail.com',0,'2000-05-12',CURRENT_DATE,CURRENT_DATE,1);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('antoine_lefebvre','antoine','lefebvre','motdepasse','antoine.lefebvre@gmail.com',0,'1997-07-22',CURRENT_DATE,CURRENT_DATE,1);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('alexis_73','alexis','pretti','123abc','alexis.lebg@gmail.com',2,'2000-01-01',CURRENT_DATE,CURRENT_DATE,2);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('doigby_le_bg','doigby','porc','tuescapable','om.g@gmail.com',0,'1985-10-20',CURRENT_DATE,CURRENT_DATE,2);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('vladimirUwU','vladimir','patine','satan2','vladimir.ovitch@gmail.com',0,'1960-08-08',CURRENT_DATE,CURRENT_DATE,2);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('raymond01','raymond','roukmout','poooooooooo2','raie.mont@orange.fr',2,'1949-05-14',CURRENT_DATE,CURRENT_DATE,2);
INSERT INTO users(login,nom,prenom,password,email,nb_strikes,date_naiss,"createdAt","updatedAt","roleId") values('bob_la_saumure','bob','lemard','obo','bob.obo@gmail.com',1,'1999-01-10',CURRENT_DATE,CURRENT_DATE,3);

-- ARTICLE --
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('cardigan colore',30.0,'cardigan en laine d un troupeau de mouton de la creuse',CURRENT_DATE,CURRENT_DATE+1,'rouge,vert,jaune,bleu,rose','laine','M',40.0,CURRENT_DATE,1);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('t-shirt vert',5.0,'t-shirt de couleur verte en coton bio',CURRENT_DATE,CURRENT_DATE+1,'vert','coton','S',8.0,CURRENT_DATE,2);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('tricot vintage',10.0,'tricot de grand-mère iconique',CURRENT_DATE,CURRENT_DATE+1,'blanc','laine','XL',20.0,CURRENT_DATE,3);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('polaire recyclee',8.0,'polaire conçue avec des bouteilles en plastique recylees',CURRENT_DATE,CURRENT_DATE+1,'noir','polyester','L',15.0,CURRENT_DATE,2);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('foulard doux',75.0,'foulard en soie de grande qualite',CURRENT_DATE,CURRENT_DATE+1,'blanc,jaune,noir','soie','S',100.0,CURRENT_DATE,4);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('chaussettes de Noël',10.0,'chaussettes pour les fêtes en cachemire',CURRENT_DATE,CURRENT_DATE+1,'blanc,rouge','cachemire','XS',18.0,CURRENT_DATE,5);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('pull en cachemire',40.0,'pull en cachemire pour les jours froids',CURRENT_DATE,CURRENT_DATE+1,'gris','cachemire','L',50.0,CURRENT_DATE,1);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('robe en dentelle',50.0,'robe en dentelle pour les soirées',CURRENT_DATE,CURRENT_DATE+1,'noir','dentelle','M',70.0,CURRENT_DATE,3);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('chapeau de paille',15.0,'chapeau de paille pour les jours d été',CURRENT_DATE,CURRENT_DATE+1,'marron','paille','S',20.0,CURRENT_DATE,2);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('sac à main en cuir',70.0,'sac à main en cuir pour les occasions spéciales',CURRENT_DATE,CURRENT_DATE+1,'noir','cuir','M',100.0,CURRENT_DATE,4);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('gilet en laine',20.0,'gilet en laine pour les jours frais',CURRENT_DATE,CURRENT_DATE+1,'gris','laine','XL',30.0,CURRENT_DATE,5);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('jupe en lin',25.0,'jupe en lin pour les jours chauds',CURRENT_DATE,CURRENT_DATE+1,'blanc, marron','lin','S',40.0,CURRENT_DATE,1);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('veste en cuir',80.0,'veste en cuir pour les soirées en ville',CURRENT_DATE,CURRENT_DATE+1,'marron','cuir','M',120.0,CURRENT_DATE,2);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('écharpe en laine',20.0,'écharpe en laine pour les jours d hiver',CURRENT_DATE,CURRENT_DATE+1,'gris','laine','S',30.0,CURRENT_DATE,3);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('chemise en coton',25.0,'chemise en coton pour les journées d été',CURRENT_DATE,CURRENT_DATE+1,'blanche','coton','L',40.0,CURRENT_DATE,4);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('short en jean',30.0,'short en jean pour les journées d été',CURRENT_DATE,CURRENT_DATE+1,'bleu','jean','S',40.0,CURRENT_DATE,5);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('pantalon en lin',40.0,'pantalon en lin pour les journées d été',CURRENT_DATE,CURRENT_DATE+1,'blanc','lin','M',60.0,CURRENT_DATE,1);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('soutien-gorge en dentelle',15.0,'soutien-gorge en dentelle pour les soirées spéciales',CURRENT_DATE,CURRENT_DATE+1,'noir','dentelle','S',20.0,CURRENT_DATE,2);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('pantalon en velours',40.0,'pantalon en velours pour les soirées habillées',CURRENT_DATE,CURRENT_DATE+1,'noir','velours','M',60.0,CURRENT_DATE,4);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('t-shirt à message',15.0,'t-shirt avec un message inspirant',CURRENT_DATE,CURRENT_DATE+1,'blanc','coton','L',20.0,CURRENT_DATE,5);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('robe en dentelle',50.0,'robe en dentelle pour les soirées de gala',CURRENT_DATE,CURRENT_DATE+1,'rouge','dentelle','S',70.0,CURRENT_DATE,6);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('pull en cachemire',40.0,'pull en cachemire pour les jours froids',CURRENT_DATE,CURRENT_DATE+1,'gris','cachemire','L',50.0,CURRENT_DATE,7);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('soutien-gorge en dentelle',15.0,'soutien-gorge en dentelle pour les soirées spéciales',CURRENT_DATE,CURRENT_DATE+1,'noir','dentelle','S',20.0,CURRENT_DATE,8);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('sac à main en cuir',70.0,'sac à main en cuir pour les occasions spéciales',CURRENT_DATE,CURRENT_DATE+1,'noir','cuir','M',100.0,CURRENT_DATE,9);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('chapeau en feutre',25.0,'chapeau en feutre pour les jours d automne',CURRENT_DATE,CURRENT_DATE+1,'marron','feutre','S',35.0,CURRENT_DATE,10);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('écharpe en laine',20.0,'écharpe en laine pour les jours d hiver',CURRENT_DATE,CURRENT_DATE+1,'rouge','laine','L',30.0,CURRENT_DATE,1);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('veste en cuir',100.0,'veste en cuir pour un look élégant',CURRENT_DATE,CURRENT_DATE+1,'noir','cuir','L',120.0,CURRENT_DATE,2);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('sac à main en cuir',70.0,'sac à main en cuir pour les occasions spéciales',CURRENT_DATE,CURRENT_DATE+1,'marron','cuir','M',90.0,CURRENT_DATE,3);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('baskets en toile',40.0,'baskets en toile pour les jours actifs',CURRENT_DATE,CURRENT_DATE+1,'blanc,noir','toile','M',50.0,CURRENT_DATE,4);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('robe de soirée',90.0,'robe de soirée en dentelle pour les soirées de gala',CURRENT_DATE,CURRENT_DATE+1,'noir','dentelle','S',120.0,CURRENT_DATE,5);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('chaussures en cuir',60.0,'chaussures en cuir pour les occasions spéciales',CURRENT_DATE,CURRENT_DATE+1,'marron','cuir','M',80.0,CURRENT_DATE,6);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('maillot de bain',30.0,'maillot de bain en élasthanne pour la plage',CURRENT_DATE,CURRENT_DATE+1,'bleu','élasthanne','M',40.0,CURRENT_DATE,7);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('cravate en soie',20.0,'cravate en soie pour les occasions professionnelles',CURRENT_DATE,CURRENT_DATE+1,'rouge','soie','S',30.0,CURRENT_DATE,8);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('t-shirt à imprimé graphique',15.0,'t-shirt à imprimé graphique pour un look décontracté',CURRENT_DATE,CURRENT_DATE+1,'noir','coton','M',20.0,CURRENT_DATE,9);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('lunettes de soleil en acétate',25.0,'lunettes de soleil en acétate pour se protéger les yeux',CURRENT_DATE,CURRENT_DATE+1,'noir','acétate','L',35.0,CURRENT_DATE,10);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('chaussettes en laine',10.0,'chaussettes en laine pour les jours d hiver',CURRENT_DATE,CURRENT_DATE+1,'gris','laine','XS',15.0,CURRENT_DATE,1);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('épingles à cheveux en perles',15.0,'épingles à cheveux en perles pour les occasions spéciales',CURRENT_DATE,CURRENT_DATE+1,'blanc','perles','XS',20.0,CURRENT_DATE,2);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('collier en argent',50.0,'collier en argent pour un look élégant',CURRENT_DATE,CURRENT_DATE+1,'argent','argent','M',70.0,CURRENT_DATE,3);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('montre en acier',70.0,'montre en acier pour un look décontracté',CURRENT_DATE,CURRENT_DATE+1,'acier','acier','M',100.0,CURRENT_DATE,4);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('chemise en coton',30.0,'chemise en coton pour un look décontracté',CURRENT_DATE,CURRENT_DATE+1,'blanche','coton','M',40.0,CURRENT_DATE,5);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('jupe en cuir',50.0,'jupe en cuir pour un look élégant',CURRENT_DATE,CURRENT_DATE+1,'noir','cuir','S',60.0,CURRENT_DATE,6);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('pantalon en lin',40.0,'pantalon en lin pour les jours d été',CURRENT_DATE,CURRENT_DATE+1,'blanc','lin','L',50.0,CURRENT_DATE,7);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('pull en laine',30.0,'pull en laine pour les jours frais',CURRENT_DATE,CURRENT_DATE+1,'gris','laine','M',40.0,CURRENT_DATE,8);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('robe en dentelle',50.0,'robe en dentelle pour les soirées de gala',CURRENT_DATE,CURRENT_DATE+1,'noir','dentelle','S',60.0,CURRENT_DATE,9);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('veste en cuir',70.0,'veste en cuir pour un look décontracté',CURRENT_DATE,CURRENT_DATE+1,'marron','cuir','L',80.0,CURRENT_DATE,10);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('pantalon en velours',50.0,'pantalon en velours pour un look élégant',CURRENT_DATE,CURRENT_DATE+1,'noir','velours','L',60.0,CURRENT_DATE,1);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('chemise en soie',40.0,'chemise en soie pour les occasions spéciales',CURRENT_DATE,CURRENT_DATE+1,'blanche','soie','M',50.0,CURRENT_DATE,2);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('robe en laine',60.0,'robe en laine pour les jours d hiver',CURRENT_DATE,CURRENT_DATE+1,'grise','laine','S',70.0,CURRENT_DATE,3);
INSERT INTO articles(titre,prix_depart,description,"createdAt",expires,couleurs,materiaux,taille,seuil_reserve,"updatedAt","vendeurId") values('blazer en lin',50.0,'blazer en lin pour les jours d été',CURRENT_DATE,CURRENT_DATE+1,'beige','lin','M',60.0,CURRENT_DATE,4);

-- ENCHERE --
INSERT INTO encheres(montant,date,"createdAt","updatedAt","userId","articleId") values(30.0,CURRENT_DATE,CURRENT_DATE,CURRENT_DATE,1,1);
INSERT INTO encheres(montant,date,"createdAt","updatedAt","userId","articleId") values(5.0,CURRENT_DATE,CURRENT_DATE,CURRENT_DATE,2,2);
INSERT INTO encheres(montant,date,"createdAt","updatedAt","userId","articleId") values(10.0,CURRENT_DATE,CURRENT_DATE,CURRENT_DATE,3,3);
INSERT INTO encheres(montant,date,"createdAt","updatedAt","userId","articleId") values(8.0,CURRENT_DATE,CURRENT_DATE,CURRENT_DATE,4,2);
INSERT INTO encheres(montant,date,"createdAt","updatedAt","userId","articleId") values(100.0,CURRENT_DATE,CURRENT_DATE,CURRENT_DATE,5,4);
INSERT INTO encheres(montant,date,"createdAt","updatedAt","userId","articleId") values(10.0,CURRENT_DATE,CURRENT_DATE,CURRENT_DATE,6,5);

-- IMAGE --
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://ags-live.cdn.aboutyou.cloud/images/7a45553a26c0498afe3e644a2e728584.jpg?brightness=1&width=768&height=1024&quality=75&bg=FFFFFF',CURRENT_DATE,CURRENT_DATE,1);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://ags-live.cdn.aboutyou.cloud/images/a14c8908f640ea05931656059f88aee1.jpg?brightness=1&width=768&height=1024&quality=75&bg=FFFFFF',CURRENT_DATE,CURRENT_DATE,1);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://ags-live.cdn.aboutyou.cloud/images/0781ea72bafce7639a3a75938f88e6a9.jpg?brightness=1&width=768&height=1024&quality=75&bg=FFFFFF',CURRENT_DATE,CURRENT_DATE,1);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://www.couleurdenuit.com/18225-thickbox_default/t-shirt-fluo-homme-vert.jpg',CURRENT_DATE,CURRENT_DATE,2);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://www.couleurdenuit.com/18224-thickbox_default/t-shirt-fluo-homme-vert.jpg',CURRENT_DATE,CURRENT_DATE,2);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://www.gabbavintage.com/wp-content/uploads/2022/01/COL-V-Pull-Vintage-80s-Mailles-Blanc-2.jpg',CURRENT_DATE,CURRENT_DATE,3);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://www.gabbavintage.com/wp-content/uploads/2022/01/COL-V-Pull-Vintage-80s-Mailles-Blanc-1.jpg',CURRENT_DATE,CURRENT_DATE,3);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://ntextil-a1a5.kxcdn.com/files/model_specifications/2022/8/31/1102398/1102398_big.jpg?1661929055',CURRENT_DATE,CURRENT_DATE,4);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://ntextil-a1a5.kxcdn.com/files/model_specifications/2022/8/31/1102398/1102398_left_big.jpg?1661929060',CURRENT_DATE,CURRENT_DATE,4);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://ntextil-a1a5.kxcdn.com/files/model_specifications/2022/8/31/1102398/1102398_back_big.jpg?1661929059',CURRENT_DATE,CURRENT_DATE,4);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://www.princessefoulard.com/11970-large_6_4/homme-luxe.jpg',CURRENT_DATE,CURRENT_DATE,5);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://www.princessefoulard.com/11967-large_6_4/homme-luxe.jpg',CURRENT_DATE,CURRENT_DATE,5);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://mafabriqueperso.fr/2819-large_default/chaussette-de-noel.jpg',CURRENT_DATE,CURRENT_DATE,6);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://mafabriqueperso.fr/2847-large_default/chaussette-de-noel.jpg',CURRENT_DATE,CURRENT_DATE,6);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_01fda_1BP5fqBgCwRWijG7rfdp2onZ/f800/1673615592.jpeg?s=8f8355c6f146520a9397ef52636346e8bd6e9e88',CURRENT_DATE,CURRENT_DATE,7);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_02223_TJ8FoGVMAcYPQcWa33hmoKcN/f800/1673615592.jpeg?s=2e8280e91bda9bc6b75994c94c2db316dd304006',CURRENT_DATE,CURRENT_DATE,7);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_02519_uJuLSAhAmRuKGW9vQUSQmxVZ/f800/1673871804.jpeg?s=156d323a7aa35f6c59f0a57530f851f8c005f494',CURRENT_DATE,CURRENT_DATE,8);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_01f07_ZMRiDGidDLiSR6w5eq8ZfRYV/f800/1673865545.jpeg?s=79b130889d9001e8a04adfd6a66b96cce18e5872',CURRENT_DATE,CURRENT_DATE,9);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_01c82_YAu5zd75dpRo5jjHuBDaDMaz/f800/1673865545.jpeg?s=ea554217ca1a0e4f7c9f1f0b365bfb6eb92dfc5f',CURRENT_DATE,CURRENT_DATE,9);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_020b8_5YFjxrHmkdipbbonnj2JgVKS/f800/1671382711.jpeg?s=3abe53a78322dd32532e59f120e69673c73f2c59',CURRENT_DATE,CURRENT_DATE,10);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_00aaf_4219jTh8fGo1J1N4ES45TFbv/f800/1673879723.jpeg?s=087741a8b51f04c41c43dd2deb2128b9d68bc1f6',CURRENT_DATE,CURRENT_DATE,11);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_01e5c_3CCBsP1rZpH47y6f8dUvQKKB/f800/1605081708.jpeg?s=01f20dc57780025afc95019cb9e20ea9a0a6fcd7',CURRENT_DATE,CURRENT_DATE,12);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_0022b_2gk3pUnZ6PXv8Jc7WqpWvWgi/f800/1605174993.jpeg?s=40c0ec42478d1744e6b5726ad17f07bdbb947cfb',CURRENT_DATE,CURRENT_DATE,12);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_01956_WovCNQpn2s9hQscineXKhvHX/f800/1672671445.jpeg?s=b47ee3f6aced7607d3a25d0130886bc67cd1d687',CURRENT_DATE,CURRENT_DATE,13);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_01c79_m56jRjfXTNLWMdpiAwXDfDvs/f800/1672671445.jpeg?s=9d7da9e1afd79daa1abd6b680865b8f151197e00',CURRENT_DATE,CURRENT_DATE,13);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_0094e_svtLychcokzjsZpGwu1HeeFu/f800/1673003009.jpeg?s=49ba1b92b936801b82097db8ef0eba1703bcd752',CURRENT_DATE,CURRENT_DATE,14);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_0106f_c4xyUhF1Xyxai6vsXMDhFCLd/f800/1673003009.jpeg?s=1f37a0ca94d5e8656e4b0decc5d56ce7cbff4ab9',CURRENT_DATE,CURRENT_DATE,14);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_01920_NMJtZcM9N5vmP2k4yDsMTvZF/f800/1658743901.jpeg?s=20b8d484e1c6348a7c4b621f59fb34e3a9b15cc9',CURRENT_DATE,CURRENT_DATE,15);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_02543_MpLFv1GvCk5dnkH6pqrqUCX6/f800/1658743901.jpeg?s=54e2f2a3bae8d0116e68223469cd51877eca0bee',CURRENT_DATE,CURRENT_DATE,15);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_01c77_ZH6NHrScNqf3Uhuntvd2cnhW/f800/1672226129.jpeg?s=9473e077c4cf317f1df3d7825c95704d3bdff47b',CURRENT_DATE,CURRENT_DATE,16);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_00e16_bQKyz9aaKjAdYCBqYNTL2czF/f800/1672226129.jpeg?s=8d896dc166b2ce98c6da77f71913ea3df9ec852b',CURRENT_DATE,CURRENT_DATE,16);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_00519_ErMgkZ7PYTTSUMosvBUqCKMS/f800/1673877867.jpeg?s=fedacca1847a6d4f96764d6d81adf15e09eed161',CURRENT_DATE,CURRENT_DATE,17);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_0003b_ax5eucxGDeYmgNNEYc1HW9ds/f800/1673804202.jpeg?s=abf028f4cc759940297f970c8065ff248fee4366',CURRENT_DATE,CURRENT_DATE,18);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_00337_NxLS4qnJAJRoEEJxrxZbmCqF/f800/1673695728.jpeg?s=186e0c93b626d471f6e0df44284898ed0094b88c',CURRENT_DATE,CURRENT_DATE,19);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_01d1c_ckv9nKask3XSge4SLTzJyYLD/f800/1673695728.jpeg?s=8987d4dc17448a251ecaa2699657259e854f5e77',CURRENT_DATE,CURRENT_DATE,19);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_01d4b_25Hj7R9iD3FYKxSfDQCfsFmq/f800/1652702652.jpeg?s=064e43bec427e7d1692787c7a79624193e0ea96f',CURRENT_DATE,CURRENT_DATE,20);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_003e1_cSfeur2Dqo7DQ9Kw9wP4xXsn/f800/1663521015.jpeg?s=436a42a8aef99bfad1e35fac7f34a9b38ea9595d',CURRENT_DATE,CURRENT_DATE,21);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_016f0_nNu8JnqSRzEZGfDYdZgaSxN2/f800/1663521015.jpeg?s=95ceba2e018225f562ac809d8b9d9e30afc15a5e',CURRENT_DATE,CURRENT_DATE,21);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_00b4e_yT78w7o84tXnNapzh6HKm2nB/f800/1673864853.jpeg?s=bc48c7963054dc14b5598f7435d88ecb3fe13bf7',CURRENT_DATE,CURRENT_DATE,22);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_00308_reVtLWk8f3RMexyVC5RK2A15/f800/1673864853.jpeg?s=3ffe2b61cff943e32aed0d705e8f2ffdc04e2b35',CURRENT_DATE,CURRENT_DATE,22);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_0061e_U9cqnNtdz2WUm4UTCEjtjDxW/f800/1665750646.jpeg?s=084a232c9923a214f1965612087e364d2c32acf8',CURRENT_DATE,CURRENT_DATE,23);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_01ee3_euxXPdh8UTPMmsT6ogML887g/f800/1665750646.jpeg?s=5d26a36fa3aeaf61722082535e0a947533d15d7f',CURRENT_DATE,CURRENT_DATE,23);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_00a60_GyxNqEGg7M3mNQ3nzLd9KhzD/f800/1671984318.jpeg?s=869d7de9e238230a35c2f83465f9a34dfb09af26',CURRENT_DATE,CURRENT_DATE,24);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_005ff_ihSmzCV2E8Zh1qLvdHcz1UQK/f800/1671984318.jpeg?s=a03425d7fad33f20b90daaf9e1ae72bc6bebba01',CURRENT_DATE,CURRENT_DATE,24);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_0117a_hA2VPZSGFTNBiMWTftsFmjTN/f800/1673787491.jpeg?s=f65a21bc3575878ffa8b8d4391752005a7e0abc6',CURRENT_DATE,CURRENT_DATE,25);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_00481_d8YFUfYaS6Fc3Pba8MoGw6xB/f800/1673787491.jpeg?s=e6a293a65e14cf0948d3461c06f0d4cccc422f39',CURRENT_DATE,CURRENT_DATE,25);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_00c0b_cpwayT488j8XJ4MsAB2NPDQG/f800/1669063464.jpeg?s=c991af1b77c7fb3b575e7177bd98f9e643942070',CURRENT_DATE,CURRENT_DATE,26);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_00829_q2yzUXJGZZCd1mcnfwPxsBgo/f800/1673868896.jpeg?s=d2beafcb42272a23e165b24057250bd6f9690e82',CURRENT_DATE,CURRENT_DATE,27);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_00245_8QDbHpzTjJhbtyZBswMfy2qv/f800/1672928836.jpeg?s=70b49d6c734cbc194cf6f2af85a65ca55f24fd4f',CURRENT_DATE,CURRENT_DATE,28);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_01652_PXL5eE3x5XX6xCm3CigJGFWT/f800/1662975098.jpeg?s=7fcab88bb972514f78dd8ba4cb6adb8e0948e427',CURRENT_DATE,CURRENT_DATE,29);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_01946_vomqVd7pnPdHyZcoeNHYmRDT/f800/1673272285.jpeg?s=271eb28a6c13bbfc4e64f82363e96351f6a5b570',CURRENT_DATE,CURRENT_DATE,30);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_007d2_zBG9828ZvYhKiKVVq6iBmMp4/f800/1673272285.jpeg?s=90da4026a9d044fb2677ca0399da529a04ea787d',CURRENT_DATE,CURRENT_DATE,30);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_00f9d_k37CbQJMyrujdU6qshAQXZPb/f800/1673869907.jpeg?s=aa0166424f8b81eae8bd6b142aa905aab52e6997',CURRENT_DATE,CURRENT_DATE,31);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_01c2c_wPh3pZU55nfGcn5MoHHAdGWj/f800/1673869907.jpeg?s=960a4684682ffaaad75b758d750d80697cfad0b3',CURRENT_DATE,CURRENT_DATE,31);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_02126_JJSo9AJJiyBdwzV6qF6FmGs9/f800/1655265673.jpeg?s=65a1f358bea8ef0d7f8c16268f7489cee5d2f6a5',CURRENT_DATE,CURRENT_DATE,32);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_006bd_GWXeRnRqQGobMctD9oyaa89U/f800/1655265673.jpeg?s=48d81316f5672a0398594bf541ae359d1576ac24',CURRENT_DATE,CURRENT_DATE,32);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_0025f_BDaJCUeUSbxxF8wP2ZfWVdjC/f800/1672251004.jpeg?s=af8b55115751bb1dc872edd95a68397b3e60e1a8',CURRENT_DATE,CURRENT_DATE,33);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_000f5_yCayJmTedJUBGGrXjk86dXuT/f800/1673718320.jpeg?s=a47fdd0d05a2450a5a3fb792f6b022a5b14e834c',CURRENT_DATE,CURRENT_DATE,34);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_01dbd_6C43BxoXAuhWgGT4DKwtMM6T/f800/1673718320.jpeg?s=e3aea694364f7ccdc7f7625e5ef26afbf520b31b',CURRENT_DATE,CURRENT_DATE,34);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_01c31_2CfKeQ4hmkEJPZi8AwpDYVDb/f800/1664214458.jpeg?s=38808d4b4a713682d4bd186a0feb4b91edafb221',CURRENT_DATE,CURRENT_DATE,35);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_00e89_sQEzuxMmWEGHHdT7LvFSfz5K/f800/1664214458.jpeg?s=c83583aa11ba7d4d5f84c2f97b869ad8683531c0',CURRENT_DATE,CURRENT_DATE,35);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_01c2e_iTzaoHKDh2Xw3DRCMEUstuaX/f800/1673210725.jpeg?s=81dc161147056d6161d1e2b0346ca59b9e3820e2',CURRENT_DATE,CURRENT_DATE,36);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_0131e_9R9VmiAVPzezRPy4LNeuktxJ/f800/1673210725.jpeg?s=ab66d706b9ca6925a303993ca87b743be863d574',CURRENT_DATE,CURRENT_DATE,36);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_01277_pMKgkgABw3eRieYcddcqjYXE/f800/1652623038.jpeg?s=c632d1c46ccd9567958cb5dca860c96f676e107a',CURRENT_DATE,CURRENT_DATE,37);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_013a4_DkYK3gFi4QfyMFpRVrtiam1d/f800/1673445833.jpeg?s=a3d0a97692be3a61133a27609d20adf43595352d',CURRENT_DATE,CURRENT_DATE,38);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_0262b_MkUS21nFJsAzgSCJP522KA6y/f800/1673445833.jpeg?s=d9441cb1d51efd6335efcca2d52180b331984eda',CURRENT_DATE,CURRENT_DATE,38);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_01592_D9MNSvYfAudpvxiBjG6AVxx2/f800/1667489109.jpeg?s=db59e1f412a7d992b3ca7e8f294d961d68746bd7',CURRENT_DATE,CURRENT_DATE,39);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_00e3d_t3KNMDoyNKSg8gqUw8WkRDaj/f800/1673790545.jpeg?s=3ff8138e4ce83313959a579b35a44b14e6fefcfd',CURRENT_DATE,CURRENT_DATE,40);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_02357_mbhxSkKKTUe3bNxdGVryXw4H/f800/1673790545.jpeg?s=a0f0aaa889ab38b4d1f81eb0f2b84edc03ee5f3c',CURRENT_DATE,CURRENT_DATE,40);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_017ff_T6uvRJE5gV9g6W4gpPPmz8qc/f800/1673790545.jpeg?s=7cd41bedeadccf43de3aa2aea1244cbbd2f82128',CURRENT_DATE,CURRENT_DATE,40);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_016f2_ayZEinJqcfGSkroLVSk14wiC/f800/1673812655.jpeg?s=97177f258d14074dc24075005b807fb9f09f7b64',CURRENT_DATE,CURRENT_DATE,41);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_022e3_nAmq2diiehydLym49JKMWVhm/f800/1671891728.jpeg?s=8f4eb5bd5369d866a3af758e49ad8bda20c468e8',CURRENT_DATE,CURRENT_DATE,42);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_012b4_tEhWgmbCVLcctfYbFCrCywgQ/f800/1671891728.jpeg?s=a2dab4ae50a6cbfdade1faa5009ee2729e7ee35f',CURRENT_DATE,CURRENT_DATE,42);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_00c85_tvGeg4TCDVgZJ1YhvTU9Xis1/f800/1666799918.jpeg?s=5453a2dd81f99a33ed88e82a352dc517b7a8aa3e',CURRENT_DATE,CURRENT_DATE,43);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_0076b_k7o85QyY8uqtyi4ykji3ZhY5/f800/1666799918.jpeg?s=9e11e835a1ae75611bea9c2ba4a21b9cd49a7a8d',CURRENT_DATE,CURRENT_DATE,43);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_025da_ZqUf7nikeqBWn8hzVrPgZ31U/f800/1673875160.jpeg?s=6acde5e197dd318a3e27d381d6d606d75ca2bd3f',CURRENT_DATE,CURRENT_DATE,44);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/03_01038_kygk8ZkygY2jPRAxd19nYCt1/f800/1673864150.jpeg?s=89270632bca584c2dd5a276784bf9d97303a58a5',CURRENT_DATE,CURRENT_DATE,45);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_001a4_qtspzkmRzgsXGqLcRxidZrHQ/f800/1673864150.jpeg?s=118aa96e13a403945b90ae530a4baf552589e40e',CURRENT_DATE,CURRENT_DATE,45);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_00337_NxLS4qnJAJRoEEJxrxZbmCqF/f800/1673695728.jpeg?s=186e0c93b626d471f6e0df44284898ed0094b88c',CURRENT_DATE,CURRENT_DATE,46);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_014bf_v47GJ9bQ3WwYCmG68WKkP7dy/f800/1668180623.jpeg?s=dcc6d8658ed82b4922c563d8f3a459dbcf9ef791',CURRENT_DATE,CURRENT_DATE,47);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_00589_48dMfnSVW4RKGUCrFKZmfq8R/f800/1668180623.jpeg?s=8d2c3095a9373243f48fcb7a1c118f7b88f99120',CURRENT_DATE,CURRENT_DATE,47);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_012a8_qrqk9FubmC1oheTJjByB5e7a/f800/1672746070.jpeg?s=fd3052bd1965ec129619a645186b9f62a56398c9',CURRENT_DATE,CURRENT_DATE,48);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/02_01eea_MT7TCDA3dFfT1XgQtpAehZ2r/f800/1667752318.jpeg?s=dc3c5dd93432ebd01ae423f24c5712c1075bc35b',CURRENT_DATE,CURRENT_DATE,49);
INSERT INTO images(url,"createdAt","updatedAt","articleId") values('https://images2.vinted.net/t/01_0209f_8peGv9cDJiTH4NiSWRavmW4V/f800/1667752318.jpeg?s=3040a6f1ec6dfb9661bbfefab8e269bf64392d92',CURRENT_DATE,CURRENT_DATE,49);


-- REPORT --
INSERT INTO reports(motif,date,"createdAt","updatedAt") values('Ce t-shirt est offensant! il y a une inscription dessus qui est grossière!',CURRENT_DATE,CURRENT_DATE,CURRENT_DATE);

-- LIKES --

INSERT INTO likes("createdAt","updatedAt","userId","articleId") values(CURRENT_DATE,CURRENT_DATE,1,1);
INSERT INTO likes("createdAt","updatedAt","userId","articleId") values(CURRENT_DATE,CURRENT_DATE,3,1);
INSERT INTO likes("createdAt","updatedAt","userId","articleId") values(CURRENT_DATE,CURRENT_DATE,2,1);
INSERT INTO likes("createdAt","updatedAt","userId","articleId") values(CURRENT_DATE,CURRENT_DATE,1,2);