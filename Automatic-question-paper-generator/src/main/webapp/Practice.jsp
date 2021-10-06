<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>easyPaper</title>

<!-- Font Awesome link -->
<script src="https://kit.fontawesome.com/7780cccd9d.js"
	></script>
<!-- Google Fonts Link -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
	rel="stylesheet" />
<link type="text/css" rel="stylesheet" href="style.css">

</head>
<body>
	<div class="navigation">
		<input type="checkbox" class="navigation__checkbox" id="navi-toggle" />

		<label for="navi-toggle" class="navigation__button"> <span
			class="navigation__icon">&nbsp;</span>
		</label>

		<div class="navigation__background">&nbsp;</div>

		<nav class="navigation__nav">
			<ul class="navigation__list">
				<li class="navigation__item"><a href="index.html"
					class="navigation__link">HOME</a></li>
				<li class="navigation__item"><a href="#"
					class="navigation__link">CONTACT US</a></li>
				<li class="navigation__item"><a href="#popup"
					class="navigation__link">SIGN IN</a></li>
				<li class="navigation__item"><a href="#popup1"
					class="navigation__link">SIGN UP</a></li>
			</ul>
		</nav>
	</div>
	<header class="header">
		<div class="logo-box">
			<img src="images/education-logo.png"
				class="logo object-scale-down h-20 w-20 ..." />
		</div>
		<div class="MotivationalTagContainer">
			<h3 class="MotivationalTag">&ldquo; Education is not the amount
				of information that is put into your brain and runs riot there,
				undigested, all your life... &rdquo;</h3>
		</div>
	</header>
	<main>
		<section class="teacher-about">
			<div class="text-center u-margin-bottom-large">
				<h4 class="teacher-about__heading-sub">Always Respect Our
					Teachers</h4>
			</div>
			<div class="row">
				<div class="col-1-of-2">
					<p class="teacher-about__sentence">&ldquo; One child, one
						teacher, one book, one pen can change the world! &rdquo;</p>
				</div>
				<div class="col-1-of-2">
					<div class="composition">
						<img src="images/abdul-kalam-image.jpg" alt="Photo 1"
							class="composition__photo composition__photo--p1" /><img
							src="images/albert-einstein-image.jpg" alt="Photo 2"
							class="composition__photo composition__photo--p2" /><img
							src="images/chanyak-image.jpg" alt="Photo 3"
							class="composition__photo composition__photo--p3" />
					</div>
				</div>
			</div>
		</section>
		<section class="features">
			<div class="row">
				<div class="col-1-of-3">
					<div class="feature-box">
						<i class="fas fa-server feature-box__icon"></i>
						<h5 class="heading-tertiary">Question Management System</h5>
						<p class="feature-box__text">Today people are accustomed to
							accessing meaningful information from a huge array of sources..
							The reality is that workplace learning happens continuously in
							lot of different ways ..</p>
					</div>
				</div>
				<div class="col-1-of-3">
					<div class="feature-box">
						<i class="fas fa-database feature-box__icon"></i>
						<h5 class="heading-tertiary">Subject Management System</h5>
						<p class="feature-box__text">The employee management system
							runs online, which allows you to access any information from
							anywhere in the world at any given time, as long a you have
							Internet access.</p>
					</div>
				</div>
				<div class="col-1-of-3">
					<div class="feature-box">
						<i class="fas fa-tasks feature-box__icon"></i>
						<h5 class="heading-tertiary">Course Management System</h5>
						<p class="feature-box__text">Many of our UW employees have
							multiple records in this database, either because they hold more
							than one job title or because their salary is paid out of
							multiple finding sources..</p>
					</div>
				</div>
			</div>
		</section>
	</main>
	<footer class="footer">
		<h5 class="contact-mail u-margin-bottom-small">
			surajsinghj654@gmail.com</h5>
		<h5 class="contact-mail u-margin-bottom-small">roysudeep1108@gmail.com</h5>
		<address class="contact-address u-margin-bottom-small">
			MANIT, Bhopal(Madhya Pradesh)</address>
		<p class="copyright u-margin-bottom-small">copyright@2021</p>  
	</footer>
	<div class="popup" id="popup">
		<div class="popup__content container">
			<a href="" class="popup__close">&times;</a>
			<div class="forms-container">
				<div class="signin-signup">
					<form action="teacherHomePage.jsp" id="signinForm" class="sign-in-form"
						method="post">
						<h2 class="title">Sign In</h2>
						<div class="input-field">
							<i class="fas fa-user"></i> <input type="text" id="email"
								name="email" placeholder="User email" required/>
						</div>
						<div class="input-field">
							<i class="fas fa-lock"></i> <input type="password" id="password"
								name="password" placeholder="Password" required/>
						</div>
						<br>${message} <br> <br> <input type="submit"
							value="Login" class="btn solid" />
					</form>
					<form action="" class="sign-up-form">
						<h2 class="title">Sign In</h2>
						<div class="input-field">
							<i class="fas fa-user"></i> <input type="text"
								placeholder="AdminID" />
						</div>
						<input type="submit" value="Login" class="btn solid" />
					</form>
				</div>
			</div>
			<div class="panels-container">
				<div class="panel left-panel">
					<div class="content">
						<h3>Admin?</h3>
						<p>CLick below to Login as Admin!</p>
						<button class="btn transparent" id="sign-up-btn">Sign In</button>
					</div>
					<img src="images/sign-up-image1.svg" alt="" class="image" />
				</div>
				<div class="panel right-panel">
					<div class="content">
						<h3>User?</h3>
						<p>Click below to Login as a User!</p>
						<button class="btn transparent" id="sign-in-btn">Sign In</button>
					</div>
					<img src="images/sign-in-image1.svg" alt="" class="image" />
				</div>
			</div>
		</div>
	</div>
	<div class="popup" id="popup1">
		<div class="popup__content popup1__content">
			<a href="" class="popup__close">&times;</a>
			<form class="sign1-up-form">
				<fieldset class="sign1-up-form__fieldset">
					<legend class="sign1-up-form__legend">SignUp-Form</legend>
					<div class="row-signup-form">
						<div class="signup-col-1-of-2">
							<label for="fname" class="signup-label">First name</label> <input
								type="text" id="fname" name="fname" class="signup-input" />
						</div>
						<div class="signup-col-1-of-2">
							<label for="lname" class="signup-label">Last name</label> <input
								type="text" id="lname" name="lname" class="signup-input" />
						</div>
					</div>
					<div class="row-signup-form">
						<div class="signup-col-1-of-2">
							<label for="email" class="signup-label">Email</label> <input
								type="email" id="email" name="email" class="signup-input" />
						</div>
						<div class="signup-col-1-of-2">
							<label for="password" class="signup-label">Password</label> <input
								type="password" id="password" name="password"
								class="signup-input" />
						</div>
					</div>
					<div class="row-signup-form">
						<div class="signup-col-1-of-2">
							<label for="address" class="signup-label">Address</label> <input
								type="address" id="address" name="address" class="signup-input" />
						</div>
						<div class="signup-col-1-of-2">
							<label for="city" class="signup-label">City</label> <input
								type="text" id="text" name="text" class="signup-input" />
						</div>
					</div>
					<div class="row-signup-form">
						<div class="signup-col-1-of-2">
							<label for="pinCode" class="signup-label">PinCode</label> <input
								type="number" id="pincode" name="pincode" class="signup-input" />
						</div>
						<div class="signup-col-1-of-2">
							<label for="state" class="signup-label">State</label> <input
								type="text" id="state" name="state" class="signup-input" />
						</div>
					</div>
					<a href="#popup" class="signup-submit-btn-container">
						<h6 class="signup-submit-btn">Submit</h6>
					</a>
				</fieldset>
			</form>
		</div>
	</div>
	<script>
      const sign_in_btn = document.querySelector("#sign-in-btn");
      const sign_up_btn = document.querySelector("#sign-up-btn");
      const container = document.querySelector(".container");

      sign_up_btn.addEventListener("click", () => {
        container.classList.add("sign-up-mode");
      });

      sign_in_btn.addEventListener("click", () => {
        container.classList.remove("sign-up-mode");
      });
</script>

</body>
</html>
