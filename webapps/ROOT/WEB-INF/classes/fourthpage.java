import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;
public class fourthpage extends HttpServlet
{
    PrintWriter out;
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException
    {
        try{
            out=res.getWriter();
                 Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tt");

            int rno=Integer.parseInt(req.getParameter("h1"));
            String n=req.getParameter("h2");
            String c=req.getParameter("h3");
            int m1=Integer.parseInt(req.getParameter("h4"));
            int m2=Integer.parseInt(req.getParameter("h5"));
            int m3=Integer.parseInt(req.getParameter("h6"));
            int em1=Integer.parseInt(req.getParameter("em1"));
            int em2=Integer.parseInt(req.getParameter("em2"));
            int em3=Integer.parseInt(req.getParameter("em3"));
            
            int total1=m1+em1;
            int total2=m2+em2;
            int total3=m3+em3;
            int total= total1+total2+total3;
            int avg=total/3;
            String f="";
            String r="";
            if(avg>70)
             f="A grade";
            else if(avg>50&&avg<70)
            f="B grade";
            else if(avg>30&&avg<50)
            f="C grade";
            else
            f="D grade";

            if(avg>=40)
            r="pass";
            else
            r="fail";
            
            res.setContentType("text/html;charset=utf-8");
            out.println("<html><body><form>"+
"<table border='2px solid black'><tr> <td>roll no</td><td>"+rno+"</td></tr>"+
    "<tr><td>name</td><td>"+n+"</td></tr>"+
    "<tr><td>class</td><td>"+c+"</td></tr>"+
    "<tr><td>subject</td><td>internal </td><td>external </td><td>total </td></tr>"+
    "<tr><td>java</td><td>"+m1+"</td><td>"+em1+"</td><td>"+total1+"</td></tr>"+
    "<tr><td>php</td><td>"+m2+"</td><td>"+em2+"</td><td>"+total2+"</td></tr>"+
    "<tr><td>dbms</td><td>"+m3+"</td><td>"+em3+"</td><td>"+total3+"</td></tr>"+
    "<tr colspan=2>"+
    "<td>total</td>"+
    "<td>"+total+"</td>"+
    "</tr>"+
    "<tr colspan=2><td>avg</td><td>"+avg+"</td> </tr>"+
    "<tr colspan=2><td>grade</td><td>"+f+"</td></tr>"+
    "<tr><td>result</td><td>"+r+"</td></tr></table></form>"+
"</body></html>");
    PreparedStatement psmt=con.prepareStatement("insert into result values(?,?,?,?,?,?,?)");
    psmt.setInt(1,rno);
    psmt.setString(2,n);
    psmt.setString(3,c);
    psmt.setInt(4,total);
    psmt.setInt(5,avg);
    psmt.setString(6,f);
    psmt.setString(7,r);
    int cnt=psmt.executeUpdate();
    if(cnt!=0)
    out.println("record inserted");
    

        }
        catch(Exception e)
        {
            out.println (""+e);

        }
    } 
}
