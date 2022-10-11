<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="">

        <%
        int id=Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        int mob=Integer.parseInt(request.getParameter("mob"));
        String cl=request.getParameter("cl");
        String email=request.getParameter("email");
        int m1=Integer.parseInt(request.getParameter("m1"));
        int m2=Integer.parseInt(request.getParameter("m2"));
        int m3=Integer.parseInt(request.getParameter("m3"));

      out.println("  <table>"+
            "<th>Student details</th>"+
            "<tr><td>    Registration Id</td>"+
                "<td>"+id+" </td></tr>"+
            "<tr><td>    student name</td>"+name+"<td> </td></tr>"+
            "<tr><td>class</td>"+cl+"<td> </td></tr>"+
            "<tr>  <td>    Email id</td>"+email+"<td> </td></tr>"+
            "<tr><td>    mobile no</td>"+mob+"<td> </td></tr>"+
            "<th>Subject details</th>"+
            "<tr><td>php marks</td> <td>"+m1+"</td></tr>"+
            "<tr><td>dbms marks</td><td>"+m2+"</td></tr>"+
            "<tr><td>data structure</td><td>"+m3+"</td></tr>"+
        %>     

        </table>
    </form>
</body>

</html>