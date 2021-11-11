<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Generate Question Paper</title>
<script src="https://kit.fontawesome.com/7780cccd9d.js"></script>
    <!-- Google Fonts Link -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
      rel="stylesheet"
    />
    <link type="text/css" rel="stylesheet" href="generateQuestionPaper.css" />
</head>
<body>
 <header>
      <h3>Easy Paper</h3>
      <ul>
        <li><a class="links" href="teacherHomePage.jsp">Home</a></li>
			<li><a class="links" href="contactUs.jsp">ContactUs</a></li> 
			<li><a class="links" href="logout">Logout</a></li>
      </ul>
    </header>
    <section class="card">
      <form>
        <fieldset>
          <legend>Generate Java Exam Paper for BCA</legend>
          <div class="input-area">
            <label for="time">TotalTime:</label>
            <textarea
              name="time"
              id="time"
              cols="30"
              rows="1"
              placeholder="hh:mm"
            ></textarea>
            <span class="examYear">
            <label for="year">Year:</label>
            <input type="number"></span>
            </div>
            <div class="input-area"> <label for="maxMarks">MaxMarks:</label>
            <input type="number">
           </div>
            <div class="input-area">
            <label for="questions">TotalQuestions:</label>
           <input type="number">
            <span class="availableQuestions">Available :10</span>
          </div>
          <div class="input-area">
            <label for="collegeName">CollegeName:</label>
            <textarea
              name="collegeName"
              id="collegeName"
              cols="58"
              rows="1"
            ></textarea>
            </div>
          <div class="input-area">
            <label for="description">Description:</label>
            <textarea
              name="description"
              id="description"
              cols="60"
              rows="4"
            ></textarea>
          </div>
          <div class="button_area">
            <div></div>
            <input type="reset" value="Reset" />
            <input type="submit" value="Submit" />
            <div></div>
          </div>
        </fieldset>
      </form>
    </section>
</body>
</html>