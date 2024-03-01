<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head lang="ru">
				<meta charset="UTF-8"/>
				<title>расписание</title>
				<style>
					table {
						border-collapse: collapse;
						width: 100%;
					}
					th, td {
						border: 1px solid black;
						padding: 8px;
						text-align: left;
					}
				</style>
			</head>

            <body>
                <table>
                    <tr>
                        <th>Day</th>
                        <th>Lesson</th>
                    </tr>
                    <xsl:for-each select="schedule/day">
						<tr>
						<th>
							<xsl:value-of select="@name"/>
						</th>
						<td>
							<table>
								<xsl:for-each select="lesson">
									<tr>
										<td><xsl:value-of select="subject"/></td>
										<td><xsl:value-of select="classroom"/></td>
										<td><xsl:value-of select="instructor"/></td>
										<td><xsl:value-of select="start_time"/></td>
										<td><xsl:value-of select="end_time"/></td>
									</tr>
								</xsl:for-each>
							</table>
						</td>
						</tr>
					</xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
