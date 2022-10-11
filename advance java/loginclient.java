import java.io.*;
import java.net.*;



class loginclient
 {
     public static void main(String[] args) {
         try{
             Socket soc=new Socket("localhost",8585);
             InputStream obj=soc.getInputStream();
             DataInputStream in=new DataInputStream(obj);
             OutputStream obj1=soc.getOutputStream();
             DataOutputStream out=new DataOutputStream(obj1);
             BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
             while(true)
             {
            System.out.println("enter user name");
            String Uname=br.readLine();
            out.writeUTF(""+Uname);
            System.out.println("enter user pass");
            String pass=br.readLine();
            out.writeUTF(""+pass);
            String a=in.readUTF();
            System.out.println(a);
            }
        
         }
         catch (Exception e)
         {
             e.printStackTrace();
         }
     }
    
}
