<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TeacherHomePage</title>
    <script src="https://kit.fontawesome.com/7780cccd9d.js"></script>
    <!-- Google Fonts Link -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
      rel="stylesheet"
    />
    <link type="text/css" rel="stylesheet" href="style2.css" />
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
          <legend>Add Paper</legend>
          <div class="input-area">
            <label for="paperName">Paper Name:</label>
            <textarea
              name="paperName"
              id="paperName"
              cols="30"
              rows="1"
            ></textarea>
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
            <label for="Description">Description:</label>
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