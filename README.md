osmfr-qa-cartocss
=================

Projet TileMill/CartoCSS pour la couche "Zones à mapper" de tile.openstreetmap.fr

Résultat consultable sur: http://tile.openstreetmap.fr/?zoom=13&lat=48.3735&lon=2.95276&layers=B0000000FFFFTF


Données utilisées
-----------------

Base OSM (osm2pgsql):
- planet_osm_line (pour les routes: highway=*)
- planet_osm_polygon (pour les bâtiments: building=*)

Données externes de croisement:
- insee_menages: données carroyées de l'INSEE sur les ménages (recherche de bâti et routes)
- r500_communes_noeuds : données issues du Route500 de l'IGN pour l'emplacement des centres administratifs de communes (recherche de bâti)
- cadastre: liste des communes du cadastre pour déterminer celles disponibles en format vectoriel (issu de suivi.openstreetmap.fr/communes)

Pour plus de renseignements voir: http://wiki.openstreetmap.org/wiki/FR:Servers/tile.openstreetmap.fr
