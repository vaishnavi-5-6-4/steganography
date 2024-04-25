<%-- 
    Document   : t2
    Created on : Feb 22, 2018, 3:29:53 PM
    Author     : Administrator
--%>



 
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
<li> <a href="http://localhost:8080/Stegno/index.jsp">Home</a></li>
<li>  <a class="active" href="http://localhost:8080/Stegno/t1.jsp">Encryption</a></li>
<li>  <a href="http://localhost:8080/Stegno/t1_decrypt.jsp">Decryption</a></li>
<li>  <a href="http://localhost:8080/Stegno/Embed1.jsp">Embed</a></li>
<li>  <a href="http://localhost:8080/Stegno/deembed1.jsp">Dembed</a></li>
</ul>
<div style="margin-left:25%;padding:1px16px;height:200px;">
    <div><h1><b><center><font size="10">Encryption</font></b></center></h1><br></div>
<br>
<br>
    <form action="Encrypt.jsp" method ="post">
      
      <% 
          
          String s1=request.getParameter("t1");
          %>
<input type ="hidden" name='t1' value='<%= s1%>' >
<%   
//out.println(s1);
%>
<center><input type ="file" name="t2" size = "100">
    
<input type ="submit" value ="submit"></center>
</form>
</div>
</body>
</html>