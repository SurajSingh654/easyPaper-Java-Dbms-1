<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Question Paper Report</title>
 <script src="https://kit.fontawesome.com/7780cccd9d.js"></script>
    <!-- Google Fonts Link -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
      rel="stylesheet"
    />
    <link type="text/css" rel="stylesheet" href="questionReport.css" />
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
          <legend>All Question Report</legend>
          <table class="table-content">
            <thead>
              <th>Sr. No.</th>
              <th>Question</th>
              <th>Marks</th>
              <th>Action</th>
            </thead>
            <tbody>
              <tr>
                <td>1.</td>
                <td><p>What is java?</p></td>
                <td>10</td>
                <td>
                  <button class="classReportEditButton" type="submit">
                    Edit
                  </button>
                  <button class="classReportDeleteButton" type="submit">
                    Delete
                  </button>
                </td>
              </tr>
              <tr>
                <td>2.</td>
                <td><p>What do you mean by method overloading?</p></td>
                <td>10</td>
                <td>
                  <button class="classReportEditButton" type="submit">
                    Edit
                  </button>
                  <button class="classReportDeleteButton" type="submit">
                    Delete
                  </button>
                </td>
              </tr>
              <tr>
                <td>3.</td>
                <td><p>What is static method in java?</p></td>
                <td>10</td>
                <td>
                  <button class="classReportEditButton" type="submit">
                    Edit
                  </button>
                  <button class="classReportDeleteButton" type="submit">
                    Delete
                  </button>
                </td>
              </tr>
              <tr>
                <td>4.</td>

                <td><p>What is generic function in java?</p></td>
                <td>10</td>
                <td>
                  <button class="classReportEditButton" type="submit">
                    Edit
                  </button>
                  <button class="classReportDeleteButton" type="submit">
                    Delete
                  </button>
                </td>
              </tr>
              <tr>
                <td>5.</td>

                <td><p>What is lambda expression?Explain with example.</p></td>
                <td>10</td>
                <td>
                  <button class="classReportEditButton" type="submit">
                    Edit
                  </button>
                  <button class="classReportDeleteButton" type="submit">
                    Delete
                  </button>
                </td>
              </tr>
              <tr>
                <td>6.</td>

                <td>
                  <p>
                    WAP to compare two student in student class with their
                    rollNumber and Name.
                  </p>
                </td>
                <td>10</td>
                <td>
                  <button class="classReportEditButton" type="submit">
                    Edit
                  </button>
                  <button class="classReportDeleteButton" type="submit">
                    Delete
                  </button>
                </td>
              </tr>
            </tbody>
          </table>
        </fieldset>
      </form>
    </section>
</body>
</html>