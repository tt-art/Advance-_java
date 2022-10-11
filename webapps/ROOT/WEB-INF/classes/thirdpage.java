import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
public class thirdpage extends HttpServlet
{
    PrintWriter out;
    public void doPost(HttpServletRequest req, HttpServletResponse res)  throws IOException,ServletException
    {
        try{
            out=res.getWriter();
            int rno=Integer.parseInt(req.getParameter("h1"));
            String n=req.getParameter("h2");
            String c=req.getParameter("h3");
            int m1=Integer.parseInt(req.getParameter("m1"));
            System.out.println(""+m1);
            int m2=Integer.parseInt(req.getParameter("m2"));
            System.out.println(""+m2);
            int m3=Integer.parseInt(req.getParameter("m3"));
            System.out.println(""+m3);
            res.setContentType("text/html;charset=utf-8");
            out.println("<html><body>"+
"<form action='fourthpage' method='POST'>"+
"<table><th>External mark</th><tr>"+
        "<td>java</td>"+
        "<td><input type='text' name='em1'></td>"+
    "</tr><tr><tr><td>php</td>"+
        "<td><input type='text' name='em2'></td>"+
    "</tr><tr><tr><td>dbms</td>"+
        "<td><input type='text' name='em3'></td></tr>"+
    
      
    "<tr><td><input type='submit'></td></tr>"+
"</table>"+
"<input type='hidden' name=h1  value="+rno+">"+
"<input type='hidden' name='h2'  value="+n+">"+
"<input type='hidden' name='h3'  value="+c+">"+
"<input type='hidden' name='h4'  value="+m1+">"+
"<input type='hidden' name='h5'  value="+m2+">"+
"<input type='hidden' name='h6'  value="+m3+">"+

"</form>"+
"</body></html>");
        }
        catch(Exception e)
        {
            out.println(""+e);

        }
    } 
}
