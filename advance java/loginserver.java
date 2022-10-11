import java.net.*;
import java.io.*;
import java.sql.*;
class loginserver {
    public static void main(String[] args) {
        try{
            ServerSocket ss= new ServerSocket(8585);
            Socket soc=ss.accept();
            InputStream obj=soc.getInputStream();
            DataInputStream in=new DataInputStream(obj);
            OutputStream obj1=soc.getOutputStream();
            DataOutputStream out=new DataOutputStream(obj1);
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:emp");
            Statement smt=con.createStatement();
            ResultSet rs=smt.executeQuery("Select* from user");
            int flag=0;
            while(true)
            {
                String str1=in.readUTF();
                String str2=in.readUTF();

                while(rs.next())
                {
                    if(rs.getString(1).equals(str1)&&rs.getString(2).equals(str2))
                    {
                    flag=1;
                    break;
                    }
                    else 
                    {
                    flag=0;
                    break;
                    }
                }

                if(flag==1)
                out.writeUTF("user is valid");
                else
                out.writeUTF("user is not valid");
            }
          
          
        }

        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
