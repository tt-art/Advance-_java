<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Online Exam</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->

  <link href="assets1/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i,900"
    rel="stylesheet">

  <!-- Vendor CSS Files -->

  <link href="assets1/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets1/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets1/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets1/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../assets/vendor/nucleo/css/nucleo.css" type="text/css">
  <link rel="stylesheet" href="../assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
  <link href="./assets1/vendor/bootstrap/custom.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- Template Main CSS File -->
  <link href="assets1/css/style.css" rel="stylesheet">
  <link href="assets1/css/style2.css" rel="stylesheet">
  <link href="assets1/css/style3.css" rel="stylesheet">
  <link href="assets1/css/style4.css" rel="stylesheet">
</head>

<body>
  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo me-auto">
        <h1><a href="index1.html">Online Exam</a></h1>

      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="Home.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="./pages/about.html">About</a></li>
          <li><a class="nav-link scrollto" href="./pages/login.jsp">Login</a></li>
          <li><a class="nav-link scrollto" href="./pages/regitration.jsp">Sign in</a></li>


        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header>



  <!-- Hero Seaction -->
  <div class="container">
    <div class="row">
      <div class="col-lg-5 col-md-5 col-xs-12 col-sm-12">
        <div class="container h-100">
          <div class="d-flex justify-content-center h-100">
            <div class="user_card">
              <div class="d-flex justify-content-center">
                <div class="brand_logo_container">
                  <img src="./assets1/img/user.png" class="brand_logo" alt="Logo">
                </div>
              </div>
              <div class="d-flex justify-content-center form_container">
                <form>

                  <div class="input-group mb-4">
                    <input type="text" name="email" class="form-control input_user" value="" placeholder="email">
                  </div>

                  <div class="input-group mb-4">
                    <input type="password" name="pass" class="form-control input_pass" value="" placeholder="password">
                  </div>

                  <div class="form-group">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="customControlInline">
                      <label class="custom-control-label" for="customControlInline">Remember me</label>
                    </div>
                  </div>
                  <div class="d-flex justify-content-center mt-3 login_container">
                    <!-- <a href="" style="width: 80px;"><button type="button"
                        name="button" class="btn login_btn">Login</button></a> -->
                        <input type="submit" name="email" value="Sign in" class="btn login_btn">
                  </div>
                </form>
              </div>

              <div class="mt-4">
                <div class="d-flex justify-content-center links">
                  Don't have an account? <a href="../Exam Poratl1/examples1/register.html" class="ml-0"
                    style="padding-left: 20px; color:brown;">Sign Up</a>
                </div>
                <div class="d-flex justify-content-center links">
                  <a href="#" style="color: brown;">Forgot your password?</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-7 col-md-7 col-xs-12 col-sm-12">
        <img src="assets1/img/4119036.jpg" width="100%" height="100%">
      </div>
    </div>
  </div>
  <!-- End Hero -->



  <!-- Exam Seaction -->

  <%
  String email=request.getParameter("email");
  if(email!=null)
     {
  try
  {  
  String pass=request.getParameter("pass");     
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_exam", "root","");
  
  Statement st= con.createStatement();
  ResultSet rs=st.executeQuery("select * from  ragistration  where email='"+email+"' and pass='"+pass+"'");
  
  rs.next();
  if(rs.getString("pass").equals(pass)&&rs.getString("email").equals(email))
  {
  out.println("<center><h3>Login Succesful</h3></center>");
  response.sendRedirect("Subject.jsp");  
  }
  else
  {
  out.println("<center><h3>Invalid email and password</h3></center>");
  }
  }
  catch (Exception e)
   {
     out.println(""+e);
  }
     }
  %>

  

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Online Exam</span></strong>. All Rights Reserved
      </div>
      
    </div>
  </footer>
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
      class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets1/vendor/aos/aos.js"></script>
  <script src="assets1/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets1/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets1/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets1/vendor/php-email-form/validate.js"></script>
  <script src="assets1/vendor/purecounter/purecounter.js"></script>
  <script src="assets1/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets1/js/main.js"></script>

</body>

</html>