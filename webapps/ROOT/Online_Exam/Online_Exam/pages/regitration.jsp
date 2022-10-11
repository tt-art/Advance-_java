<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
  <meta name="author" content="Creative Tim">
  <title>Exam Portal</title>
  <!-- Favicon -->
  <link rel="icon" href="../assets/img/brand/favicon.png" type="image/png">
  <!-- Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
  <!-- Icons -->
  <link rel="stylesheet" href="../assets/vendor/nucleo/css/nucleo.css" type="text/css">
  <link rel="stylesheet" href="../assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
  <!-- Argon CSS -->
  <link rel="stylesheet" href="../assets/css/argon.css?v=1.2.0" type="text/css">
</head>

<body class="bg-default">
  <!-- Navbar -->
  <nav id="navbar-main" class="navbar navbar-horizontal navbar-transparent navbar-main navbar-expand-lg navbar-light">
    <div class="container">
      <a class="navbar-brand" href="dashboard.html">

      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse" aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="navbar-collapse navbar-custom-collapse collapse" id="navbar-collapse">
        <div class="navbar-collapse-header">
          <div class="row">
            <div class="col-6 collapse-brand">
              <a href="dashboard.html">
                <img src="../assets/img/brand/blue.png">
              </a>
            </div>
            <div class="col-6 collapse-close">
              <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse" aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
                <span></span>
                <span></span>
              </button>
            </div>
          </div>
        </div>
        <ul class="navbar-nav mr-auto">
          
          <li class="nav-item">
            <a href="../Home.jsp" class="nav-link">
              <span class="nav-link-inner--text">Home</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="login.jsp" class="nav-link">
              <span class="nav-link-inner--text">Login</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="regitration.jsp" class="nav-link">
              <span class="nav-link-inner--text">Register</span>
            </a>
          </li>
        </ul>
        <hr class="d-lg-none" />
        <ul class="navbar-nav align-items-lg-center ml-lg-auto">
          <li class="nav-item">
            <a class="nav-link nav-link-icon" href="https://www.facebook.com/creativetim" target="_blank" data-toggle="tooltip" data-original-title="Like us on Facebook">
              <i class="fab fa-facebook-square"></i>
              <span class="nav-link-inner--text d-lg-none">Facebook</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link nav-link-icon" href="https://www.instagram.com/creativetimofficial" target="_blank" data-toggle="tooltip" data-original-title="Follow us on Instagram">
              <i class="fab fa-instagram"></i>
              <span class="nav-link-inner--text d-lg-none">Instagram</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link nav-link-icon" href="https://twitter.com/creativetim" target="_blank" data-toggle="tooltip" data-original-title="Follow us on Twitter">
              <i class="fab fa-twitter-square"></i>
              <span class="nav-link-inner--text d-lg-none">Twitter</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link nav-link-icon" href="https://github.com/creativetimofficial" target="_blank" data-toggle="tooltip" data-original-title="Star us on Github">
              <i class="fab fa-github"></i>
              <span class="nav-link-inner--text d-lg-none">Github</span>
            </a>
          </li>
          
        </ul>
      </div>
    </div>
  </nav>
  <!-- Main content -->
