<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
 <body>
    <h2>Libros</h2>
    <table border="1" bgcolor="#CBC7B7">
      <tr bgcolor="#CA7647"> 
        <th>Código del Libro</th>
        <th>Título</th>
        <th>Editorial</th>
        <th>Edición</th>
        <th>ISBN</th>
        <th>Número de Páginas</th>
        <th>Autor</th>
        <th>Nombre del Autor</th>
        <th>Apellidos del Autor</th>
        <th>Fecha de Nacimiento</th>
        <th>Nacionalidad</th>
      </tr>
      <xsl:for-each select="Libros/libro">
      <tr bgcolor="#F5F5DC"> 
        <td><xsl:value-of select="Cod_Libro"/></td>
        <td><xsl:value-of select="Titulo"/></td>
        <td><xsl:value-of select="Editorial"/></td>
        <td><xsl:value-of select="Edicion"/></td>
        <td><xsl:value-of select="ISBN"/></td>
        <td><xsl:value-of select="NumPaginas"/></td>
        <td><xsl:value-of select="Autores/autor/Cod_Autor"/></td>
        <td><xsl:value-of select="Autores/autor/Nombre"/></td>
        <td><xsl:value-of select="Autores/autor/Apellidos"/></td>
        <td><xsl:value-of select="Autores/autor/FechaNacimiento"/></td>
        <td><xsl:value-of select="Autores/autor/Nacionalidad"/></td>
      </tr>
      </xsl:for-each>
    </table>
 </body>
 </html>
</xsl:template>

</xsl:stylesheet>
