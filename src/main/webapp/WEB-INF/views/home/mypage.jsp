<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="descriptison">
<meta content="" name="keywords">
<!-- Favicons -->
<link href="<%=request.getContextPath()%>/resources/assets/img/favicon.png" rel="icon">
<link href="<%=request.getContextPath()%>/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="<%=request.getContextPath()%>/resources/assets/img/favicon.png" rel="icon">
<link href="<%=request.getContextPath()%>/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/assets/vendor/venobox/venobox.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/assets/vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="<%=request.getContextPath()%>/resources/assets/css/style.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/assets/css/board.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/bb29575d31.js"></script>
<title>??????????????????????????????</title>
</head>
<style>
.table {
   text-align: center;
}

div#updatebutton{
   text-align: center;
}

div#updatetitle{
   text-align: center;
   text-weight: bold;
}
</style>
<body>
   <!-- ======= Header ======= -->
   <header id="header">
      <div class="container">

         <div class="logo float-left">
            <h1 class="text-light">
               <a href="http://localhost:8033/stuckyi/main/home"><span>STUCKYI</span></a>
            </h1>
         </div>

          <nav class="nav-menu float-right d-none d-lg-block">
            <ul>
               <li><a href="#quick">??????????????????</a></li>
               <li><a href="http://localhost:8033/stuckyi/main/welfareMain">????????????</a></li>
               <li class="drop-down"><a href="http://localhost:8033/stuckyi/trans/transmain">????????????</a>
                  <ul>
                     <li><a href="http://localhost:8033/stuckyi/trans/submain">?????????</a></li>
                     <li class="drop-down"><a href="http://localhost:8033/stuckyi/trans/taxireserve">?????????</a>
                        <ul>
                           <li><a href="http://localhost:8033/stuckyi/trans/transmain">????????? ??????</a></li>
                           <li><a href="http://localhost:8033/stuckyi/trans/taxireserve">????????? ??????</a></li>
                        </ul></li>
                  </ul></li>
               <li><a href="http://localhost:8033/stuckyi/tour/tourmain">????????????</a></li>
               <li class="drop-down"><a href="http://localhost:8033/stuckyi/clinic/clinicmain">????????????</a>
                  <ul>
                     <li><a href="http://localhost:8033/stuckyi/clinic/clinicmain">?????? ???????????? ??????</a></li>
                     <li><a href="http://localhost:8033/stuckyi/clinic/clinicreserve">?????? ????????????</a></li>
                  </ul></li>
               <li>
                     <sec:authorize access="isAuthenticated()">
                                <div class="login-register-cart-button d-flex align-items-center">
                                    <div class="login-register-btn mr-50">
                                       <sec:authentication property="principal.username" var="user_id" />
                                       <a href="http://localhost:8033/stuckyi/main/mypage">${user_id } ???</a>
                              
                                    </div>
                                </div>
                                </sec:authorize>
                                           
                </li>
               <li class="logoutBtn">
                     <sec:authorize access="isAuthenticated()">
                                <div class="login-register-cart-button d-flex align-items-center">
                                    <div class="login-register-btn mr-50">
                                       <sec:authentication property="principal.username" var="user_id" />
                                       
                              <form action="${pageContext.request.contextPath }/main/logout" method='post'>
                                 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
                                 <button id="zzzz" class="btn btn-outline-info" type="submit" >????????????</button>
                                    </form>
                                    </div>
                                </div>
                                </sec:authorize>
                        
                                           
                        <sec:authorize access="isAnonymous()">
                            <!-- Login/Register & Cart Button -->
                            <div class="login-register-cart-button d-flex align-items-center">
                                <!-- Login/Register -->
                                <div class="login-register-btn mr-50">
                                    <a href="<%=request.getContextPath() %>/main/login" id="loginBtn" class="btn btn-outline-info custom" type="button">?????????</a>
                                </div>
                            </div>
                        </sec:authorize>
                </li>
                
               
            </ul>
         </nav>
         <!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

   <main id="main">
      
      <!-- ======= About Us Section ======= -->
      <section id="about" class="about">
         <div class="container">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
