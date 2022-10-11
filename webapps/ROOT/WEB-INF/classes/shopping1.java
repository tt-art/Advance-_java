import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.*;
import java.sql.*;
public class shopping1 extends HttpServlet
{
    PrintWriter out;
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException
    {
        try{
            out=res.getWriter();
    //              Class.forName("oracle.jdbc.driver.OracleDriver");
    // Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tt");
out.println("<!DOCTYPE html>"+
"<html lang='en'>"+
"<head>"+
    "<meta charset='UTF-8'>"+
    "<meta name='viewport' content='width=device-width, initial-scale=1.0'>"+
    "<title>Document</title>"+
"</head>"+
"<body>"+
"<form action=shopping2 method=POST>"+
"<table>"+
    "<tr>"+
        "<td>name</td>"+
        "<td><input type=text name=t1></td>"+
    "</tr>"+
    "<tr>"+
        "<td>email</td>"+
        "<td><input type=text    name=t2></td>"+
    "</tr>"+
    "<tr>"+
        "<td>mobile</td>"+
        "<td><input type=text name=t3></td>"+
    "</tr>"+
    "<tr>"+
        "<td>gender</td>"+
        "<td><input type=text name=t4></td>"+
    "</tr>"+
    "<tr>"+
        "<td>password</td>"+
        "<td><input type=text name=t5></td>"+
    "</tr>"+
    "<tr>"+
        "<td>confirm password</td>"+
        "<td><input type=text name=t6></td>"+
"    </tr>"+
  
"    <tr>"+
"        <td><input type=submit value=registration></td>"+
    "</tr>"+
"</table>"+

"</form>"+
    
"</body>"+
"</html>");


    }
    catch(Exception e)
    {
        out.println (""+e);

    }
} 
}
