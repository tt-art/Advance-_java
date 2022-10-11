
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class addserver extends HttpServlet 
{

    public void doGet(HttpServletRequest req, HttpServletResponse res)
    throws IOException, ServletException
    {
        PrintWriter out=res.getWriter();
        int x=4;
       int fact=1;
        for(int i=1;i<=x;i++)
        {
            fact=fact*i;
            

        }
        out.println("fact"+fact);
    }
}