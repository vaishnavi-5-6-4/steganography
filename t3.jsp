<%-- 
    Document   : t2
    Created on : Feb 22, 2018, 3:29:53 PM
    Author     : Administrator
--%>

 
<html>
<body>
     
      
      <% 
          
          String s1=request.getParameter("t1");
          String s2=request.getParameter("t2");
          out.println(s1+s2);
         
          %>
          
          <input type ="hidden" name='t1' value='t1' >
 


</body>
</html>