<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:h="http://www.w3.org/1999/xhtml"
                xmlns="http://www.w3.org/1999/xhtml"
                exclude-result-prefixes="h">

  <!-- Add title heading elements for different admonition types that do not already have headings in markup -->
  <xsl:param name="add.title.heading.for.admonitions" select="1"/>  

  <!-- Override to print example captions without labels-->
  <xsl:template match="h:div[@data-type='example' and contains(@class, 'sourcecode')]/h:h5" mode="process-heading">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <!-- Insert SCRATCHPAD: heading for all sidebars with 'scratchpad' class -->
  <xsl:template match="h:h5" mode="process-heading">
    <xsl:text>THIS IS SELECTED BY SCRATCHPAD TEMPLATE</xsl:text>
  </xsl:template> 

  
                                                                              
</xsl:stylesheet>
