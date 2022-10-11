import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
public class secondpage extends HttpServlet
{
    PrintWriter out;
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException
    {
        try{
    out=res.getWriter();
     res.setContentType("text/html;charset=utf-8");
            int rno=Integer.parseInt(req.getParameter("t1"));
         String n=req.getParameter("t2");
            String c=req.getParameter("t3");
            out.println("<html><body>");
out.println("<form action='thirdpage' method='post'>"+
"<table>"+
"<th>internal mark</th>"+
    "<tr>"+
        "<td>java</td>"+
        "<td><input type='text' name=m1></td>"+
    "</tr>"+
    "<tr>"+
    "<tr>"+
        "<td>php</td>"+
        "<td><input type='text' name=m2></td>"+
    "</tr>"+
    "<tr>"+
    "<tr>"+
        "<td>dbms</td>"+
        "<td><input type='text' name=m3></td>"+

    "</tr>"+
    
"<input type='hidden' name='h1'  value="+rno+">"+
"<input type='hidden' name='h2'  value="+n+">"+
 "<input type='hidden' name='h3'  value="+c+">"+
      
    "<tr>"+
        "<td><input type='submit'></td>"+
    "</tr>"+
"</table>"+

"</form>"+
"</body></html>");
        }
        catch(Exception e1)
        {
            out.println(""+e1);
        }


        }
    } 

