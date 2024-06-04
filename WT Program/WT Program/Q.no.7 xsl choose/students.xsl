<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <html>
        <head>
            <title>Student Information</title>
        </head>
        <body>
            <h2>Student Information</h2>
            <xsl:for-each select="students/student">
                <div class="student">
                    <p><strong>Name:</strong> <xsl:value-of select="name"/></p>
                    <p><strong>Age:</strong> <xsl:value-of select="age"/></p>
                    <p><strong>Major:</strong> <xsl:value-of select="major"/></p>
                    <p>
                        <xsl:choose>
                            <xsl:when test="age &lt; 18">
                                <strong>Status:</strong> Minor
                            </xsl:when>
                            <xsl:when test="age &gt;= 18 and age &lt;= 21">
                                <strong>Status:</strong> Young Adult
                            </xsl:when>
                            <xsl:otherwise>
                                <strong>Status:</strong> Adult
                            </xsl:otherwise>
                        </xsl:choose>
                    </p>
                    <hr/>
                </div>
            </xsl:for-each>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
