<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>examPaper</title>
<script src="https://kit.fontawesome.com/7780cccd9d.js"></script>
    <!-- Google Fonts Link -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
      rel="stylesheet"
    />
    <link type="text/css" rel="stylesheet" href="examPaper.css" />
</head>
<body>
    <header>
      <h3>Easy Paper</h3>
      <ul>
        <li><a class="links" href="teacherHomePage.jsp">Home</a></li>
        <li><a class="links" href="contactUs.jsp">ContactUs</a></li> 
			<li class="links" >PrintPaper</li>
			<li><a class="links" href="logout">Logout</a></li>
      </ul>
    </header>
    <section class="card">
      <div class="div1">
        <div class="subDiv1">
          <h3>Maulana Azad National Institute of technology, Bhopal</h3>
        </div>
        <div class="subDiv2"><h3>End Term Examination-2021</h3></div>
        <div class="subDiv3">
          <h3>JAVA</h3>
        </div>
      </div>
      <div class="div2">
        <h3 class="totalTime">Time: 3 hrs 30 min</h3>
        <h3 class="maximumMarks">MM: 50 marks</h3>
      </div>

      <div class="div3">
        <div class="Note">
          <h3><span>Note: </span>All the questions are compulsory!</h3>
        </div>
        <table class="table-content">
          <tbody>
            <tr>
              <td>Q.1</td>
              <td>What is Java?</td>
            </tr>
            <tr>
              <td>Q.2</td>
              <td>What is Access Modifier in Java?</td>
            </tr>
            <tr>
              <td>Q.3</td>
              <td>What is Operator overloading in java?</td>
            </tr>
            <tr>
              <td>Q.4</td>
              <td>What is Generic functions?</td>
            </tr>
          </tbody>
        </table>
      </div>
    </section>
</body>
</html>