import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;
public class shopping4 extends HttpServlet
{
    PrintWriter out;
    public void doPost(HttpServletRequest req, HttpServletResponse res)  throws IOException,ServletException
    {
        try{
            out=res.getWriter();
            String u=req.getParameter("uid");
            String p=req.getParameter("pass");

            Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tt");

Statement smt=con.createStatement();
ResultSet rs =smt.executeQuery("select * from shopping");
while(rs.next())
{
    if(rs.getString(2).equals(u)&&rs.getString(5).equals(p))
    {
    
    res.sendRedirect("http://127.0.0.1:6060/shopping5");
    break;
    }
    else 
    {
      //  res.sendRedirect("http://127.0.0.1:6060/shopping5");
    break;
    }
    }

}
catch(Exception e)
{
    out.println(""+e);

}
} 
}






