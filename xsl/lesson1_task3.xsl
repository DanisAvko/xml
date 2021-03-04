<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mouses</h1>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Номер</th>
                        <th>Название</th>
                        <th>Тип подключения</th>
                        <th>Тип интерфейса</th>
                        <th>Производители</th>
                    </tr>
                    <xsl:for-each select="mouses/mouse">
                        <tr>
                            <td>
                                <xsl:value-of select="@id"/>
                            </td>
                            <td>
                                <xsl:for-each select="titles/title">
                                    <xsl:value-of select="."/>,
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="characteristic/connection-types/connection-type">
                                    <xsl:value-of select="."/>,
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="characteristic/connection-interfaces/connection-interface">
                                    <xsl:value-of select="."/>,
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="manufacturers/manufacturer">
                                    <xsl:value-of select="."/>,
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>