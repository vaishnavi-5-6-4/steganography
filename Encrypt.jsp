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
<br>
<br>
<ul>
<li><a  href="index.jsp">Home</a></li>
<li>  <a class="active" href="t1.jsp">Encryption</a></li>
<li>  <a href="t1_decrypt.jsp">Decryption</a></li>
<li>  <a  href="Embed1.jsp">Embed</a></li>
<li>  <a  href="deembed1.jsp">Dembed</a></li>
</ul>
<div style="margin-left:25%;padding:1px16px;height:200px;">

<%@page import="java.io.FileInputStream"%>

<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="javax.crypto.Cipher"%>
<%@page import="javax.crypto.CipherInputStream"%>
<%@page import="javax.crypto.CipherOutputStream"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.SecretKeyFactory"%>
<%@page import="javax.crypto.spec.DESKeySpec"%>


	
<%{
        String key =request.getParameter("t1");
        String path=request.getParameter("t2");
        //out.println(path);
      // session.setAttribute("paths",path);
       // String key = (String)session.getAttribute("key");
    try {
			//FileInputStream is = new FileInputStream(path);
                        String newpath="C:\\Users\\Administrator\\OneDrive\\Desktop\\sample\\"+path;
                      //  out.println(newpath);
                        FileInputStream is = new FileInputStream(newpath);
			FileOutputStream os = new FileOutputStream("D:\\test\\encrypted.enc");
			
                       

		DESKeySpec dks = new DESKeySpec(key.getBytes());
		SecretKeyFactory skf = SecretKeyFactory.getInstance("DES");
		SecretKey desKey = skf.generateSecret(dks);
		Cipher cipher = Cipher.getInstance("DES"); // DES/ECB/PKCS5Padding for SunJCE

		
			cipher.init(Cipher.ENCRYPT_MODE, desKey);
			CipherInputStream cis = new CipherInputStream(is, cipher);
			byte[] bytes = new byte[64];
		int numBytes;
		while ((numBytes = cis.read(bytes)) != -1) {
			os.write(bytes, 0, numBytes);
                }
                
                out.println("encryption successfull");
                os.flush();
		os.close();
		cis.close();

			} catch (Throwable e) 
                        {	e.printStackTrace();  }
	
		
	}
%>
</div>
    </body>
</html>