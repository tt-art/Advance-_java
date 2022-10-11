import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.io.*;
public class delete3 extends HttpServlet
{
    PrintWriter out=null;
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException
    {
try{
    out=res.getWriter();
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tt");
    PreparedStatement psmt=con.prepareStatement("delete from course where CID=?");
    int id=Integer.parseInt(req.getParameter("CID"));
    psmt.setInt(1,id);
int cnt=psmt.executeUpdate();
if(cnt!=0)
{
    
    out.println("record deleted");
}
else{
    
    out.println("record not deleted");
}

}
catch(Exception e1)
{
    out.println(""+e1);
}


    }
}
