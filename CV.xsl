<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>

  <head>
    <Title>Lab 7</Title>
    <link rel="stylesheet" href="CV.css" type="text/css"/>
  </head>

  <div class="NavBar">
      <ul id="NavItems">

        <li><a href="Homepage.html">Home Page</a></li>
        <li><a href="AboutMe.html">About me</a></li>
        <li><a href="PlacesVisited.html">Places visited</a></li>
        <li><a href="MyHobbies.html">My Hobbies</a></li>
        <li><a href="Proffesional_Life.html">Professional Life</a></li>
        <li><a href="Contactme.html">Contact me</a></li>
        <li><a href="CV.xml">My CV</a></li>
      </ul>
    </div>


<div class="Box">


<div class="LeftSeg">


<div class="head">
<xsl:for-each select="CV/personal">
<h2 id="Coltit1"><xsl:value-of select="name"/></h2>
<img id="PP" src="Assets/ProfilePic-modified.png" alt="ProfilePic" width="200"/>
</xsl:for-each>
</div>
<br></br>

<div class="nes-container is-dark with-title">
<p class="title">Personal Details</p>
<xsl:for-each select="CV/personal">
<div class="Personal">

<b>Name:</b> <p><xsl:value-of select="sex"/></p>
<b>DOB:</b> <p><xsl:value-of select="dob"/></p>

</div>
</xsl:for-each>
</div>

<br></br>
<div class="nes-container is-dark with-title">
<p class="title">About</p>
<xsl:for-each select="CV/personal">
<div class="Personal">
<p><xsl:value-of select="about"/></p>
</div>
</xsl:for-each>
</div>

<br></br>
<div class="nes-container is-dark with-title">
<p class="title">Social Media Links</p>
<xsl:for-each select="CV/Links">
<div class="Links">
<ul>
  <li><i class="nes-icon instagram is-large"></i><br></br> <a href="https://www.instagram.com/ocean.ds/" target="_blank"><xsl:value-of select="link1"></xsl:value-of></a></li>
  <li><i class="nes-icon github is-large"></i><br></br>  <a href="https://github.com/oceands" target="_blank"><xsl:value-of select="link2"></xsl:value-of></a></li>
  <li><i class="nes-icon facebook is-large"></i><br></br><a href="https://www.facebook.com/shawn.dsouza.3114" target="_blank"><xsl:value-of select="link3"></xsl:value-of></a></li>
  <li><i class="nes-icon whatsapp is-large"></i><br></br><a href="https://wa.me/qr/UIGS523NYR2PI1" target="_blank"><xsl:value-of select="link4"></xsl:value-of></a></li>
</ul>
</div>
</xsl:for-each>
</div>
</div>



<div class="RightSeg">
<div class="nes-container is-dark with-title">
<p class="title">Experiance</p>

<xsl:for-each select="CV/Experiance/exp">
<div class="Experiance Titles">
<h2 id="Coltit2"><xsl:value-of select="name"/></h2>
<h3><xsl:value-of select="location"/></h3>
<h4><xsl:value-of select="Date"/></h4>
</div>
</xsl:for-each>

<xsl:for-each select="CV/Experiance/exp/Responsibilities">
<div class="Experiance Responsibilites">
<ul class="nes-list is-circle">
<li> > <xsl:value-of select="res1"/></li>
<li> > <xsl:value-of select="res2"/></li>
<li> > <xsl:value-of select="res3"/></li>
<li> > <xsl:value-of select="res4"/></li>
</ul>
</div>
</xsl:for-each>

</div>

<br></br>

<div class="nes-container is-dark with-title">
<p class="title">Qualifications</p>
<xsl:for-each select="CV/Education/qualification">
<div class="Qualification">
<h3 id="Coltit3"><xsl:value-of select="title"/></h3>
<b>School:</b> <p><xsl:value-of select="school"/></p>
<b>Duration:</b> <p><xsl:value-of select="years"/></p>
<b>Cumulative Grade Point Average (GPA)</b> <p><xsl:value-of select="CGPA"/></p>

</div>
</xsl:for-each>
</div>

<br></br>
<div class="nes-container is-dark with-title">
<p class="title">Programming Languages</p>
<div class="Lang">
<img id="PP" src="Assets/Languages1.PNG" alt="ProfilePic" width="150"/>
<br></br>
<img id="PP" src="Assets/Languages2.PNG" alt="ProfilePic" width="150"/>
</div>
</div>





</div>






</div>
</html>


</xsl:template>
</xsl:stylesheet>
