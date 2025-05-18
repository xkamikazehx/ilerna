<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" />

  <xsl:template match="/">
    <html>
      <head>
        <title>Asignaturas Ilerna</title>
        <style>
          body {
            background-color: #f0f4f8;
            font-family: Arial, sans-serif;
            color: #333;
          }
          table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
          }
          th, td {
            border: 1px solid #333;
            padding: 8px;
            text-align: center;
          }
          th {
            background-color: #555;
            color: white;
          }
          tr:nth-child(even) {
            background-color: #c9f7d3;
          }
        </style>
      </head>
      <body>
        <h2 style="text-align:center;">Asignaturas Ilerna Jose Crespo</h2>
        <table>
          <tr>
            <th>Asignatura</th>
            <th>PAC Desarrollo</th>
            <th>PACs</th>
            <th>Nota Examen</th>
          </tr>
          <xsl:for-each select="asignaturas/asignatura">
            <tr>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="pac_desarrollo"/></td>
              <td><xsl:value-of select="pacs"/></td>
              <td><xsl:value-of select="nota_examen"/></td>
            </tr>
          </xsl:for-each>
        </table>
        <video width="640" height="360" controls style="display:block; margin: 20px auto;">
        <source src="videos/Espresso.mp4" type="video/mp4"/>
        Tu navegador no soporta el elemento de video.
      </video>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>

