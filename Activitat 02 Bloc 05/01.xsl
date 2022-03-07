<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
    <body>
        <table border="1">
            <tr>
                <th style="text-align:center" colspan="4">Llibreria Llibres Balears SA</th>
            </tr>
            <tr>
                <th style="text-align:center">Data Comanda</th>
                <th style="text-align:center">Autor</th>
                <th style="text-align:center">Títol</th>
                <th style="text-align:center">Quantitat</th>
            </tr>

            <tr>
                <td><xsl:value-of select="comanda/llibreria/@data" /></td>
            </tr>
                <xsl:for-each select="comanda/llibre">
            <tr>
                <td></td>
                <td><xsl:value-of select="autor"/></td>
                <td><xsl:value-of select="titol"/></td>
                <td><xsl:value-of select="@quantitat"/></td>
            </tr>
            </xsl:for-each>
        </table>
    </body> 
</html>
</xsl:template>
</xsl:stylesheet>