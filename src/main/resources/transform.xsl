<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" />

	<xsl:template match="/">
		<order>
			<xsl:for-each select="root">
				<orderId>
					<xsl:value-of select="id" />_<xsl:value-of select="batch" />
				</orderId> <!-- id + batch -->
			</xsl:for-each>
			<xsl:for-each select="root/rows">

				<documentDateTime>
					<xsl:value-of select="current-dateTime()" />
				</documentDateTime>
			</xsl:for-each>
			<orderRows>
				<xsl:for-each select="root/rows/row">
					<orderRow>
						<rowNumber>
							<xsl:value-of select="position()" />
						</rowNumber>
						<description>
							<xsl:value-of select="description" />
						</description>
					</orderRow>
				</xsl:for-each>
			</orderRows>
		</order>
	</xsl:template>

</xsl:stylesheet>


