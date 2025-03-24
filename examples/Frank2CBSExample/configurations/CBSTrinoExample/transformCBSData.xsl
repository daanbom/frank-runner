<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <xsl:variable name="data" select="root/value"/>
        <root>
            <xsl:for-each select="$data">
                <!-- Filter only rows with Nationaliteit = T001059 (as in the example) -->
                <xsl:if test="Nationaliteit = 'T001059'">
                    <row>
                        <Geslacht><xsl:value-of select="Geslacht"/></Geslacht>
                        <Leeftijd><xsl:value-of select="Leeftijd"/></Leeftijd>
                        <RegioS><xsl:value-of select="RegioS"/></RegioS>
                        <Perioden><xsl:value-of select="Perioden"/></Perioden>
                        <Bevolking><xsl:value-of select="Bevolking"/></Bevolking>
                    </row>
                </xsl:if>
            </xsl:for-each>
        </root>
    </xsl:template>
</xsl:stylesheet>