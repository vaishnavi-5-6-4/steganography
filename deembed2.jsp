import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

    
    public String demb(String s)
    {
        boolean flag;
        String demfile = "";
        try
        {
            File file = new File(s);
            String outpath=s.substring(0, s.lastIndexOf("\\")+1);
            FileInputStream fileinputstream = new FileInputStream(s);
            char c = '\b';
            byte abyte0[] = new byte[c];
            String s1 = "";
            int i;
            while((i = fileinputstream.read(abyte0, 0, c)) > 0) 
            {
                s1 = new String(abyte0);
                if(s1.equals("DATAFILE"))
                    break;
            }
            if(!s1.equals("DATAFILE"))
            {
                flag=false;
                fileinputstream.close();
                return demfile;
            }
            abyte0 = new byte[50];
            fileinputstream.read(abyte0, 0, 50);
            s1 = new String(abyte0);
            String s2 = s1.trim();
            String fpath = s2.substring(0, s2.lastIndexOf(".") + 1) + "enc";
            System.out.println("fpath------"+fpath);
            FileOutputStream fileoutputstream = new FileOutputStream(outpath+fpath);
            c = '\u5000';
            abyte0 = new byte[c];
            while((i = fileinputstream.read(abyte0, 0, c)) > 0) 
                fileoutputstream.write(abyte0, 0, i);
            fileinputstream.close();
            fileoutputstream.close();
            demfile=fpath;
        }
        catch(Exception exception)
        {
            demfile="";
            exception.printStackTrace();
            System.out.println(exception);
        }
        return demfile;
    }

}
