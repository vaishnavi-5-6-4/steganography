<html>
<head>
<style>
body {
    margin: 0;
}

ul {
    list-style-type: none;
    margin: 0;
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
<li>  <a  href="Embed1.jsp">Embed</a></li>
<li>  <a class="active" href="deembed1.jsp">Dembed</a></li>
</ul>
<div style="margin-left:25%;padding:1px16px;height:200px;"> 
    <div><h1><b><center><font size="10">Detaching secret file from container file</font></b></center></h1>
        <br></div>
<br>
<br>
<center><form action="deembed.jsp" method="post">
<p>
<font size="6">Select Container File:</font>  
   <input type ="file" name="video" size = "50">
</p>
 
   
    <br><br><br>
<input type="Submit" value="Deembed" >

</center></form>
</div>
    
    




</body>
</html>

