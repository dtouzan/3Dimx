# CMOS for astronomy
![3Dimx](3dimx.png?raw=true "3Dimx.png")

![3Dimx](http://img.shields.io/badge/powered%20by-3Dimx-blue.svg?style=flat)]

# Concept
Conception d'une caméra CMOS sur la base des capteurs imx219, imx477 ou imx290 (non testé)
Design of a CMOS camera based on the imx219, imx477 or imx290 sensors (untested)

# Schémas

### Tête de caméra
	Les têtes de caméra sont réalisées avec:
		Une plaque de tilt T2
		Un bouchon T2 (imx219 ou imx290) 
		Un filtre UV/IR-cut
		Une bague adaptatrice T2/M28
	The camera heads are made with:
		A T2 tilt plate
		A T2 plug (imx219 or imx290)
		A UV/IR-cut filter
		A T2/M28 adapter ring

### Raspberry Pi 4
	box_main_corps_imx.stl
	clip_agrafe_imx.stl (diférente couleur suivant le capteur si possible)
	box_cover_couvercle_imx.stl

### Raspberry Pi 2w (non tester)
	box_main_corps_imx.stl
	clip_agrafe_imx.stl (diférente couleur suivant le capteur si possible)
	box_cover_couvercle_imx_2w.stl
	
# Software & installation

### OS Raspbian bookworm or Bullseyes 
	Installation par defaut.
	
### Libcamera
	Incluse dans les distributions.
	Vérifié les prérequis pour le fichier /boot/info.txt.
	test:
		>libcamera --list-camera
	
### Indilib
	Installation par defaut si elle existe sinon recompilation.
	
### Jupyter & JupyterLab
	Faire un environnement python avec l'options :  ......
	Se connecter sur votre environnement (en automatique dans le fichier .bashrc si installé).
	Installation par defaut.
		>pip install jupyter
		>pip install jupyterlab
		
### Astropy & astroquery
	Se connecter sur votre environnement.
	Installation par default.
		>pip install astropy astroquery
		
### Indi-pylibcamera
	Installation par defaut sans "sudo" et valider avec le
	mot de passe root lors de la demande administrateur.
		>pip install indi-pylibcamera
	lancement du serveur Indilib pour voir l'exécution.
		>indiserver indi_pylibcamera
		
		
# Conclusion