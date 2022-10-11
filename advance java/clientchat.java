import java.io.*;
import java.net.*;
import java.io.*;

class clientchat {
    public static void main(String[] args) {
        try{
            Socket soc=new Socket("localhost",8585);
            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
            InputStream obj=soc.getInputStream();
            DataInputStream in=new DataInputStream(obj);
            OutputStream obj1=soc.getOutputStream();
            DataOutputStream out=new DataOutputStream(obj1);
            System.out.println("enter msg");

            while(true){
                String a=br.readLine();
                out.writeUTF(""+a);
                String n=in.readUTF();
                System.out.println(n);
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
}
