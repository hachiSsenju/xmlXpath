FICHE PROJET N°4 : Développement d'un Moteur de Recherche XML avec XSLT et XPath
1. Objectif du projet
Le projet a pour objectif de développer un moteur de recherche capable de traiter et d’interroger un fichier XML pour en extraire des informations spécifiques. Les technologies principales utilisées sont XPath (pour la navigation et l’extraction des données XML) et XSLT (pour la transformation et l’affichage des résultats en HTML).
2. Exigences Fonctionnelles
1. Création d’un fichier XML représentant une collection d’articles (titre, auteur, date, contenu).
2. Implémentation d’un moteur de recherche capable de rechercher par mot-clé, auteur, ou date.
3. Utilisation de XPath pour naviguer et extraire les données du XML.
4. Utilisation de XSLT pour transformer les résultats XML en HTML.
5. Interface utilisateur simple permettant la saisie des critères de recherche et l’affichage des résultats.
3. Technologies et Outils
- XML : structure des données
- XPath : interrogation et filtrage des données
- XSLT : transformation XML → HTML
- HTML/CSS : interface utilisateur
- JavaScript : implémentation du moteur de recherche côté client

4. Architecture du Projet
1. Fichier XML (articles.xml) contenant les données.
2. Feuille XSLT (affichage.xsl) pour la mise en forme des résultats.
3. Script JavaScript dans index.html utilisant XPath pour rechercher.
4. Interface HTML/CSS pour l’utilisateur.
5. Exemple de Fichier XML
<?xml version="1.0" encoding="UTF-8"?>
<articles>
  <article>
    <title>Introduction à XML</title>
    <author>Jean Dupont</author>
    <date>2024-05-10</date>
    <content>Ce document présente les bases du langage XML et ses principales utilisations.</content>
  </article>
  <article>
    <title>XPath et ses applications</title>
    <author>Marie Claire</author>
    <date>2024-07-15</date>
    <content>XPath est un langage de requête pour naviguer dans les documents XML.</content>
  </article>
</articles>
6. Exemples de Requêtes XPath
/articles/article   -> Sélectionner tous les articles
/articles/article[author='Jean Dupont']   -> Sélectionner les articles de Jean Dupont
/articles/article[contains(title,'XML')]   -> Articles dont le titre contient 'XML'
7. Exemple de Transformation XSLT
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head><title>Résultats de recherche</title></head>
      <body>
        <h2>Articles trouvés :</h2>
        <xsl:for-each select="articles/article">
          <div>
            <h3><xsl:value-of select="title"/></h3>
            <p><b>Auteur :</b> <xsl:value-of select="author"/></p>
            <p><b>Date :</b> <xsl:value-of select="date"/></p>
            <p><xsl:value-of select="content"/></p>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
8. Exemple d’Interface HTML + JavaScript
Le code suivant illustre une interface permettant de rechercher dans un fichier XML :

<!DOCTYPE html>
<html lang='fr'>
<head>
<meta charset='UTF-8'>
<title>Moteur de Recherche XML</title>
<style>body{font-family:Arial}</style>
</head>
<body>
<h1>Moteur XML</h1>
<input id='keyword'> <button onclick='searchXML()'>Rechercher</button>
<div id='results'></div>
<script>
// Code JS pour charger XML et rechercher avec XPath
</script>
</body>
</html>
9. Livrables
- Fichier XML contenant les articles
- Feuille XSLT pour l’affichage
- Interface HTML/JS fonctionnelle
- Documentation technique (ce document)
