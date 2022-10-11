<!DOCTYPE html>>
        <head></head>>
        <body><form><table> <tr><td>enter Username</td><td><input type="text" name="t1"></td></tr>
            <tr><td>enter pass</td><td><input type="text" name="t2"></td></tr>
            <tr><td><input type ="submit" name="btn"></td></tr>
        
        
      </table></form></body>
</html>
<%

String a=request.getParameter("btn");
if(a!=null)
{
   try
   { 
     Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/patient_db", "root","");
     Statement smt = con.createStatement();
     ResultSet rs=smt.executeQuery("select Username,password form Patient ");
     String Username=request.getParameter("t1");
     String password=request.getParameter("t2");
     

 }

 }






%>