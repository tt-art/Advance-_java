<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My first jsp program of Backend </title>
</head>
<body>
    <form action="" name="frm" method="post" >
    <table cellspacing="25" cellpadding="">
        <tr>
         <td>Enter the Patient ID</td>
     <td><input type="number" name="t1"></td>
     </tr>
     <tr>
         <td>Enter the Patient Name</td>
     <td><input type="text" name="t2"></td>
     </tr>
     <tr>
         <td>Enter the Patient Gender</td>
     <td><input type="text" name="t3"></td>
     </tr>
     <tr>
         <td>Enter the Patient Date of Birth</td>
     <td><input type="Date" name="t4"></td>
     </tr>
     <tr>
         <td>Enter the Patient Age </td>
     <td><input type="number" name="t5"></td>
     </tr>
     <tr>
         <td>Enter the Patient Address </td>
      <td> <textarea name="t6" id="add" cols="30" rows="10"></textarea> </td>
     </tr>
     <tr>
         <td>Enter the Patient history</td>
         <td><textarea name="t7" id="his" cols="30" rows="10"></textarea> </td>
     </tr>
     <tr>
         <td>Enter the User Name </td>
     <td><input type="text" name="t8"></td>
     </tr>
     <tr>
         <td>Enter the Password </td>
     <td><input type="password" name="t9"></td>
     </tr>

     <tr>
         <td> <input type="submit" value="Submit" name="btn"></td>
     </tr>
 </table>    
    </form>
</body>
</html>
<%
 String a=request.getParameter("btn");
 if(a!=null)
 {
    try
    { 
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/patient_db", "root","");
      PreparedStatement psmt = con.prepareStatement("insert into patient values (?,?,?,?,?,?,?,?,?)");
      int id=Integer.parseInt(request.getParameter("t1"));
      String name=request.getParameter("t2");
      String gen=request.getParameter("t3");
      String date= request.getParameter("t4");
      int age=Integer.parseInt(request.getParameter("t5"));
      String add=request.getParameter("t6");
      String hist= request.getParameter("t7");       
          String Username=request.getParameter("t8");
      String Password=request.getParameter("t9");
      psmt.setInt(1,id);
      psmt.setString(2,name);
      psmt.setString(3,gen);
      psmt.setString(4,date);
      psmt.setInt(5,age);
      psmt.setString(6,add);
      psmt.setString(7,hist);
      psmt.setString(8,Username);
      psmt.setString(9,Password);
      

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