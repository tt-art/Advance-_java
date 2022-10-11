

<%@ page import = "java.sql.*" %><%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Registration</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

    <!-- ======= Top Bar ======= -->
    <div id="topbar" class="d-flex align-items-center fixed-top">
        <div class="container d-flex align-items-center justify-content-center justify-content-md-between">
            <div class="align-items-center d-none d-md-flex">
                <i class="bi bi-clock"></i> Monday - Saturday, 8AM to 10PM
            </div>
            <div class="d-flex align-items-center">
                <i class="bi bi-phone"></i> Call us now +91 83800 09947
            </div>
        </div>
    </div>

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
        <div class="container d-flex align-items-center">

            <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a> -->
            <!-- Uncomment below if you prefer to use an image logo -->
            <h1 class="logo me-auto"><a href="hos_index.jsp">Hospital</a></h1>

            <nav id="navbar" class="navbar order-last order-lg-0">
                <ul>
                    <li><a class="nav-link scrollto" href="hos_index.jsp">Home</a></li>
                    <li><a class="nav-link scrollto active" href="registration.jsp">Registration</a></li>
                    <li><a class="nav-link scrollto" href="login.jsp">login</a></li>
                    <li><a class="nav-link scrollto" href="#">About</a></li>
                    <li><a class="nav-link scrollto" href="contact.jsp">Contact</a></li>

                    <!-- <li><a class="nav-link scrollto" href="#departments">Departments</a></li> -->
                    <!-- <li><a class="nav-link scrollto" href="#doctors">Doctors</a></li> -->
                    <!-- <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 2</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
            </ul>
          </li> -->

                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

            <a href="appointment.jsp" class="appointment-btn scrollto"><span class="d-none d-md-inline">Make an</span>
                Appointment</a>

        </div>
    </header><!-- End Header -->

    <main id="main">

        <!-- ======= Breadcrumbs Section ======= -->
        <section class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>D Registration</h2>
                    <ol>
                        <li><a href="index.jsp">D Registration</a></li>
                        <li>Contact</li>
                    </ol>
                </div>

            </div>
        </section><!-- End Breadcrumbs Section -->

        <div class="form_wrapper">
            <div class="form_container">
                <div class="title_container">
                    <h2>Doctor Registration Form</h2>
                </div>
                <div class="row clearfix">
                    <div class="">
                        <form method="post">

                            <div class="input_field"> <span><i aria-hidden="true" class="fas fa-user-md"></i></span>
                                <input type="number" name="did" placeholder="D.Id" required />
                            </div>    
                            <div class="input_field"> <span><i aria-hidden="true" class="fas fa-user-md"></i></span>
                                <input type="text" name="Name" placeholder="D.Name" required />
                            </div>
                            <div class="input_field"> <span><i aria-hidden="true" class="fas fa-map-marker-alt"></i></span>
                                <input type="text" name="addr" placeholder="Address" required />
                            </div>
                            <div class="input_field"> <span><i aria-hidden="true" class="fas fa-phone-alt"></i></span>
                                <input type="number" name="mno" placeholder="Mobile No" required />
                            </div>
                            <div class="input_field"> <span><i aria-hidden="true" class="fas fa-calendar-alt"></i></span>
                                <input type="date" name="Bdate" placeholder="Birth Date (dd/mm/yyyy)" required />
                            </div>
                            <div class="input_field select_option">
                                <select name="d1">
                                    <option name=""> Degree</option>
                                    <option id="dg1" name="m1">mbbs</option>
                                    <option id="dg2" name="m2">md</option>
                                </select>
                                <div class="select_arrow"></div>
                            </div>
                            <div class="input_field select_option">
                                <select name="s1">
                                    <option id="" name= "" >Spaciality</option>
                                    <option id="sp1" name ="n1">neuro</option>
                                    <option id="sp2" name="o1">ortho</option>
                                </select>
                                <div class="select_arrow"></div>
                            </div>
                            
                            <div class="input_field radio_option">
                                <input type="radio" name="radiogroup1" id="rd1">
                                <label for="rd1">Male</label>
                                <input type="radio" name="radiogroup1" id="rd1">
                                <label for="rd2">Female</label>
                            </div>
                            <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
                                <input type="text" name="uname" placeholder="User Name" required />
                            </div>
                            <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
                                <input type="password" name="pass" placeholder="password" required />
                            </div>
                            <div class="row">
                                <div class="col-sm">
                                    <input class="button" type="submit" value="Save" name="btn1" />
                                </div>
                                <div class="col-sm">
                                    <input class="button" type="submit" value="Update" />
                                </div>
                                <div class="col-sm">
                                    <input class="button" type="submit" value="Delete" />
                                </div>
                              </div>
                            
                            
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
        

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">


                </div>
            </div>
        </div>

        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong><span>Hospital</span></strong>. All Rights Reserved
            </div>

        </div>
    </footer><!-- End Footer -->

    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/vendor/purecounter/purecounter.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

</body>

</html>








<%
 String a=request.getParameter("btn1");
 if(a!=null)
 {
    try
    { 


        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/hospital2", "root","");
        PreparedStatement psmt = con.prepareStatement("insert into doc_regis values(?,?,?,?,?,?,?,?,?,?)");
        
        Statement smt=con.createStatement();
        ResultSet rs=smt.executeQuery("select max(id) from doc_regis");
        int id=0;
        while(rs.next())
        {
             id=rs.getInt(1);
            id=id+1;
        }
        String name=request.getParameter("Name");
      String addr=request.getParameter("addr");
      String mno=request.getParameter("mno");
      String date= request.getParameter("Bdate");
      String dig =request.getParameter("d1");
      String spec=request.getParameter("s1");
      String gen= request.getParameter("radiogroup1");       
      String Username=request.getParameter("uname");
      String Password=request.getParameter("pass");
    
      

      psmt.setInt(1,id);
      psmt.setString(2,name);
      psmt.setString(3,addr);
      psmt.setString(4,mno);
      psmt.setString(5,date);
      psmt.setString(6,dig);
      psmt.setString(7,spec);
      psmt.setString(8,gen);
      psmt.setString(9,Username);
      psmt.setString(10,Password);

      int cnt = psmt.executeUpdate();
      
      if(cnt>0)
      {
          out.println("<script>alert('record inserted')</script>");
      }
      else
      {
          out.println("<script>alert('record not inserted')</script>");
      }
    }
    catch(Exception e)
    {
        out.println("erreor"+e);
    }
}   
    
 %>