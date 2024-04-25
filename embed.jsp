

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
<li>  <a class="active" href="Embed1.jsp">Embed</a></li>
<li>  <a href="deembed1.jsp">Dembed</a></li>
</ul>
<div style="margin-left:25%;padding:1px16px;height:200px;">
    <div><h1><b><center><font size="10">Decryption</font></b></center></h1><br></div>
<br>
<br>
        
               
        <%
             String path1="D:\\test\\";
             String newpath="C:\\Users\\Administrator\\OneDrive\\Desktop\\sample\\";
             String audio1 =request.getParameter("audio");
             String video1=request.getParameter("video");
             
             
             String audio=path1+audio1;
             String video=newpath+video1;
             out.println(audio);
              out.println(video);
             test1.embed.embeding(audio,video);
            
            out.println("embeding successfull");
            out.println("Saved the Embeded file to:");
            out.println("D:\\test\\video1.mp4");
            %>
			</div>
    </body>
</html>
