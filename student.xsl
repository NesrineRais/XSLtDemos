<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match = "/class">

<html>
		<body>
			<h2>Student List</h2>
			
			<table border = "1">
				<tr bgcolor="lightgreen">
					<th>First Name</th>
					<th>Last Name</th>
					<th>Nick Name</th>
				</tr>

                <xsl:for-each select = "student">
                 <xsl:sort select="firstName"/>
                    <tr>
                        <td><xsl:value-of select = "firstName" /></td>
                         <td><xsl:value-of select = "lastName" /></td>
                          <td><xsl:value-of select = "nickName" /></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
</html>
</xsl:template>
</xsl:stylesheet>