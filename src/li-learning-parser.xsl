<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Use onlineformater, for ex.: https://www.freeformatter.com/xsl-transformer.html -->
    <!-- find something like this in the Li Learning DOM:
      <div id="ember43" class="classroom-layout-sidebar-body classroom-layout__sidebar-body ember-view classroom-body__sidebar-body">
    -->

    <xsl:output method="xml" indent="no"/>
    <xsl:template match="/">
        <xsl:for-each select="//*[@class='classroom-toc-item ']">
            <xsl:variable name="hour" select="'00:'" />
            <xsl:variable name="time" select="a/div/div[2]/span/text()" />
            <xsl:variable name="min" select="substring-before($time,'m')" />
            <xsl:variable name="sectmp" select="substring-before($time,'s')" />
            <xsl:variable name="sec" select="substring-after($sectmp,'m')" />

            <xsl:value-of select="normalize-space(a/div/div[1]/text())"/>,<xsl:text>https://www.linkedin.com</xsl:text><xsl:value-of select="normalize-space(substring-before(a/@href,'?'))"/>,,<xsl:value-of select="normalize-space($hour)"/>
            <xsl:if test="$min">
                <xsl:value-of select="normalize-space($min)"/>
                <xsl:text>:</xsl:text>
            </xsl:if>
            <xsl:if test="not($min)">
                <xsl:text>00:</xsl:text>
            </xsl:if>
            <xsl:if test="$sec">
                <xsl:value-of select="normalize-space($sec)"/>
            </xsl:if>
            <xsl:if test="not($sec)">
                <xsl:if test="$sectmp">
                    <xsl:value-of select="normalize-space($sectmp)"/>
                </xsl:if>
                <xsl:if test="not($sectmp)">
                    <xsl:text>00</xsl:text>
                </xsl:if>
            </xsl:if>
            <xsl:text>&#xa;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet> 
