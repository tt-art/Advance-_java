<%@ page import ="java.sql.*"%>

<html>


<head>
    <title>patientdelete</title>
</head>
</html>

<body>
    <center>
    <form name="frm">
        <table cellspacing="23" >
        
            
            <tr>
                <td>enter the patientid</td>
                <td><select name=patientid>
                    <%
                      try
                       { 
                         Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/patient_db", "root","");
                         Statement stmt=con.createStatement();                        
                         ResultSet rs=stmt.executeQuery("select * from patient");
                         while (rs.next())
                         {
                            int a=rs.getInt(1);
                            out.println("<option value="+a+">"+a+"</option>");
                           }
                        }
                          catch(Exception e)
                             {
                               out.println(""+e);
                              }
                       
 %>
</td>
</tr>

    <tr>
                <td><input type="submit"  name="btn" value="ok"></td>
            </tr></table>
            <%
            try
              {
                String a=request.getParameter("btn");
                if(a!=null)
                 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/patient_db", "root","");
            PreparedStatement psmt = con.prepareStatement("select * from patient where id =?");
                  psmt.setInt(1,Integer.parseInt(request.getParameter("patientid")));
                  ResultSet rs=psmt.executeQuery();
                  out.println("<table border=1>");
                  while(rs.next())
                    {
                        out.println("<tr><td>patientid</td><td>"+rs.getInt(1)+"</td></tr>");
                        out.println("<tr><td>patientname</td><td>"+rs.getString(2)+"</td></tr>");
                        out.println("<tr><td>patientGender</td><td>"+rs.getString(3)+"</td></tr>");
                        out.println("<tr><td>patientDOB</tr><td>"+rs.getString(4)+"</td></tr>");
                        out.println("<tr><td>patientAge</td><td>"+rs.getInt(5)+"</td></tr>");
                        out.println("<tr><td>patientAddress</td><td>"+rs.getString(6)+"</td></tr>");
                        out.println("<tr><td>patientHistory</td><td>"+rs.getString(7)+"</td></tr>");
                        out.println("<tr><td>Username</td><td>"+rs.getString(8)+"</td></tr>");
                        out.println("<tr><td>Password</td><td>"+rs.getString(9)+"</td></tr>");

                        
                    }
                     out.println("<tr><td><input type=submit  name=btn1 value=delete></td></tr></table>");
                }
                       
                catch(Exception e)
                    {
                     out.println(""+e);
                     }
                     
                     

                 %>

 

 <%
    try
        {
          String b=request.getParameter("btn1");
          if(b!=null)
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/patient_db", "root","");
          PreparedStatement psmt = con.prepareStatement("delete from patient where id =?");
          psmt.setInt(1,Integer.parseInt(request.getParameter("patientid")));
          int cnt = psmt.executeUpdate();
        
          if(cnt>0)
            {
              out.println("<script>alert('record delete')</script>");
            }
         else
              {
               out.println("<script>alert('record not delete')</script>");
              }
        }
        catch(Exception e)
        {
             out.println(""+e);
        }
    %>
                             





