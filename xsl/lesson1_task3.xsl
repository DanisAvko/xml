<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
               <div data-id="content" style="margin: 0 auto;">
                   <h1>Mouses</h1>
                   <xsl:element name="img">
                       <xsl:attribute name="src">
                           <xsl:value-of select="content/meta/img/@src"/>
                       </xsl:attribute>
                       <xsl:attribute name="width">
                           <xsl:value-of select="content/meta/img/@width"/>
                       </xsl:attribute>
                       <xsl:attribute name="height">
                           <xsl:value-of select="content/meta/img/@height"/>
                       </xsl:attribute>
                       <xsl:attribute name="alt">
                           <xsl:value-of select="content/meta/img/@alt"/>
                       </xsl:attribute>
                   </xsl:element>
                   <table border="1">
                       <tr style="background-color: blue">
                           <th>Номер</th>
                           <th>Название</th>
                           <th>Тип подключения</th>
                           <th>Тип интерфейса</th>
                           <th>Производители</th>
                       </tr>
                       <xsl:for-each select="content/mouses/mouse">
                           <tr>
                               <td style="padding: 10px">
                                   <xsl:value-of select="@id"/>
                               </td>
                               <td>
                                   <xsl:for-each select="titles/title">
                                       <xsl:value-of select="."/>
                                       <xsl:if test="position() != last()">, </xsl:if>
                                   </xsl:for-each>
                               </td>
                               <td>
                                   <xsl:for-each select="characteristic/connection-types/connection-type">
                                       <xsl:value-of select="."/>
                                       <xsl:if test="position() != last()">, </xsl:if>
                                   </xsl:for-each>
                               </td>
                               <td>
                                   <xsl:for-each select="characteristic/connection-interfaces/connection-interface">
                                       <xsl:value-of select="."/>
                                       <xsl:if test="position() != last()">, </xsl:if>
                                   </xsl:for-each>
                               </td>
                               <td>
                                   <xsl:for-each select="manufacturers/manufacturer">
                                       <xsl:value-of select="."/>
                                       <xsl:if test="position() != last()">, </xsl:if>
                                   </xsl:for-each>
                               </td>
                           </tr>
                       </xsl:for-each>
                   </table>
               </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>