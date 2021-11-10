<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Question Paper</title>
<script src="https://kit.fontawesome.com/7780cccd9d.js"></script>
    <!-- Google Fonts Link -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
      rel="stylesheet"
    />
    <link type="text/css" rel="stylesheet" href="addQuestionPaper.css" />
</head>
<body>
       <header>
      <h3>Easy Paper</h3>
      <ul>
        <li>Home</li>
        <li>AboutUs</li>
        <li>ContactUs</li>
        <li>Logout</li>
      </ul>
    </header>
    <section class="card">
      <form>
        <fieldset>
          <legend>Add Question Paper</legend>
          <div class="input-area">
            <label for="paperName">Select Paper:</label>
            <select name="paperName" id="paperName" required>
              <option>PHP</option>
              <option>Python</option>
              <option>Java</option>
              <option>C</option>
              <option>DBMS</option>
            </select>
          </div>
          <div class="input-area">
            <label for="className">Select Class:</label>
            <select name="className" id="className" required>
              <option>MCA</option>
              <option>BCA</option>
              <option>B.tech</option>
              <option>Bsc</option>
              <option>M.tech</option>
            </select>
          </div>
          <div class="input-area">
            <label for="Description">Question:</label>
            <textarea
              name="Description"
              id="Description"
              cols="30"
              rows="8"
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