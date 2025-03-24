<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="queryType"/>
    
    <xsl:template match="/">
        <root>
            <startTime><xsl:value-of select="/root/startTime"/></startTime>
            <endTime><xsl:value-of select="current-dateTime()"/></endTime>
            <queryType><xsl:value-of select="$queryType"/></queryType>
            <durationMs>
                <xsl:value-of select="(seconds-from-dateTime(current-dateTime()) - seconds-from-dateTime(/root/startTime)) * 1000"/>
            </durationMs>
            <xsl:copy-of select="*[name() != 'startTime']"/>
        </root>
    </xsl:template>
</xsl:stylesheet>