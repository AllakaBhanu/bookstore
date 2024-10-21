<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Root template -->
    <xsl:template match="/">
        <html>
            <head>
                <title>bookstore</title>
                <style>
                    body {font-family: Arial, sans-serif;}
                    ul { list-style-type: none; }
                    li { margin: 5px 0; }
                </style>
            </head>
            <body>
                <h1>Bookstore</h1>
                <ul>
                    <xsl:apply-templates select="bookstore/book"/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <!-- Template for each book -->
    <xsl:template match="book">
        <li>
            <strong>Title:</strong> <xsl:value-of select="title"/> <br/>
            <strong>Author:</strong> <xsl:value-of select="author"/> <br/>
            <strong>Price:</strong> $<xsl:value-of select="price"/> <br/>
            <strong>Genre:</strong> <xsl:value-of select="genre"/> <br/>
        </li>
    </xsl:template>

</xsl:stylesheet>

