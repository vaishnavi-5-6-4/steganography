/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test1;

//import static encryption.decrypt;
//import static encryption.doCopy;
//import static encryption.encrypt;
//import static encryption.encryptOrDecrypt;
//import static encryption.encrypt;
//import static encryption.encryptOrDecrypt;
//import static encryption.doCopy;
//import static encryption.encrypt;
//import static encryption.encryptOrDecrypt;
//import static encryption.encryptOrDecrypt;
//import static encryption.doCopy;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

public class enc {

	public static void  encrypt1(String key,String file) {
		try {
			 
			FileInputStream fis = new FileInputStream(file);
			FileOutputStream fos = new FileOutputStream("D:\\test\\encrypted2.txt");
                        encrypt(key, fis, fos);             
                        
                         FileInputStream fis2 = new FileInputStream("D:\\test\\encrypted.enc");
                        
		        
			 
		} catch (Throwable e) {
			e.printStackTrace();
		}
                
                
               
                
                 //return file+key;
	}
               
           public static void encrypt(String key, InputStream is, OutputStream os) throws Throwable {
               
                    encryptOrDecrypt(key, Cipher.DECRYPT_MODE, is, os);
                 }
        public static void encryptOrDecrypt(String key, int mode, InputStream is, OutputStream os) throws Throwable {

		DESKeySpec dks = new DESKeySpec(key.getBytes());
		SecretKeyFactory skf = SecretKeyFactory.getInstance("DES");
		SecretKey desKey = skf.generateSecret(dks);
		Cipher cipher = Cipher.getInstance("DES"); // DES/ECB/PKCS5Padding for SunJCE

		if (mode == Cipher.ENCRYPT_MODE) {
			cipher.init(Cipher.ENCRYPT_MODE, desKey);
			CipherInputStream cis = new CipherInputStream(is, cipher);
			doCopy(cis, os);
		} else if (mode == Cipher.DECRYPT_MODE) {
			cipher.init(Cipher.DECRYPT_MODE, desKey);
			CipherOutputStream cos = new CipherOutputStream(os, cipher);
			doCopy(is, cos);
		}
	}
        public static void doCopy(InputStream is, OutputStream os) throws IOException {
		byte[] bytes = new byte[64];
		int numBytes;
		while ((numBytes = is.read(bytes)) != -1) {
			os.write(bytes, 0, numBytes);
		}
		os.flush();
		os.close();
		is.close();
	}

        
	}

	


 
      

