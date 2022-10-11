import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.io.*;
public class insert1 extends HttpServlet
{
    PrintWriter out=null;
    public void doPost(HttpServletRequest req, HttpServletResponse res)
    throws IOException,ServletException
    {
try{
    int id=Integer.parseInt(req.getParameter("t1"));
    String name=req.getParameter("t2");
    int fees=Integer.parseInt(req.getParameter("t3"));
    String sdate=req.getParameter("t4");
    int maxs=Integer.parseInt(req.getParameter("t5"));
    String time=req.getParameter("t6");
    String des=req.getParameter("t7");
    out=res.getWriter();
     Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tt");
    PreparedStatement psmt=con.prepareStatement("insert into cource values(?,?,?,?,?,?,?)");
    psmt.setInt(1, id); 
    psmt.setString(2,name); 
    psmt.setInt(3, fees); 
    psmt.setString(4,sdate); 
    psmt.setInt(5, maxs); 
    psmt.setString(6,time); 
    psmt.setString(7,des); 
    int cnt =psmt.executeUpdate();
    
    

    if(cnt!=0)
    {
    out.println("record inserted");    
    }
    else
    {
        out.println("not inserted");
    }
}
    catch(Exception e)
    {
        out.println(e);
    }


    }
}