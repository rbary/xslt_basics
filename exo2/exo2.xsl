<?xml version="1.0" encoding="UTF-8"?>
<!--XML vers XML (recopie) -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    <!--Identity template, 
        provides default behavior that copies all content into the output -->
<xsl:template match="@*|node()" >
    <xsl:copy>
        <xsl:apply-templates  select="@*|node()" />
    </xsl:copy>
</xsl:template>
</xsl:stylesheet>