import java.net.*;
import java.io.*;

class charclient {
    public static void main(String[] args) {
        try{
            Socket soc =new Socket("localhost",8585);
            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
            InputStream obj=soc.getInputStream();
            DataInputStream in=new DataInputStream(obj);

            OutputStream obj1 =soc.getOutputStream();
            DataOutputStream out=new DataOutputStream(obj1);
            while(true)
            {
            System.out.println("enter char"); 
            String c=br.readLine();
            out.writeUTF(""+c);
            
            System.out.println("enter String");      
            String s=br.readLine();
            out.writeUTF(""+s);
            
    
           int count=Integer.parseInt(in.readUTF());
            System.out.println(count);
            }
            
    
    
        }
        catch(Exception e)
        {
            e.printStackTrace();
    
        }
    }
    
}
