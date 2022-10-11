import java.net.*;
import java.io.*;
class charserver {
    public static void main(String[] args) {
        try{
            ServerSocket ss= new ServerSocket(8585);
            Socket soc=ss.accept();
            InputStream obj=soc.getInputStream();
            DataInputStream in=new DataInputStream(obj);
            OutputStream obj1=soc.getOutputStream();
            DataOutputStream out=new DataOutputStream(obj1);
           while(true)
           {
            String c=in.readUTF();
            String b=in.readUTF();

            int x=b.indexOf(c);
            int x2=b.indexOf(c,++x);
            int ans=x2-x;
            out.writeUTF(""+ans);
           }
          
        }

        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
