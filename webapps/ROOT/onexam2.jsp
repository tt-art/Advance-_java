
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
<form action="onexam3.jsp" method="post">
    <table>

       
        <%
        String sub=request.getParameter("sub");
        session.setAttribute("sub",sub);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/exam", "root","");
        PreparedStatement psmt=con.prepareStatement("select * from questiontbl where sub=?");   
        psmt.setString(1,sub);
        int id=1;
        int ra=1;
        ResultSet rs=psmt.executeQuery();
        while(rs.next())
        {
             out.println(" <tr> <td>"+id+"</td><td>"+rs.getString(3)+"</td></tr>"+
            "<tr> <td> <input type=radio name='op"+ra+"' value='a'>"+rs.getString(4)+"</td><td> <input type=radio name='op"+ra+"' value='b'>"+rs.getString(5)+" </td>"+
                "<td> <input type=radio name='op"+ra+"' value='c'>"+rs.getString(6)+"</td>"+
                "<td> <input type=radio name='op"+ra+"' value='d'>"+rs.getString(7)+"</td>"+
           "</tr>");
           id++;
           ra++;
        }
        out.println("<tr><td><input type=submit value=submit></td></tr>");
        

        
        %>
    </table>
</form>

</body>
</html>