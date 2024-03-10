<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" doctype-system="about:legacy-compat"/>

  <!-- Bootstrap CDN link -->
  <xsl:variable name="bootstrapCDN">https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css</xsl:variable>

  <xsl:template match="/">
    <html>
      <head>
        <title>Customer List</title>
        <!-- Include Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="{$bootstrapCDN}" />
      </head>
      <body>
        <div class="container mt-5">
          <h2 class="mb-4">Customer List</h2>
          <xsl:apply-templates select="//customer" />
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="customer">
    <div class="card mb-3">
      <div class="card-body">
        <h5 class="card-title"><xsl:value-of select="fullname" /></h5>
        <p class="card-text"><strong>IBAN:</strong> <xsl:value-of select="ibannumber" /></p>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
