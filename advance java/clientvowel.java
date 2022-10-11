import java.io.*;
import java.net.*;

class clientvowel
{
    public static void main(String[] args) {
        try{
            Socket soc =new Socket("localhost",8585);
            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
            InputStream obj=soc.getInputStream();
            DataInputStream in=new DataInputStream(obj);

            OutputStream obj1 =soc.getOutputStream();
            DataOutputStream out=new DataOutputStream(obj1);
            System.out.println("enter file name");
            String fname=br.readLine();
            out.writeUTF(""+fname);
            
            int count=Integer.parseInt(in.readUTF());
            System.out.println("count="+count);




        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
}