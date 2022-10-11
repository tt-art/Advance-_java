<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <form action="onexam2.jsp" method="post">
        <table>
            <tr>
                <td>select subject </td>
                <td><input type="radio" name="sub" value="java">java</td>
                <td><input type="radio" name="sub" value="php">php</td>
                <td><input type="radio" name="sub" value="dbms">dbms</td>
                <!-- <td><input type="submit" value="" name="bt"></td> -->
            </tr>
            <%
            int id=Integer.parseInt(request.getParameter("t1"));
            String name =request.getParameter("t2");
            String cls=request.getParameter("t3");
            String dt =request.getParameter("t4");
            String gender =request.getParameter("t5");
            session.setAttribute("id",id);
            session.setAttribute("name",name);
            session.setAttribute("cls",cls);
            session.setAttribute("dt",dt);
            session.setAttribute("gen",gender);
            %>
            <tr><td></td><input type="submit" name="btn"></td></tr>

        </table>
    </form>
    
</body>
</html>