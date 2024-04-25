
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    <div><h1><b><center><font size="10">Hello World!</font></b></center></h1><br></div>
<br>
<br>
        
    
        
        <%
              String video1=request.getParameter("video");
              String video="D:\\test\\"+video1;
              test1.deembed.deembeding(video);
              out.println("Successfully retrieved secret file from container file :  "+video);
            
                       
            %>
			</div>
    </body>
</html>