function hosChkDelete(hosUid){
   var r = confirm("?????? ????????? ?????????????????????????");
   
   if(r){
      location.href = 'mypageDeleteHos?hosUid=' + hosUid;
   }
}

function transChkDelete(transUid){
   var r = confirm("????????? ????????? ?????????????????????????");
   
   if(r){
      location.href = 'mypageDeleteTrans?transUid=' + transUid;
   }
}
</script>



<div id="memberInfo">
 
   <td><sec:authorize access="isAuthenticated()">
        <sec:authentication property="principal.username" var="user_id" />
        <script> var user_id = '${user_id}' </script>
    </sec:authorize></td>

    <div id="updatetitle"><br><h1>${user_id }?????? ????????????</h1><br></div>
   <form name="frm" action="mypageUpdate" method="post" onsubmit="return check();">
    <table class="table" id="memberInfo">
        <tr>
            <th>????????????</th>
            <th>???????????? ??????</th>
        </tr>
        <tr>
            <td><input type="password" class='btn btn-outline-info' style="font-family:sans-serif" placeholder="??????????????? ???????????????" name="pw" value="${j.pw }" required></td>
            <td><input type="password" class='btn btn-outline-info' style="font-family:sans-serif" placeholder="??????????????? ???????????????" name="pw2" required></td>
        </tr>
        <tr>
            <th>?????????</th>
            <th>????????????</th>
        </tr>
        <tr>
            <td><input type="text" class='btn btn-outline-info' placeholder="???????????? ???????????????" name="email" value="${j.email }" required></td>
            <td><input type="text" class='btn btn-outline-info' placeholder="??????????????? ???????????????" name="ph" value="${j.ph }"></td>
        </tr>
    </table>
    <input type="hidden" name="id" value="${user_id }">
    <input type="hidden" name="gender" value="${gender }">
    <input type="hidden" name="name" value="${name }">
    
    <div id="updatebutton">
    <input class="btn btn-outline-info" type="submit" value="???????????? ??????"/></div>
    <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
    </form>
    <br><br><br>
    <script>
    function check(){
      if(document.fr.pw.value != document.fr.pw2.value){
         alert("Password??? ?????? ????????????.")
         return false;
      }
   }
   </script>

   <div id="updatetitle"><h1>????????? ?????? ??????</h1><br></div>
    <table class="table" id="transJSON"></table>
    <script>
      var START_INDEX = 1;
      var END_INDEX = 10;
        var request_url_trans = "http://localhost:8033/stuckyi/trans/" + START_INDEX + "/" + END_INDEX;
   
      $(function(){
           
            $.ajax({
            url: request_url_trans,
            type: "GET",
               //data: $("[name='tfrm']").serialize(),
            cache: false,
            success: function(data, status){
               if(status == "success") parseTJSON(data);
            }
          })
          
        });
        function parseTJSON(jsonObj){
            var row = jsonObj.list;
            var i;
            
            var table="<tr><th>????????????</th><th>????????????</th><th>????????????</th><th>??????(??????)</th></tr>";
            for (i = 0; i < row.length; i++) {
               if(row[i].userId.trim() == user_id.trim()) {
                   table += "<tr>";
                   table += "<td>" + row[i].transName + "</td>";
                   table += "<td>" + row[i].transAddr + "</td>";
                   table += "<td>" + row[i].transDate + "</td>";
                   table += "<td><button class='btn btn-outline-info' type='button' onclick='transChkDelete(" + row[i].transUid + ")'>??????</button></td>";
                   table += "</tr>";
               }
            }
            $("#transJSON").html(table);
        }
        </script> 
    
    <form name="hfrm">
      <input type="hidden" name="h_res_uid" value="hosUid"><br>
   </form>
   <div id="updatetitle"><h1>?????? ?????? ??????</h1><br></div>
    <table class="table" id="hosJSON"></table>
    
    <script>
        var request_url = "http://localhost:8033/stuckyi/hos/" + START_INDEX + "/" + END_INDEX;

        $(function(){
           
            $.ajax({
            url: request_url,
            type: "GET",
               //data: $("[name='hfrm']").serialize(),
            cache: false,
            success: function(data, status){
               if(status == "success") parseJSON(data);
            }
          })
          
        });
        function parseJSON(jsonObj){
            var row = jsonObj.hoslist;
            var i;
            
            var table="<tr><th>????????????</th><th>?????? ?????????</th><th>????????????</th><th>?????? ??????</th></tr>";
            for (i = 0; i < row.length; i++) { 
                if(row[i].userId.trim() == user_id.trim()) {
                   table += "<tr>";
                    table += "<td>" + row[i].hosName + "</td>";
                    table += "<td>" + row[i].hosTitle + "</td>";
                    table += "<td>" + row[i].resDate + "</td>";
                    table += "<td><button class='btn btn-outline-info' type='button' onclick='hosChkDelete(" + row[i].hosUid + ")'>??????</button></td>";
                    table += "</tr>";
                }
            }
            $("#hosJSON").html(table);
        }
    </script>
