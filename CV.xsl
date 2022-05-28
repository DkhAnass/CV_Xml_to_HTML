<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
<xsl:template match="/">
<html>
    <head>
        <title>Curriculum Vitae</title>
    </head>
    <body align="center">
        <img src = "1.jpg" height="160" width ="130" align ="right"/>
        <h1><center> Cirruculum Vitae </center></h1>
        <br/>
        <h1><center> Description </center></h1>
        <br/>
        <xsl:for-each select="CurriculumVitae/Informations">
            <br/><b><u> Nom Prénom</u>:</b><xsl:value-of select="Nom"/><div align="right"><b><u>Adresse</u>:</b><xsl:value-of select="Adresse"/></div>
            <b><u> Tel</u>:</b><xsl:value-of select="Tel"/><div align="right"><b><u>Linkedin</u>:</b><xsl:value-of select="Linkedin"/></div>
            <b><u> Email</u>:</b><xsl:value-of select="Email"/><div align="right"><b><u>Github</u>:</b><xsl:value-of select="Github"/></div>
            <br/>
        </xsl:for-each>
        <h2><font color="#FF5F00">Formations:</font></h2>
        <hr/><br/>
        <xsl:for-each select="CurriculumVitae/Education/Edu">
            <li><b><u><xsl:value-of select="Nom"/></u></b>
            <ul><xsl:value-of select="Description"/></ul>
            </li>
            <br/>
        </xsl:for-each>
        <h2><font color="#FF5F00">Expériences Professionnels:</font></h2>
        <hr/><br/> 
        <xsl:for-each select="CurriculumVitae/ExperienceProf/Exp">
        <li><b><u><xsl:value-of select="Projet"/></u></b>
            <ul>      <xsl:value-of select="Description"/></ul>
        </li>
        <br/>
        </xsl:for-each>
        <h2><font color="#FF5F00">Projets:</font></h2>
        <hr/><br/> 
        <xsl:for-each select="CurriculumVitae/Projets/Proj">
            <li><b><u><xsl:value-of select="Nom"/></u></b>
                <ul>      <xsl:value-of select="Description"/></ul>
            </li>
            <br/>
        </xsl:for-each>
        <h2><font color="#FF5F00">Compétences:</font></h2>
        <hr/><br/> 
        <xsl:for-each select="CurriculumVitae/Competences">
            <br/><li><b><u> Langues</u>:</b><xsl:value-of select="Langues"/></li><br/>
            <li><b><u> Informatique</u>:</b><xsl:value-of select="Informatique"/></li><br/>
            <li><b><u> ElectroniqueETAutomatique</u>:</b><xsl:value-of select="ElectroniqueETAutomatique"/></li><br/>
            <li><b><u> MachineLearning</u>:</b><xsl:value-of select="MachineLearning"/></li><br/>
            <br/>
            <br/>
        </xsl:for-each>
        <h2><font color="#FF5F00">Centres D’intérêt:</font></h2>
        <hr/><br/> 
        <xsl:for-each select="CurriculumVitae/Interets">
            <br/><li><b><u> Loisirs</u>:</b><xsl:value-of select="Loisirs"/></li><br/>
            <br/>
            <br/>
        </xsl:for-each>
    </body>
</html>
    
</xsl:template>
</xsl:stylesheet>