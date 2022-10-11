<%@ page import = "java.sql.*" %>       
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <form action="" method="">
        <table>
            <tr>
                <td>select subject </td>
                <td><input type="radio" name="sub" value="java">java</td>
                <td><input type="radio" name="sub" value="php">php</td>
                <td><input type="radio" name="sub" value="dbms">dbms</td>
                <!-- <td><input type="submit" value="" name="bt"></td> -->
            </tr>
            <tr><td></td><input type="submit" name="btn"></td></tr>
            <%
            String a=request.getParameter("btn");
            out.println(a);
 if(a!=null)
 {
    try
    { 
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/demo", "root","");
      PreparedStatement psmt = con.prepareStatement("insert into demotbl values (?)");
      String subject=request.getParameter("sub");
   
      psmt.setString(1,subject);
      

      int cnt = psmt.executeUpdate();
      if(cnt>0)
      {
          out.println("Record Inserted");
      }
      else
      {
          out.println("Record not inserted ");
      }
    }
    catch(Exception e)
    {
        out.println(""+e);
    }
}  
            %>

        </table>
    </form>
    
</body>
</html>