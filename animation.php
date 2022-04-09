<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="">

<!--font awesome icon link-->
<script src="https://kit.fontawesome.com/9d8f9822ef.js" crossorigin="anonymous"></script>

	<title></title>
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
</head>
<body>
	<header>
		<div class="website-header">
			
		
			
			<nav class="navbar navbar-expand-md ">

		<div class="menu-bar">
        <ul>
          <li>
            <a href="">Product<i class="fas fa-caret-down"></i></a>
            <div class="dropdown_menu">
              <ul>

                <li><a href="masaka.php">Female</a> </li>
                <li><a href="">male</a> </li>


                
              </ul>
              
            </div>
          </li>
          
        </ul>
        
      </div>

      <div class="menu-bar">
        <ul>
          <li>
            <a href="gallery.php">gallery<i class=""></i></a>
            
          </li>
          
        </ul>
        
      </div>
  
  <!-- Navbar links -->
  
</nav>
</div>

<div class="breaking-news-section">
	<span id="btext">ADVERTISMENT</span>
	<marquee direction="left">
		<a href="" class="breaking-news">
			<p class="bntime">:UNO FASHION</p>
			Wehave defferent style and model clothes
			
		</a>

		
		
	</marquee>
	
</div>
		
	</header>
	
 <div class="text-box">
      <h1>Tailoring</h1>
      <P>System</P>
     
    </div>
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
</body>
</html>