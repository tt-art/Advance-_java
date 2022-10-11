<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My first jsp program of Backend </title>
</head>
<body><form><table>
    <tr>
        <td> <input type="submit" value="Submit" name="btn"></td>
    </tr>
</table>    
 <table border=1 width=750>
   <tr>
    <td>patientid</td><td>patientname</td><td>patientgender</td><td>patientdob</td><td>patientage</td><td>patientadd</td><td>patienthistory</td><td>patientusername</td><td>patientpass</td>
   </tr>
 

<%
 String a=request.getParameter("btn");
 if(a!=null)
 {
    try
    { 
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/patient_db", "root","");
      Statement smt = con.createStatement();
      
      
                  
                  ResultSet rs=smt.executeQuery("select * from patient ");
                                    while(rs.next())
                    {
                        

                        {
                            
                        out.println("<td>"+rs.getInt(1)+"</td>");
                        out.println("<td>"+rs.getString(2)+"</td>");
                        out.println("<td>"+rs.getString(3)+"</td>");
                        out.println("<td>"+rs.getString(4)+"</td>");
                        out.println("<td>"+rs.getInt(5)+"</td>");
                        out.println("<td>"+rs.getString(6)+"</td>");
                        out.println("<td>"+rs.getString(7)+"</td>");
                        out.println("<td>"+rs.getString(8)+"</td>");
                        out.println("<td>"+rs.getString(9)+"</td></tr>");
                        }                       
                    }
                     
                }
                       
                catch(Exception e)
                    {
                     
                     }
                     
                     
    }
 %>
</form>
</body>
</html>