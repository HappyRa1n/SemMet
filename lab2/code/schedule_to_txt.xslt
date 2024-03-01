<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <xsl:for-each select="schedule/day">
            <xsl:value-of select="@name"/>
            <xsl:text>:&#10;</xsl:text>
            <xsl:for-each select="lesson">
                <xsl:value-of select="subject"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="start_time"/>
                <xsl:text> - </xsl:text>
                <xsl:value-of select="end_time"/>
                <xsl:text>&#10;</xsl:text>
            </xsl:for-each>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
