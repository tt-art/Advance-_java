


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="/sch3.jsp" method="post">
        <table>
            <th>Enter subject marks </th>
            <tr><td>php</td>
            <td><input type="number" name="m1" id=""></td>
            </tr>
            <tr><td>Dbms</td>
            <td><input type="number" name="m2" id=""></td>
            </tr>
            <tr><td>Data Structure</td>
            <td><input type="number" name="m3" id=""></td>
            </tr>
            <tr>
                <td><input type="submit" value="submit" name="btn2"></td>
            </tr>
            
            
            
            
        </table>
        <%
        String a= request.getParameter("btn2");
        
        
        int id=Integer.parseInt(request.getParameter("id"));
        int mob=Integer.parseInt(request.getParameter("mob"));
        String name=request.getParameter("name");
        String cl=request.getParameter("cls");
        String email=request.getParameter("em");
    
      out.println("<input type=hidden name=id value="+id+">"+
        "<input type=hidden name=name value="+name+">"+
        "<input type=hidden name=cls value="+cl+">"+
        "<input type=hidden name=em value="+email+">"+
        "<input type=hidden name=mob value="+mob+">");
        
        
        %>
    </form>
</body>
</html>
