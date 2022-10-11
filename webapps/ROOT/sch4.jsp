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
        String cls=request.getParameter("cls");
        String em=request.getParameter("em");
        int m1=Integer.parseInt(request.getParameter("m1"));
        int m2=Integer.parseInt(request.getParameter("m2"));
        int m3=Integer.parseInt(request.getParameter("m3"));
        int total=m1+m2+m3;
        int per=total/150*100;
        String sub=request.getParameter("sub");


      out.println("  <table>"+
            "<th>Student details</th>"+
            "<tr><td>    Registration Id</td>"+
                "<td>"+id+" </td></tr>"+
            "<tr><td>    student name</td><td> "+name+"</td></tr>"+
            "<tr><td>class</td><td>"+cls+" </td></tr>"+
            "<tr>  <td>    Email id</td><td> "+em+"</td></tr>"+
            "<tr><td>    mobile no</td><td> "+mob+"</td></tr>"+
            "<th>Subject details</th>"+
            "<tr><td>php marks</td> <td>"+m1+"</td></tr>"+
            "<tr><td>dbms marks</td><td>"+m2+"</td></tr>"+
            "<tr><td>data structure</td><td>"+m3+"</td></tr>"+
            "<tr><td>total</td><td>"+total+"</td></tr>"+
            "<tr><td>percentage</td><td>"+per+"</td></tr>");
            if(per>70)
            {
                
                out.println("<tr><td>scholarship</td><td>10%</td></tr>");
            }
            else if(per>60&&per<70)
            {
                out.println("<tr><td>scholarship</td><td>8%</td></tr>");
                
            }
            else{
                
                out.println("<tr><td>scholarship</td><td>5%</td></tr>");
            }
            if(sub.equals("php"))
            {
                out.println("<tr><td>fees for php</td><td>15000/- ruppes</td></tr>");
                
            }
          else  if(sub.equals("ds"))
            {
                out.println("<tr><td>fees for data structure</td><td>20000/- ruppes</td></tr>");
                
            }
          else  if(sub.equals("dbms"))
            {
                out.println("<tr><td>fees for dbms</td><td>25000/- ruppes</td></tr>");
                
            }
            else{
                
            }
            
        %>     

        </table>
    </form>
</body>

</html>