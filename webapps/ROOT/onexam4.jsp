
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
<form action="" method="post">
    <table>
       
   <%
    
    String x=(String)session.getAttribute("sub");
    String name=(String)session.getAttribute("name");
    String cls=(String)session.getAttribute("cls");
    String dt=(String)session.getAttribute("dt");
    String gender=(String)session.getAttribute("gen");
    int count=(Integer)session.getAttribute("count");
    int id=(Integer)session.getAttribute("id");
        
out.println("<tr><td>roll no </td> <td>"+id+"</td></tr>"+
"<tr><td>name </td> <td>"+name+"</td></tr>"+
"<tr><td>class  </td> <td>"+cls+"</td></tr>"+
"<tr><td>date </td> <td>"+dt+"</td></tr>"+
"<tr><td>gender </td> <td>"+gender+"</td></tr>"+
"<tr><td>sub </td> <td>"+x+"</td></tr>"+
"<tr><td> marks obtained :-</td> <td>"+count+"</td><td>out of 50</td></tr>");
        %>
    </table>
</form>

</body>
</html>