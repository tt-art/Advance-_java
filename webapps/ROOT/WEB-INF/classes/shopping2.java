import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;
public class shopping2 extends HttpServlet
{
    PrintWriter out;
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException
    {
        try{

            out=res.getWriter();
            HttpSession hs=req.getSession(true);
String n=req.getParameter("t1");
String email=req.getParameter("t2");
String m=req.getParameter("t3");
String g=req.getParameter("t4");
String pass=req.getParameter("t5");
String cpass=req.getParameter("t6");
 hs.putValue("p1",n);
 hs.putValue("p2",email);
 hs.putValue("p3",m);
 hs.putValue("p4",g);
 hs.putValue("p5",pass);
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tt");
        
            PreparedStatement psmt=con.prepareStatement("insert into shopping values(?,?,?,?,?)");
psmt.setString(1,n);
psmt.setString(2,email);
psmt.setString(3,m);
psmt.setString(4,g);
psmt.setString(5,pass);
int cnt=psmt.executeUpdate();
if(cnt!=0)
    res.sendRedirect("http://127.0.0.1:6060/shopping3");
else
out.println("error");
   
        }
        catch(Exception e1)
        {
            out.println(""+e1);
        }


        }
    } 

