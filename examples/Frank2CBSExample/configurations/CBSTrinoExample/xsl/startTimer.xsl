<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <root>
            <startTime><xsl:value-of select="current-dateTime()"/></startTime>
            <xsl:copy-of select="*"/>
        </root>
    </xsl:template>
</xsl:stylesheet>