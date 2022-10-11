import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;
public class shopping3 extends HttpServlet
{
    PrintWriter out;
    public void doGet(HttpServletRequest req, HttpServletResponse res)  throws IOException,ServletException
    {
        try{
            out=res.getWriter();
            
            res.setContentType("text/html;charset=utf-8");
            out.println("<html><body>"+
"<form action='shopping4' method='POST'>"+
"<table><th>login</th><tr>"+
        "<td>username</td>"+
        "<td><input type='text' name='uid'></td>"+
    "</tr><tr><td>password</td>"+
        "<td><input type='text' name='pass'></td></tr>"+
    "<tr><td><input type='submit' value=login></td></tr>"+
"</table>"+

"</form>"+
"</body></html>");
        }
        catch(Exception e)
        {
            out.println(""+e);

        }
    } 
}
