<%--     Document   : displayRecord
    Created on : Mar 29, 2017, 11:45:25 PM
    Author     : N
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <table width="100%">
            <tr height="100px">
                <td colspan="4" align="center"><h1><b>Student Admission</b></h1></td></tr>
            <tr height="50px" align="center"><td><h3><a href="home.jsp">Home</a></h3></td>
                <td><h3><a href="registration.jsp">Student Admission</a></h3></td>
                <td><h3><a href="feedback.jsp">Feedback</a></h3></td>
                <td><h3><a href="aboutus.jsp">About Us</a></h3></td></tr>
            <tr height="500px" align="center"><td colspan="4">  
                     <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try
    {
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/student","root","");
           
             st = c1.createStatement();
             q="select * from cust";
             rs1=st.executeQuery(q);
             out.println("<table width=50% height=20% align=center>");
              out.println("<tr><th>Id</th><th>Name</th><th>Email</th><th>Mobile</th><th>Address</th><th>Gender</th><th>Course Name</th><th>Fees</th></tr>");
             while(rs1.next())
             {
                 int id=rs1.getInt("id");
                 String name=rs1.getString("name");
                 String email=rs1.getString("email");
                 String mobile=rs1.getString("mobile");
                 String address=rs1.getString("address");
                 String gender=rs1.getString("gender");
                 String coursename=rs1.getString("coursename");
                 String fees=rs1.getString( "fees");
                 out.println("<tr><td>"+id+"</td><td>"+name+"</td><td>"+email+"</td><td>"+mobile+"</td><td>"+address+"</td><td>"+gender+"</td><td>"+coursename+"</td><td>"+fees+"</td></tr>");
             }   
              }
             catch(Exception e)
             {
                   out.print(e);
             }
            
   %>
                </td></tr>
        </table>
    </body>
</html>
