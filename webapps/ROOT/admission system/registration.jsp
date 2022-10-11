<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>The Easiest Way to Add Input Masks to Your Forms</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        body{
    background-color: #dee9ff;
}

.registration-form{
	padding: 50px 0;
}

.registration-form form{
    background-color: #fff;
    max-width: 600px;
    margin: auto;
    padding: 50px 70px;
    border-top-left-radius: 30px;
    border-top-right-radius: 30px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}

.registration-form .form-icon{
	text-align: center;
    background-color: #5891ff;
    border-radius: 50%;
    font-size: 40px;
    color: white;
    width: 100px;
    height: 100px;
    margin: auto;
    margin-bottom: 50px;
    line-height: 100px;
}

.registration-form .item{
	border-radius: 20px;
    margin-bottom: 25px;
    padding: 10px 20px;
}

.registration-form .create-account{
    border-radius: 30px;
    padding: 10px 20px;
    font-size: 18px;
    font-weight: bold;
    background-color: #5791ff;
    border: none;
    color: white;
    margin-top: 20px;
}

.registration-form .social-media{
    max-width: 600px;
    background-color: #fff;
    margin: auto;
    padding: 35px 0;
    text-align: center;
    border-bottom-left-radius: 30px;
    border-bottom-right-radius: 30px;
    color: #9fadca;
    border-top: 1px solid #dee9ff;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}

.registration-form .social-icons{
    margin-top: 30px;
    margin-bottom: 16px;
}

.registration-form .social-icons a{
    font-size: 23px;
    margin: 0 3px;
    color: #5691ff;
    border: 1px solid;
    border-radius: 50%;
    width: 45px;
    display: inline-block;
    height: 45px;
    text-align: center;
    background-color: #fff;
    line-height: 45px;
}

.registration-form .social-icons a:hover{
    text-decoration: none;
    opacity: 0.6;
}

@media (max-width: 576px) {
    .registration-form form{
        padding: 50px 20px;
    }

    .registration-form .form-icon{
        width: 70px;
        height: 70px;
        font-size: 30px;
        line-height: 70px;
    }
}
    </style>
</head>
<body>

    <script>
        function verifypass(){
              var name= document.getElementsById("name").value;
              var ph= document.getElementsById("phone-number").value;
              var email= document.getElementsById("email").value;
              var pass= document.getElementsById("password").value;
              var pass1= document.getElementsById("cpassword").value;
              
            if(name=="")
            {
                alert("enter naem");
        }
        
            if(ph==""){
              document.getElementById("pmessage").innerHTML="enter phone number";
            }

            if(email==""){
              document.getElementById("emessage").innerHTML="enter email";
            }

            if(pass==""){
              document.getElementById("passmessage").innerHTML="enter password";
            }

            if(pass1==""){
              document.getElementById("pass1message").innerHTML="enter password";
            }

            if(pass!=pass1){
                
                document.getElementById("passmessage").innerHTML="password are not same";
            }

            if(pass.length<8)
            {
                document.getElementById("passmessage").innerHTML="password must contain  atleast 8 characters";
                
            }
            if(pass.length>15)
            {
                document.getElementById("passmessage").innerHTML="password length must not exceed 15 characters";
            }
            if(!isNaN(name))
            {
                document.getElementById("message").innerHTML="only characters allowed";

            }

        }
    </script>
    <div class="registration-form" >
        <form action="" method="post">
            <div class="form-icon">
                <span><i class="icon icon-user"></i></span>
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" name="name" placeholder="Full Name">
                <span id="message" style="color: red;"></span>
            </div>
            <div class="form-group">
                <input type="email" class="form-control item" name="email" placeholder="Email">
                <span id="emessage" style="color: red;"></span>
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" name="phone-number" placeholder="Phone Number">
                <span id="pmessage" style="color: red;"></span>
            </div>
            <div class="form-group">
                <input type="password" class="form-control item" name="password" placeholder="password">
                <span id="passmessage" style="color: red;"></span>
            </div>
            <div class="form-group">
                <input type="password" class="form-control item" name="cpassword" placeholder="Confirm Password">
                <span id="pass1message" style="color: red;"></span>
            </div>
            <!-- <div class="form-group">
                <input `type="text" class="form-control item" id="birth-date" placeholder="Birth Date">
            </div> -->
            
            <div class="form-group">
                <button type="submit" class="btn btn-block create-account" name="bt" onclick="verifypass()">Create Account</button>  
            </div>
            <!-- <input type="submit" value="" onclick="verifypass()"> -->
        </form>
        <div class="social-media">
            <!-- <h5>Sign up with social media</h5>
            <div class="social-icons">
                <a href="#"><i class="icon-social-facebook" title="Facebook"></i></a>
                <a href="#"><i class="icon-social-google" title="Google"></i></a>
                <a href="#"><i class="icon-social-twitter" title="Twitter"></i></a>
            </div> -->
        </div>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="assets/js/script.js"></script>
</body>
</html>


<%
String bt=request.getParameter("bt");


     if(bt!=null)
        {
            try{
           
                
                
              String em=request.getParameter("email");
            String phone=request.getParameter("phone-number");
            String pass=request.getParameter("password");
            String name=request.getParameter("name");
       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/admission", "root","");
          
        Statement smt=con.createStatement();
        ResultSet rs=smt.executeQuery("select max(id) from registration");
        int id=0;
        while(rs.next())
        {
             id=rs.getInt(1);
            id=id+1;
        }
        PreparedStatement psmt=con.prepareStatement("insert into registration values(?,?,?,?,?)");   
        psmt.setInt(1,id);
        psmt.setString(2,name);
        psmt.setString(3,em);
        psmt.setString(4,phone);
        psmt.setString(5,pass);
      int n=  psmt.executeUpdate();
            if(n!=0)
            {
                // out.println("record inserted");
            }
            
         
    
     
    }

    catch(Exception e )
    {
        out.println(e);
    }
        }    

%>