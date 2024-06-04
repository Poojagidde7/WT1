<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <!-- Template to match the root element and sort books by title -->
    <xsl:template match="/library">
        <html>
            <body>
                <h2>Sorted Books by Title</h2>
                <table border="1">
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                    </tr>
                    <!-- Apply templates to book elements and sort them by title -->
                    <xsl:apply-templates select="book">
                        <xsl:sort select="title" order="ascending"/>
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>

    <!-- Template to match each book element and output as a row in the table -->
    <xsl:template match="book">
        <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="author"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
