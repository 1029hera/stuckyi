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
         .container #title {
            text-align: center;
            padding: 10px;
         }
         
         .container #map {
            margin: 0 auto;
            width: 90%;
            height: 500px;
         }
         
         .container #buttons {
            padding: 10px 60px;
         }
         
         .container #hosname:hover {
            color: blue;
         }
         
         #hosname {
            float: right;
            padding: 0 0 5px 0;
            height: 38px;
         }
         
         #btn_search {
           margin: 0 50px;
         }
         
         #hosXML {
            width: 100%;
         }
         
         #load {
            width: 100%;
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

            <h2 id="title">????????? ??????</h2>
            <script
               src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

      

<div id="map" style="width:50%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c391516a386c40148a51ae48a3479f77&libraries=services"></script>
<div id="buttons">
    <input class="form-label" type="text" id="tourname" style="margin:0px 0px 0px 275px;"
                 placeholder="???) ??????????????????..">
    <button class="btn btn-outline-info" type="button" id="btn_search">????????????
                 ??????</button>
       <br><br>
    <button class="btn btn-outline-info" type="button" id="btn_load" style="margin:0px 0px 0px 275px;">???????????????
                     ????????????</button>
    <button class="btn btn-outline-info" type="button" id="btn_remove" style="margin: 0 50px;">?????????</button>
    <table class="table" id="tourXML"></table>
               
   <!-- ????????? ?????? -->
   <button class="btn btn-primary" type="button" id="load">?????????</button>
</div>
<script>
   var tourlist = [];
   var trID = [];
   
   // ????????? ???????????? ???????????? ????????? ??????????????? ?????????
   var infowindow = new kakao.maps.InfoWindow({zIndex:1});
   
   var mapContainer = document.getElementById('map'), // ????????? ????????? div 
       mapOption = {
           center: new kakao.maps.LatLng(37.566826, 126.9786567), // ????????? ????????????
           level: 6 // ????????? ?????? ??????
       };  
   
   // ????????? ???????????????    
   var map = new kakao.maps.Map(mapContainer, mapOption); 
   var api_key = "52665a66483130323733486a667346";
   
   $(document).ready(function() {
       $("#load").hide();
       $("#btn_search").click(function() {
          $("tr").hide();
          for (var i = 0; i < tourlist.length; i++) {
             if (tourlist[i].indexOf($("#tourname").val()) != -1) {
                $("#a" + trID[i]).show();
                $("#thead").show();
             }
          }
          mapSearch();
       });
   
       $("#btn_load").click(function() {
          // XML
          var url = "http://openapi.seoul.go.kr:8088/" + api_key + "/xml/touristSpotInfo/1/100/";
   
          $("#load").show();
          $.ajax({
             url : url,
             type : "GET",
             cache : false,
             success : function(data, status) {
                if (status == "success") parseXML(data);
             }
          });
       });
   
       $("#btn_remove").click(function() {
          $("#tourXML").html("");
       });
    });
   
    function parseXML(xmlDOM) {
       var cnt = 0;
       var table = "<tr id='thead'><th style='width:30%;'>????????????</th><th style='width:60%;'>??????</th><th style='width:10%;'>????????????</th></tr>";
       $(xmlDOM).find("row").each(function() {
          table += "<tr style='display: none; cursor: pointer;' id='a"+ cnt + "'>";
          table += "<td><div id='tourname' onclick=\"location.href='tourinfo?SEQ=" + encodeURIComponent($(this).find("SEQ").text()) + "'\">" + $(this).find('SISULNAME').text() + "</div></td>";
          table += "<td>" + $(this).find("GU").text() + " " +  $(this).find("ADDR").text() + "</td>";
          table += "<td>" + $(this).find("TEL").text() + "</td>";
          table += "</tr>";
          tourlist.push($(this).find("SISULNAME").text());
          trID.push(cnt);
          cnt++;
          
       });
       $("#tourXML").html(table);
       $("tr:hidden").slice(0, 10).show();
    }
   

    //????????? ??????
    $(function() {
       $("#load").click(function(e) {
          e.preventDefault();
          $("tr:hidden").slice(0, 10).show();
          if ($("tr:hidden").length == 0) {
             alert("?????????????????????????????????.");
          }
       });
    });
    
    function mapSearch(){
       var ps = new kakao.maps.services.Places(); 

        var keyword_place = document.getElementsByTagName('input')[0].value;

         // ???????????? ????????? ???????????????
         ps.keywordSearch(keyword_place, placesSearchCB); 
    }
    
     // ????????? ?????? ?????? ??? ???????????? ???????????? ?????????
     function placesSearchCB (data, status, pagination) {
        if (status === kakao.maps.services.Status.OK) {

           // ????????? ?????? ????????? ???????????? ?????? ????????? ?????????????????????
           // LatLngBounds ????????? ????????? ???????????????
           var bounds = new kakao.maps.LatLngBounds();

           for (var i=0; i<data.length; i++) {
              displayMarker(data[i]);    
              bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
           }       

           // ????????? ?????? ????????? ???????????? ?????? ????????? ??????????????????
           map.setBounds(bounds);
        } 
     }
     
  // ????????? ????????? ???????????? ???????????????
     function displayMarker(place) {
         
         // ????????? ???????????? ????????? ???????????????
         var marker = new kakao.maps.Marker({
             map: map,
             position: new kakao.maps.LatLng(place.y, place.x) 
         });

         // ????????? ?????????????????? ???????????????
         kakao.maps.event.addListener(marker, 'click', function() {
             // ????????? ???????????? ???????????? ?????????????????? ???????????????
             infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
             infowindow.open(map, marker);
         });
     }
   </script>
   </div>
      
<script>
   function delSession(){
      session.invalidate();
      response.sendRedirect("http://localhost:8033/stuckyi/main/home");
      
   }
</script>
</section>

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
  <script src="<%= request.getContextPath() %>/resources/assets/js/homeBoard.js"></script>

</body>

</html>