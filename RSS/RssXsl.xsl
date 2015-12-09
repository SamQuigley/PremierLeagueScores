<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <head>
        <link href="RssFeed.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            body {
                font-size:0.83em;
            }
        </style>
    </head>
    <body>
        <div id="logo">
            <xsl:element name="a">
                <xsl:value-of select="channel/title" />
            </xsl:element>
        </div>
        <div class="Snippet" style="border-width:0; background-color:#FFF; margin:1em">
            <div class="titleWithLine">
                <xsl:value-of select="channel/description" />
            </div>
            <dl style="padding-right:1em">
                <xsl:for-each select="channel/item">
                    <dd>
                        <xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:value-of select="link"/>
                            </xsl:attribute>
                            <xsl:value-of select="title"/>
                        </xsl:element>
                    </dd>
                    <dt>
                        <xsl:value-of select="description" /><br />
                    </dt>
                </xsl:for-each>
            </dl>
        </div>
        <div id="footer">
            <xsl:value-of select="channel/copyright" />
        </div>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>