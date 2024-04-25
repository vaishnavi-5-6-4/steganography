package test1;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;


public class embed {
    
    public static void embeding  (String audio, String video){
        
   
       try {
       
           
        //reading the file1   
        File file = new File("D:\\test\\video1.mp4");
       // File file1 = new File("D:\\newfile.txt");
        FileInputStream fileinputstream = new FileInputStream(video);
        FileOutputStream fileoutputstream = new FileOutputStream("D:\\test\\video1.mp4");
        byte abyte0[] = new byte[8];
        int i;
        int k;
        
        //writing file1 to temp.txt
        for(k = 0; (i = fileinputstream.read(abyte0, 0, 8)) > 0; k = i)
            fileoutputstream.write(abyte0, 0, i);
                
        fileinputstream.close();
        //end of the reading file 
        
        
        
        //adding A at end of file to 
        for(int l = 1; l <= 8 - k; l++)
            fileoutputstream.write(65);
        
        
        //adding filenema
         fileoutputstream.write("DATAFILE".getBytes(), 0, 8);
        System.out.println("File name==="+file.getName());
        
        StringBuffer stringbuffer = new StringBuffer(file.getName());
        stringbuffer.setLength(50);
        

           
        //reading file2
        fileoutputstream.write(stringbuffer.toString().getBytes(), 0, 50);
        fileinputstream = new FileInputStream(audio);
        
        
        
       // writing file2 to temp.txt
        int j;
        while((j = fileinputstream.read(abyte0, 0, 8)) > 0) 
            fileoutputstream.write(abyte0, 0, j);
        
        
        fileinputstream.close();
        fileoutputstream.close();
        
        
        
        
        
        } catch (Exception e) {
	      e.printStackTrace();
              
              
}
 }
}
