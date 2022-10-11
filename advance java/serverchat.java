import java.io.*;
import java.net.*;
import java.io.*;
class serverchat {
    public static void main(String[] args) {
        try{
            ServerSocket ss=new ServerSocket(8585);
            Socket soc=ss.accept();
            InputStream obj=soc.getInputStream();
            DataInputStream in=new DataInputStream(obj);
            OutputStream obj1=soc.getOutputStream();
            DataOutputStream out=new DataOutputStream(obj1);
            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
            while(true){
                String n=in.readUTF();
                System.out.println(n);
                String a=br.readLine();
                out.writeUTF(""+a);
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
}

