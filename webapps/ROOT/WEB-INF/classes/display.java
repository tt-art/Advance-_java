import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.io.*;
public class display extends HttpServlet
{
    PrintWriter out=null;
    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException
    {
try{
    out=res.getWriter();
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tt");
Statement smt=con.createStatement();
ResultSet rs=smt.executeQuery("select * from course");
out.println("<html><head></head><body><form name=frm method=post action=delete2>");
out.println("<table> <tr><td>enter course id</td>");
out.println("<td><select name=CID>");
while(rs.next())
{
    int a=rs.getInt(1);
out.println("<option value="+a+"> "+a+"</option>");
}
out.println("</select></td></tr>");
out.println("<tr><td><input type=submit value=ok></td></tr></table></form></body></html>");
}
catch(Exception e)
{
    out.println(""+e);
}


    }
}