</div>

         </div>
      </section>
      <!-- End About Us Section -->
    <!-- ======= Counts Section ======= -->
    <section id="quick" class="counts section-bg">
      <div class="container">

        <div class="row">

          <div class="col-lg-3 col-md-6 text-center" data-aos="fade-up">
            <div class="count-box">
            <a href="http://localhost:8033/stuckyi/board/list">
              <img src="https://img.icons8.com/dusk/64/000000/welfare.png"/>
              <p>???????????? ????????????</p>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 text-center" data-aos="fade-up" data-aos-delay="200">
            <div class="count-box">
             <a href="http://localhost:8033/stuckyi/trans/transmain">
              <img src="https://img.icons8.com/clouds/64/000000/subway.png"/>
              <p>?????? ????????????</p>
               </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 text-center" data-aos="fade-up" data-aos-delay="400">
            <div class="count-box">
             <a href="http://localhost:8033/stuckyi/tour/tourmain">
              <img src="https://img.icons8.com/color/64/000000/tour-guide.png"/>
              <p>????????? ????????????</p>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 text-center" data-aos="fade-up" data-aos-delay="600">
            <div class="count-box">
             <a href="http://localhost:8033/stuckyi/clinic/clinicmain">
              <img src="https://img.icons8.com/clouds/64/000000/ambulance.png"/>
              <p>?????? ????????????</p>
               </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Counts Section -->
<!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-5 col-md-6 footer-info">
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="http://localhost:8033/stuckyi/board/list">????????????</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="http://localhost:8033/stuckyi/main/welfareMain">????????????</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="http://localhost:8033/stuckyi/trans/transmain">????????????</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="http://localhost:8033/stuckyi/tour/tourmain">????????????</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="http://localhost:8033/stuckyi/clinic/clinicmain">????????????</a></li>
            </ul>
          </div>


          <div class="col-lg-5 col-md-6 footer-info">
            <h3>?????????????????????</h3>
            <p>
              ??????????????? ????????? ????????? 736-7 <br>
              ?????????????????? : 2020-????????????-0082???
              <strong>Phone:</strong> 02-111-2222<br>
              <strong>Email:</strong> abcd123@naver.com<br>
            </p>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>STUCKYI</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mamba-one-page-bootstrap-template-free/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="<%= request.getContextPath() %>/resources/assets/vendor/jquery/jquery.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/assets/vendor/php-email-form/validate.js"></script>
  <script src="<%= request.getContextPath() %>/resources/assets/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="<%= request.getContextPath() %>/resources/assets/vendor/venobox/venobox.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/assets/vendor/counterup/counterup.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="<%= request.getContextPath() %>/resources/assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="<%= request.getContextPath() %>/resources/assets/js/main.js"></script>

</body>

</html>