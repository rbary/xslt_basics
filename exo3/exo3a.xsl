<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
 <!--<xsl:output
     method="xml"
     version="1.0"
     encoding="UTF-8"
     indent="yes"/>-->
    
<xsl:import href="../exo2/exo2.xsl" />
<xsl:template match="/">
        <xsl:apply-imports />
        <xsl:apply-templates select="@*" />
</xsl:template>
<xsl:template match="@*">
    <xsl:element name="{name()}"><xsl:value-of select="."/></xsl:element>
</xsl:template>
</xsl:stylesheet>