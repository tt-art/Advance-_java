
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
<form action="onexam4.jsp" method="post">
    <table>

       
        <%
        
        String x=(String)session.getAttribute("sub");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/exam", "root","");
        PreparedStatement psmt=con.prepareStatement("select * from questiontbl where sub=?");   
        psmt.setString(1,x);
        int count=0;
        
        int ra=1;
        ResultSet rs=psmt.executeQuery();
        while(rs.next())
        {
            String str="op"+ra;
        String ans=request.getParameter(str);
         
        
           if(rs.getString(8).equals(ans))
           {
               count++;
           }
           ra++;
        }
        
session.setAttribute("count",count);
        
        %>
        <tr><td>print result</td><td><input type="submit" value="print"></td></tr>
    </table>
</form>

</body>
</html>