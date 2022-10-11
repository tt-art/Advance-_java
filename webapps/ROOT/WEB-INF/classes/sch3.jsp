<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="/sch4.jsp" method="post">
        <table>
            <th>select class to join</th>
            <tr><td><select name="sub" id="">
                <option value="php">php</option>
                <option value="dbms">dbms</option>
                <option value="ds">Data Structure</option>
            </select></td></tr>
            <tr><td><input type="submit" value="submit"></td></tr>
        </table>
        <%
        int id=Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        int mob=Integer.parseInt(request.getParameter("mob"));
        String cl=request.getParameter("cl");
        String email=request.getParameter("email");
        int m1=Integer.parseInt(request.getParameter("m1"));
        int m2=Integer.parseInt(request.getParameter("m2"));
        int m3=Integer.parseInt(request.getParameter("m3"));
        out.println("<input type=hidden name=id value="+id+">"+
        "<input type=hidden name=name value="+name+">"+
        "<input type=hidden name=cls value="+cl+">"+
        "<input type=hidden name=em value="+email+">"+
        "<input type=hidden name=mob value="+mob+">"+
        "<input type=hidden name=m1 value="+m1+">"+
        "<input type=hidden name=m2 value="+m2+">"+
        "<input type=hidden name=m3 value="+m3+">");
        
        %>
    </form>
</body>
</html>
