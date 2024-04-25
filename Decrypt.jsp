<%@page import="java.io.FileInputStream"%>
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
    String newpath="D:\\test\\"+path;
    out.println(newpath);
    
		try {
			String outpath = "D:\\test\\decrypted.mp3";

			FileInputStream fis = new FileInputStream(newpath);
			FileOutputStream fos = new FileOutputStream(outpath);
			                        
                        
                        DESKeySpec dks = new DESKeySpec(key.getBytes());
		SecretKeyFactory skf = SecretKeyFactory.getInstance("DES");
		SecretKey desKey = skf.generateSecret(dks);
		
                Cipher cipher = Cipher.getInstance("DES"); // DES/ECB/PKCS5Padding for SunJCE
               
                        cipher.init(Cipher.DECRYPT_MODE, desKey);
			CipherOutputStream cos = new CipherOutputStream(fos, cipher);
			byte[] bytes = new byte[64];
		int numBytes;
		while ((numBytes = fis.read(bytes)) != -1) {
			cos.write(bytes, 0, numBytes);
                        
                 } 
                out.println("Decryption successfull");
                out.println("file saved to=");
                out.println(outpath);
                        
                        fos.flush();
                        fos.close();
                        fis.close();
	}
		
	 catch (Throwable e) {
			e.printStackTrace();
		}
	
}


%>
	