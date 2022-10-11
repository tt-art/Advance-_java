import java.io.*;
import java.net.*;


class servervowel {
    public static void main(String[] args) {
        try{
           ServerSocket ss =new ServerSocket(8585);
           Socket soc=ss.accept();

            InputStream obj=soc.getInputStream();
            DataInputStream in=new DataInputStream(obj);

            OutputStream obj1 =soc.getOutputStream();
            DataOutputStream out=new DataOutputStream(obj1);
            
            String str=in.readUTF();
            
            
            FileReader f1=new FileReader(str);
            int count=0;
            int ch;
            while((ch=f1.read())!=-1)
            {
                if(ch=='a'||ch=='e'||ch=='i'||ch=='o'||ch=='u'||ch=='A'||ch=='E'||ch=='I'||ch=='O'||ch=='U')
                count++;
            }
            f1.close();
            out.writeUTF(""+count);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
}
  