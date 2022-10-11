import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.io.*;
public class display2 extends HttpServlet
{
    PrintWriter out=null;
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException
    {
try{
    out=res.getWriter();
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tt");
    PreparedStatement psmt=con.prepareStatement("select * from course where CID=?");
ResultSet rs=psmt.executeQuery();
out.println("<html><head></head><body><form name=frm method=post action=delete3>");
out.println("<table><tr><td>course id</td><td>course name</td><td>course fees</td> ");
while(rs.next())
{
    int id=Integer.parseInt(req.getParameter("cid"));
    out.println("<tr><td><input type=hidden name=temp value="+id+"></td></tr>");
    out.println("<tr><td>"+id+"</td>");
    out.println("<td>"+rs.getString(2)+"</td>");
    out.println("<td>"+rs.getString(3)+"</td>");
    out.println("<td>"+rs.getString(4)+"</td>");
    out.println("<td>"+rs.getString(5)+"</td>");
    out.println("<td>"+rs.getString(6)+"</td>");
    out.println("<td>"+rs.getString(7)+"</td> </tr>");

}
// out.println("<tr><td rowspan=7><input type= btn value= delete></td></tr>");

}
catch(Exception e1)
{
    out.println(""+e1);
}


    }
}
