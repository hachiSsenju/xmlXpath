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
          <!-- <hr/> -->
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
