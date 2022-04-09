<?php
include('config/dbconn.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="./assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Uno Fashion Ltd</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />

    <!--     inserted     -->
    <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
    <link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet"/>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet"/>
    
    <link href="assets/style.css" rel="stylesheet"/>
    <!--     inserted     -->

</head>

<body class="index-page sidebar-collapse">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-primary fixed-top navbar-transparent " color-on-scroll="400">
        <div class="container">
            <div class="navbar-translate">
                <a href="index.php" class="navbar-brand" rel="tooltip" title="Designed and Coded by Serve(8) Web Solutions, Inc." data-placement="bottom" target="">
                   UnoFashion.com
                </a>
                <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar bar1"></span>
                    <span class="navbar-toggler-bar bar2"></span>
                    <span class="navbar-toggler-bar bar3"></span>
                    <span class="navbar-toggler-bar bar4"></span>
                </button>
            </div>
			
                       
                        
            
			 
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="pages/user_login_page.php" class="nav-link" href="javascript:void(0)" onclick="scrollToDownload()">
                            <i class="now-ui-icons users_single-02"></i>
                            <p>Login</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="pages/user_signup.php" class="nav-link" onclick="scrollToDownload()">
                            <i class="now-ui-icons education_paper"></i>
                            <p>Sign up</p>
                        </a>
                    </li>


                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Follow us on Twitter" data-placement="bottom" href="https://twitter.com" target="_blank">
                            <i class="fa fa-twitter"></i>
                            <p class="d-lg-none d-xl-none">Twitter</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Like us on Facebook" data-placement="bottom" href="https://www.facebook.com" target="_blank">
                            <i class="fa fa-facebook-square"></i>
                            <p class="d-lg-none d-xl-none">Facebook</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Follow us on Instagram" data-placement="bottom" href="https://www.instagram.com" target="_blank">
                            <i class="fa fa-instagram"></i>
                            <p class="d-lg-none d-xl-none">Instagram</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->
    	<style type="text/css">
		body{
			padding: 0;
			margin: 0;
			background-color: rgb(0,0,0,0.6);
		}
		header{
			background: black;
			color: white;
		}
		.website-header{
			padding: 10px;
			height: 40px;
			display: flex;
			flex-wrap: wrap;
		}
		.website-header img{
			width: 200px;
			height: 100px;
			margin: 0 30px;
		}
		
	
		 .menu-bar{
      flex: 1;
      text-align: right;
      background:  black;
      padding: 15px;

    }

    .menu-bar ul li{
      list-style: none;
      display: inline-block;
      padding: 8px 12px;
      position: relative;
    }
     .menu-bar li a{
      color: #fff;
      text-decoration: none;
      font-size: 18px;
     }
      .menu-bar li::after{
        content: '';
        width: 0%;
        height: 2px;
        background:  #e08b6c;
        display: block;
        margin: auto;
        transition: 0.5s;
      }
       .menu-bar li:hover::after{
        width: 100%;
    }
    .dropdown_menu{
      display: none;
    }
    .menu-bar ul li:hover .dropdown_menu{
      display: block;
      position: absolute;
      left: 0;
      top: 100%;
      background-color: black;
    }
    .dropdown_menu ul{
      display: block;
      margin: 10px;

    }
    .dropdown_menu ul li{
      width: 150px;
      padding: 10px;
    }
		.breaking-news-section{
			padding: 0 30px 0 60px;
			display: flex;
		}
		#btext{
			width: 200px;
			font-size: 16px;
			text-transform: uppercase;
			color: brown;
			margin: auto 0;
		}
		.breaking-news{
			padding: 30px;
			color: #fff;
			font-weight: 800;
			display: inline-block;
		}
		.bntime{
			display: inline-block;
			color: rgb(255, 255, 255, 0.5);
		}

		 .text-box{
        width: 90%;
        color: black;
        position: absolute;
        top: 30%;
        left: 50%;
        transform: translate(-50%,-50%);
        text-align: center;

       }
       .text-box h1{
        font-size: 62px;
       }
       .text-box p{
        margin: 10px 0 40px;
        font-size: 30px;
        color: black;
       }
       
       .box{
        position: relative;
        top: 300px;
        left: 40%;
        width: 200px;
        height: 300px;
        transform-style: preserve-3d;
        animation: animate 20s linear infinite;
       }

       @keyframes animate{
        0%
        {
          transform: perspective(1000px) rotateY(0deg);
        }
         100%
        {
          transform: perspective(1000px) rotateY(340deg);
        }
       }

       .box span{
        position: absolute;
        top: 0;
        left: 0%;
        width: 100%;
        height: 80%;
        transform-origin: center;
        transform-style: preserve-3d;
        transform: rotateY(calc(var(--i) * 45deg)) translateZ(400px);
        -webkit-box-reflect: below 0px linear-gradient(transparent,transparent,#0004);
       }

       .box span img{
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 80%;

       }

	</style>

 
<div class="box">
  <span style="--i:1;"><img src="image4.jpg"> </span>
   <span style="--i:2;"><img src="images3.jpg"> </span>
    <span style="--i:3;"><img src="image5.jpg"> </span>
     <span style="--i:4;"><img src="image6.jpg"> </span>
      <span style="--i:5;"><img src="image7.jpg"> </span>
       <span style="--i:6;"><img src="image9.jpg"> </span>
        <span style="--i:7;"><img src="image5.jpg"> </span>
         <span style="--i:8;"><img src="images3.jpg"> </span>
  
</div>
</div>
</div>

        </footer>
    </div>
</body>

        
<!--   Core JS Files   -->
<script src="./assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="./assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="./assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="./assets/js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="./assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="./assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="./assets/js/now-ui-kit.js?v=1.1.0" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        // the body of this function is in assets/js/now-ui-kit.js
        nowuiKit.initSliders();
    });

    function scrollToDownload() {

        if ($('.section-download').length != 0) {
            $("html, body").animate({
                scrollTop: $('.section-download').offset().top
            }, 1000);
        }
    }
</script>



   <!---  inserted  -->
    <script src="./plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="./plugins/datatables/dataTables.bootstrap.min.js"></script>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/google-code-prettify/prettify.js"></script>
    <script src="assets/js/application.js"></script>
    <script src="assets/js/bootstrap-transition.js"></script>
    <script src="assets/js/bootstrap-modal.js"></script>
    <script src="assets/js/bootstrap-scrollspy.js"></script>
    <script src="assets/js/bootstrap-alert.js"></script>
    <script src="assets/js/bootstrap-dropdown.js"></script>
    <script src="assets/js/bootstrap-tab.js"></script>
    <script src="assets/js/bootstrap-tooltip.js"></script>
    <script src="assets/js/bootstrap-popover.js"></script>
    <script src="assets/js/bootstrap-button.js"></script>
    <script src="assets/js/bootstrap-collapse.js"></script>
    <script src="assets/js/bootstrap-carousel.js"></script>
    <script src="assets/js/bootstrap-typeahead.js"></script>
    <script src="assets/js/bootstrap-affix.js"></script>
    <script src="assets/js/jquery.lightbox-0.5.js"></script>
    <script src="assets/js/bootsshoptgl.js"></script>
     <script type="text/javascript">
    $(function() {
        $('#gallery a').lightBox();
    });
    </script>

    <!-- SlimScroll -->
    <script src="./plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="./plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="./plugins/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="./plugins/demo.js"></script>
    <script src="./plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="./plugins/datatables/dataTables.bootstrap.min.js"></script>
    <script>
      $(function () {
        $("#example1").DataTable({
        });
      });
    </script>
     <!--  inserted  -->

</html>