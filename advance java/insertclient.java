import java.io.*;
import java.net.*;

class insertclient
 {
    public static void main(String[] args)
     {
        try{
            Socket soc=new Socket("localhost",8585);
            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
            InputStream obj=soc.getInputStream();
            DataInputStream in=new DataInputStream(obj);
            OutputStream obj1=soc.getOutputStream();
            DataOutputStream out=new DataOutputStream(obj1);
            while(true)
            {
                System.out.println("enter roll no");
                int rno=Integer.parseInt(br.readLine());
                out.writeUTF(""+rno);
                
                System.out.println("enter Student name");
                String name=br.readLine();
                out.writeUTF(""+name);
                
                System.out.println("enter age");
                int age=Integer.parseInt(br.readLine());
                out.writeUTF(""+age);
                
                System.out.println("enter gender");
                String gender=br.readLine();
                out.writeUTF(""+gender);
                
                System.out.println("enter username");
                String uname=br.readLine();
                out.writeUTF(""+uname);
                
                System.out.println("enter pass");
                String pass=br.readLine();
                out.writeUTF(""+pass);
                
                String a=in.readUTF();
                System.out.println(a);

                
            }
            

        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
