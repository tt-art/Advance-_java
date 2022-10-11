import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;
public class shopping6 extends HttpServlet
{
    PrintWriter out;
    public void doGet(HttpServletRequest req, HttpServletResponse res)  throws IOException,ServletException
    {
        try{
            out=res.getWriter();
            String radio=req.getParameter("r1");
            HttpSession hs=req.getSession(true);
            hs.putValue("i1",radio);
            out.println("<html><head></head><body><table><tr><td>qut</>");