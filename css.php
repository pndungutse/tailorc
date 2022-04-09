<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		*{
			margin: 0;
			padding: 0;
		}
		body{
			background-image: url(c1.jpg);
			background-position: center;
			background-size: cover;
			font-family: sans-serif;
			margin-top: 40px;
		}

		.regform{
			width: 800px;
			background-color: rgb(0,0,0,0.6);
			margin: auto;
			color: #FFFFFF;
			padding: 10PX 0PX 10PX 0PX;
			text-align: center;
			border-radius: 15px 15px 0px 0px;
		}

		.main{
			background-color: rgb(0,0,0,0.5);
			width: 800px;
			margin:auto;
		}

		form{
			padding: 10px;
		}

		#name{
			width: 100%;
			height: 100px;
		}

		.name{
			margin-left: 25px;
			margin-top: 30px;
			width: 125px;
			color: white;
			font-size: 18px;
			font-weight: 700;
		}

		.firstname{
			position: relative;
			left: 200px;
			top: -37px;
			line-height: 40px;
			border-radius: 6px;
			padding: 0  22px;
			font-size: 16px;
		}

		.lastname{
			position: relative;
			left: 417px;
			top: -80px;
			line-height: 40px;
			border-radius: 6px;
			padding: 0  22px;
			font-size: 16px;
			color: #555;
		}

		.firstlabel{
			position: relative;
			color: #E5E5E5;
			text-transform: capitalize;
			font-size: 14px;
			left: 203px;
			top: -45px;
		}

		.lastlabel{
			position: relative;
			color: #E5E5E5;
			text-transform: capitalize;
			font-size: 14px;
			left: 175px;
			top: -50px;
		}

		.username{
			position: relative;
			left: 200px;
			top: -37px;
			line-height: 40px;
			width: 480px;
			border-radius: 6px;
			padding: 0  22px;
			font-size: 16px;
			color: #555;
		}


		.form-control{
			position: relative;
			left: 200px;
			top: -37px;
			line-height: 40px;
			width: 480px;
			border-radius: 6px;
			padding: 0  22px;
			font-size: 16px;
			color: #555;

		}


		.code{
			position: relative;
			left: 200px;
			top: -37px;
			line-height: 40px;
			width: 95px;
			border-radius: 6px;
			padding: 0  22px;
			font-size: 16px;
			color: #555;
		}

		.number{
			position: relative;
			left: 200px;
			top: -37px;
			line-height: 40px;
			width: 255px;
			border-radius: 6px;
			padding: 0  22px;
			font-size: 16px;
			color: #555;
		}

		#student{
			margin-left: 25px;
			color: white;
			font-size: 18px;
		}

		.radio-inline{
			display: inline-block;
			padding-right: 70px;
			font-size: 20px;
			margin-left: 25px;
			margin-top: 15px;
			color: white;
		}

		.radio-inline{
			width: 20px;
			height: 20px;
			border-radius: 50%;
			cursor: pointer;
			outline: none;
		}

		button{
			background-color: #3BAF9F;
			display: block;
			margin: 20px 0px 0px 20px;
			text-align: center;
			border-radius: 12px;
			border: 2px solid #366473;
			padding: 14px 110px;
			outline: none;
			color: white;
			cursor: pointer;
			transition: 0.25px;
		}

		button:hover{
			background-color: #5390F5;
		}

		.check-box{
			margin-left: 25px;
			color: white;
			font-size: 18px;
		}

	</style>


</head>
<body>
	<div class="regform"><h1>IYANDIKISHE</h1></div>
	<div class="main">
		<form action="connect.php" method="post">
			<div id="name">
				
				<h2 class="name">Amazina yawe</h2>
				<input class="firstname" type="rext" name="first_name" required><br>
				<label class="firstlabel">izina ryambere</label>
				<input class="lastname" type="text" name="last_name" required>
				<label class="lastlabel">izina ryakabiri</label>
			</div>
			

			<h2 class="name">Izina uzajya ukoresha</h2>
			<input class="username" type="text" name="username" required>

			<h2 class="name">Umubare w'ibanga</h2>
			<input class="form-control" type="password" name="password" required>

			<h2 class="name">Telefone</h2>
			<input class="number" type="text" name="phone" required>
			
			<div>
			<h2 class="student">Igitsina</h2>
			<label class="radio-inline" for="Male">
				<input type="radio" name="gender" value="M" id="Male">Gabo</label>

			<label class="radio-inline" for="Female">
				<input type="radio" name="gender" value="F" id="Female" required>Gore</label>
				</div>

				<input type="checkbox" class="check-box" name="checkbox" required><span>I agree to the terms and condition</span>

				<a href="index.php">

			<button type="submit" class="btn btn-primary" name="submit">Register</button>

			</a>


		</form>
	</div>

</body>
</html>