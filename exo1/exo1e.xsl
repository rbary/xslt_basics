<?xml version="1.0" encoding="UTF-8"?>
<!-- Auteur: Roland Bary -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0"> 
    <xsl:output 
        method="html"
        encoding="UTF8"
        doctype-public="-//W3C//DTD XHTML 1.1//EN"
        doctype-system="http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd"
        indent="yes" />
    <xsl:template match="spectateurs">
        <html>
            <head>
                <title>Test</title>
            </head>
            <body>
                <table width="500" border="1" cellspacing="0" cellpadding="0">
                    <!--<xsl:apply-templates select="//personne"/>
                    <xsl:apply-templates select="//adresse" />-->
                    <tr>
                        <th scope="col">Nom</th>
                        <th scope="col">Prenom</th>
                        <th scope="col">Age</th>
                        <th scope="col">Adresse</th>
                        <th scope="col">Tel</th>
                    </tr>
                    <xsl:apply-templates select="//spectateur" />  
                </table>
            </body>
        </html>    
    </xsl:template>
    <xsl:template match="spectateur">
        <tr>
            <td><xsl:value-of select="personne/@nom" /></td>
            <td><xsl:value-of select="personne/@prenom" /></td>
            <td><xsl:value-of select="personne/@age" /></td>
            <td><xsl:value-of select="adresse" /><xsl:text>, </xsl:text><xsl:value-of select="adresse/@ville" /></td>
            <td><xsl:value-of select="tel/@prefix" /> <xsl:value-of select="tel" /></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>