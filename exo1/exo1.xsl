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
                <ul>
                    <xsl:apply-templates select="//personne"/> 
                </ul>
            </body>
        </html>    
    </xsl:template>
    <xsl:template match="personne">
        <li>
            <xsl:value-of select="@nom" />
            <xsl:text>  </xsl:text>
            <xsl:value-of select="@prenom" />
            <xsl:text> - </xsl:text>
            <xsl:value-of select="@age" />
        </li>
    </xsl:template>
</xsl:stylesheet>

<!--<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
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
         <ul>
             <xsl:apply-templates select="//personne" />   
         </ul>
     </body>
    </html>    
    </xsl:template>
    
    <xsl:template match="personne">
        <li>
            <xsl:value-of select="@prenom" />
        </li>
    </xsl:template>
        
</xsl:stylesheet>-->