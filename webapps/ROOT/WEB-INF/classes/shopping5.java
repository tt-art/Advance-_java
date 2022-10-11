import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;
public class shopping5 extends HttpServlet
{
    PrintWriter out;
    public void doGet(HttpServletRequest req, HttpServletResponse res)  throws IOException,ServletException
    {
        try{
            out=res.getWriter();
            out.println("<!DOCTYPE html>"+
            "<html lang='en'>"+
            "<head>"+
                "<meta charset='UTF-8'>"+
                "<meta http-equiv='X-UA-Compatible' content='IE=edge'>"+
                "<meta name='viewport' content='width=device-width, initial-scale=1.0'>"+
            
            "    <title>Document</title>"+
            "</head>"+
            "<body><form name=frm action=shopping6>"+
                "<table>"+
                    "<tr>"+
                    
                "<td><img src='/Tomcat 7.0/webapps/ROOT/wallpaperflare.com_wallpaper (1).jpg' width='50%'></td>"+
                "<td><img src='/Tomcat 7.0/webapps/ROOT/wallpaperflare.com_wallpaper (2).jpg' width='50%'></td>"+
                "<td><img src='/Tomcat 7.0/webapps/ROOT/wallpaperflare.com_wallpaper (1).jpg' width='50%'></td>"+
                "</tr>"+
               
                "<tr>"+
               "<td><input type='radio'  value='r1'>"+
            "<label>Arrya Stark</label></td>"+
             "<td><input type='radio' value='r1'>"+
                "<label>Khlise</label></td>"+
            "  <td><input type='radio' value='r1'>"+
            "  <label>Arrya Stark</label></td>"+
                "</tr>  "+
                
                "<tr><td><input type='submit' value=next></td></tr>"+

                // "<tr>"+
                //     "<td><input type='submit' value='ok' ></td>"+
                // "</tr>"+

            "</form></body>"+
            "</html>");

        }
        catch(Exception e)
        {
            out.println(""+e);

        }
    } 
}