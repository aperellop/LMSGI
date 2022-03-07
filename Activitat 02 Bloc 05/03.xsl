<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
    <head>
        <h2 style="color:red">Llista en ordre descendent</h2>
    </head>
    <body>
        <ol style="color:blue">
            <xsl:for-each select="cataleg/llibre">
                <xsl:sort select="autors/autor" order="descending"/>
                <li><xsl:value-of select="autors/autor"/>
                <span style="color:black">
                , Any naixement </span>
                <xsl:value-of select="autors/autor/@naixement"/> </li>
            </xsl:for-each>
        </ol>
    </body> 
</html>
</xsl:template>
</xsl:stylesheet>