<div class="container">
  <div class="col-lg-12 mt-8 order-xl-1">
    <div class="card">
      <div class="card-header">
        <div class="row align-items-center">
          <div class="col-8">
            <h3 class="mb-0">Registration</h3>
          </div>
        </div>
      </div>
      <div class="card-body">
        <form >
          <h6 class="heading-small text-muted mb-4">User information</h6>
          <div class="pl-lg-4">
            <div class="container">
              <p><input type="file"  accept="image/*" name="image" id="file"  onchange="loadFile(event)" style="display: none;"></p>
              <p><label for="file" style="cursor: pointer;">Upload Image</label></p>
              <p><img id="output" width="200" /></p>
              </div>
          
            <div class="row">
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="input-first-name">First name</label>
                  <input type="text" id="input-first-name" class="form-control" placeholder="First name" value="" name="fname">
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="input-last-name">Last name</label>
                  <input type="text" id="input-last-name" class="form-control" placeholder="Last name" value="" name="lname">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="input-first-name">Institute Name</label>
                  <input type="text" id="input-first-name" class="form-control" placeholder="Institute Name" value="" name="iname">
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="input-last-name">Class Year</label>
                  <input type="text" id="input-last-name" class="form-control" placeholder="Class Year" value="" name="cyear">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="input-first-name">Blood Group</label>
                  <input type="text" id="input-first-name" class="form-control" placeholder="Blood Group" value="" name="bgroup">
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="input-last-name">Phone No</label>
                  <input type="text" id="input-last-name" class="form-control" placeholder="Phone No" value="" name="pno">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                 <div class="form-group">
                   <label class="form-control-label" for="input-username">Parent No</label>
                   <input type="text" id="input-username" class="form-control" placeholder="parent No" value="" name="parno">
                 </div>
               </div> 
                <div class="col-lg-6">
                 <div class="form-group">
                   <label class="form-control-label" for="input-email">Email address</label>
                   <input type="email" id="input-email" class="form-control" placeholder="Email" name="email">
                 </div>
               </div> 
             </div>
             <div class="row">
              <div class="col-lg-6">
                 <div class="form-group">
                   <label class="form-control-label" for="input-username">Password</label>
                   <input type="password" id="input-username" class="form-control" placeholder="Password" value="" name="pass">
                 </div>
               </div> 
                <div class="col-lg-6">
                 <div class="form-group">
                   <label class="form-control-label" for="input-email">Comeform Password</label>
                   <input type="password" id="input-email" class="form-control" placeholder="Comeform Password" name="cpass">
                 </div>
               </div> 
             </div>
          </div>
          <hr class="my-4" />
          <!-- Address -->
          <h6 class="heading-small text-muted mb-4">Contact information</h6>
          <div class="pl-lg-4">
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label class="form-control-label" for="input-address">Address</label>
                  <input id="input-address" class="form-control" placeholder="Home Address" value="" type="text" name="addr">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label" for="input-city">City</label>
                  <input type="text" id="input-city" class="form-control" placeholder="City" value="" name="city">
                </div>
              </div>
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label" for="input-country">Country</label>
                  <input type="text" id="input-country" class="form-control" placeholder="Country" value="" name="counrty">
                </div>
              </div>
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label" for="input-country">Pin</label>
                  <input type="number" id="input-postal-code" class="form-control" placeholder="Pin" name="pin">
                </div>
              </div>
            </div>
          </div>
          <hr class="my-4" />
          <!-- Description -->
          <h6 class="heading-small text-muted mb-4">About me</h6>
          <div class="pl-lg-4">
            <div class="form-group">
              <label class="form-control-label">About Me</label>
              
              <textarea rows="4" class="form-control" placeholder="A few words about you ..." name="about"></textarea>
            </div>
          </div>
          <div class="col-12 text-right">
            <a href="login.jsp"><input type="submit" name="btn" value="Submit" class="btn btn-sm btn-primary"></a>
            <!-- <a href="login.html" class="btn btn-sm btn-primary">Submit</a> -->
          </div>
        </form>
      </div>
    </div>
  </div>
  <%
  String b = request.getParameter("btn");
   if(b!=null)
   {
try
{     
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_exam", "root","");
PreparedStatement psmt = con.prepareStatement("insert into  ragistration  values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
psmt.setString(1,request.getParameter("fname"));
psmt.setString(2, request.getParameter("lname")); 
psmt.setString(3, request.getParameter("iname"));
psmt.setString(4, request.getParameter("cyear"));
psmt.setString(5, request.getParameter("bgroup"));
psmt.setString(6, request.getParameter("pno"));
psmt.setString(7, request.getParameter("parno"));
psmt.setString(8, request.getParameter("email"));
psmt.setString(9, request.getParameter("addr"));
psmt.setString(10, request.getParameter("city"));
psmt.setString(11, request.getParameter("counrty"));
psmt.setString(12, request.getParameter("pin"));
psmt.setString(13, request.getParameter("about"));
psmt.setString(14, request.getParameter("pass"));
int cnt =psmt.executeUpdate();

 if(cnt!=0)
 {
     out.println("record inserted");
     response.sendRedirect("login.jsp");  
 }
 else
 {
     out.println("Not inserted");
 }
}
catch(Exception e)
{
    out.println(""+e);
}
}
  %>
  <script>
    var loadFile = function(event) {
    var image = document.getElementById('output');
    image.src = URL.createObjectURL(event.target.files[0]);
    };
  </script>

 
  <footer class="py-5" id="footer-main">
    <div class="container">
      <div class="row align-items-center justify-content-xl-between">
        <div class="col-xl-6">
          <div class="copyright text-center text-xl-left text-muted">
            &copy; 2021 <a href="#" class="font-weight-bold ml-1" target="_blank">Online Exam</a>
          </div>
        </div>
        <div class="col-xl-6">
          <ul class="nav nav-footer justify-content-center justify-content-xl-end">
            
            <li class="nav-item">
              <a href="#" class="nav-link" target="_blank">About Us</a>
            </li>

            
        </div>
      </div>
    </div>
  </footer>
  <!-- Argon Scripts -->
  <!-- Core -->
  <script src="../assets/vendor/jquery/dist/jquery.min.js"></script>
  <script src="../assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/vendor/js-cookie/js.cookie.js"></script>
  <script src="../assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
  <script src="../assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
  <!-- Argon JS -->
  <script src="../assets/js/argon.js?v=1.2.0"></script>
</body>

</html>