<!DOCTYPE html>
<html>
<head>
<style>
body {
    margin: 0;
}

ul {
    list-style-type: none;
    margin: 1;
    padding: 0;
    width: 10%;
    background-color: #f1f1f1;
    position: fixed;
    height: 100%;
    overflow: auto;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
    
}

li a.active {
    background-color: #4CAF50;
    color: white;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
}
</style>
</head>
<body bgcolor="	#F0FFFF">

<ul>
<li><a  href="index.jsp">Home</a></li>
<li>  <a href="t1.jsp">Encryption</a></li>
<li>  <a href="t1_decrypt.jsp">Decryption</a></li>
<li>  <a class="active" href="Embed1.jsp">Embed</a></li>
<li>  <a href="deembed1.jsp">Dembed</a></li>
</ul>
<div style="margin-left:25%;padding:1px16px;height:200px;">
    <h1><b><center><font size="10">Embedding Encrypted File</font></b></center></h1><br>
<br>
<br>
     
<center><form action="embed.jsp" method="post">
<p>
<font size="6">Select Encrypted File:</font>  
<input type ="file" name="audio" size = "50">
	  <br><br>
<font size="6">Select video File:</font>  
   <input type ="file" name="video" size = "50">
</p>
 
   
    <br><br><br>
<input type="Submit" value="Embed" >

</center></form>
    
    </div>

</body>
</html>