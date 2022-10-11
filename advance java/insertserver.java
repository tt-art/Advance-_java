
import java.io.*;
import java.net.*;
import java.sql.*;
class insertserver {
    public static void main(String[] args) {
        try{
            ServerSocket ss=new ServerSocket(8585);
            Socket soc=ss.accept();
            InputStream obj=soc.getInputStream();
            DataInputStream in=new DataInputStream(obj);
            OutputStream obj1=soc.getOutputStream();
            DataOutputStream out=new DataOutputStream(obj1);

            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:emp");
            while(true)
            {
                PreparedStatement psmt=con.prepareStatement("insert into student values(?,?,?,?,?,?);");
                int r=Integer.parseInt(in.readUTF());
                psmt.setInt(1, r);
                
                String n=in.readUTF();
                psmt.setString(2,n);
                
                int a=Integer.parseInt(in.readUTF());
                psmt.setInt(3, a);
                
                String g=in.readUTF();
                psmt.setString(4,g);

                String u=in.readUTF();
                psmt.setString(5,u);

                String p=in.readUTF();
                psmt.setString(6,p);

                int cnt=psmt.executeUpdate();
                if(cnt==1)
                out.writeUTF("record updated");
                else
                out.writeUTF("record not updated");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
}
