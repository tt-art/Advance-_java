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
             <td>Enter the Patient email</td>
         <td><input type="email" name="t3"></td>
         </tr>
         <tr>
             <td>Enter the Patient phone</td>
         <td><input type="number" name="t4"></td>
         </tr>
         <tr>
             <td>Enter the password</td>
         <td><input type="password" name="t5"></td>
         </tr>
         <tr><td><input type="submit" name="bt"></td></tr>
         </table>
</body>
</html>
<%
String bt=request.getParameter("bt");
if(bt!=null)
{
    try{
        int id =Integer.parseInt(request.getParameter("t1"));
        String name=request.getParameter("t2");
    String em=request.getParameter("t3");
    String phone=request.getParameter("t4");
    String pass=request.getParameter("t5");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/admission", "root","");
PreparedStatement psmt=con.prepareStatement("insert into registration values(?,?,?,?,?)");   
psmt.setInt(1,id);
psmt.setString(2,name);
psmt.setString(3,em);
psmt.setString(4,phone);
psmt.setString(5,pass);
int cnt= psmt.executeUpdate();
if(cnt>0)
{
    out.println("Record Inserted");
}
else
{
    out.println("Record not inserted ");
}



}
catch(Exception e )
{
out.println(e);
}
}


%>