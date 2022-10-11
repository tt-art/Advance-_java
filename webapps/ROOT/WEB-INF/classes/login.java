import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class login extends HttpServlet
{
    PrintWriter out=null;
    public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
    {
        out=res.getWriter();
        String u=req.getParameter("t1");
        String p=req.getParameter("t2");
        if(u.equals("tushar@gmail.com")&&p.equals("@123"))
        {
            out.println("valid user");
        }
        else{
            out.println("invalid user");
        }
    }
}
