<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Webinar on Fundamental Rights</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            min-height: 100vh;
        }
        /* Sidebar styling */
        .sidebar {
            background-color: #4CAF50;
            width: 250px;
            height: 100vh;
            padding-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            color: white;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }
        .sidebar h1 {
            color: white;
            font-size: 24px;
            margin-bottom: 30px;
        }
        .sidebar button, .sidebar a {
            width: 90%;
            padding: 12px;
            margin: 8px 0;
            background-color: #ffffff33;
            color: white;
            border: none;
            border-radius: 4px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
        }
        .sidebar button:hover, .sidebar a:hover {
            background-color: #ffffff55;
        }
        .logout-link {
            margin-top: auto;
            padding-bottom: 20px;
        }
        /* Main content styling */
        .main-content {
            margin-left: 260px;
            padding: 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            margin-top: 50px;
            text-align: center;
        }
        h1 {
            color: #4CAF50;
            margin-bottom: 20px;
        }
        a {
            text-decoration: none;
            color: #4CAF50;
            display: block;
            margin-top: 20px;
        }
        a:hover {
            text-decoration: underline;
        }
        #successMessage {
            color: #4CAF50;
            font-weight: bold;
            margin-top: 20px;
            display: none; /* Initially hidden */
        }
    </style>
</head>
<body>
    <!-- Sidebar section -->
    <div class="sidebar">
        <h1>Dashboard</h1>
        <button onclick="location.href='educationalResources.jsp'">Educational Resources</button>
        <button onclick="location.href='discussionForums.jsp'">Discussion Forums</button>
        <button onclick="location.href='quizzes.jsp'">Webinars & Sessions</button>
        <button onclick="location.href='webinars.jsp'">Quizzes & Assessments</button>
        <button onclick="location.href='learningProgress.jsp'">Learning Progress</button>
        <a href="citizenlogout.jsp" class="logout-link">Logout</a>
    </div>

    <!-- Main Content Section -->
    <div class="main-content">
        <div class="container">
            <h1>Understanding Fundamental Rights and Duties</h1>
            <p>Explore the essential rights granted to every citizen and their impact on our daily lives.</p>
            <p>Date: 15th October 2024 | Time: 3:00 PM IST</p>
            <p>Speaker: Teja Sri</p>
            <p>Duration: 1 hour</p>
            <p>Platform: [Webinar Platform]</p>
            <button onclick="register()">Register</button>
            <p id="successMessage">Successfully registered!</p>
            <a href="citizen3">Back to Webinars</a>
        </div>
    </div>

    <script>
        function register() {
            // Display success message after clicking register button
            document.getElementById('successMessage').style.display = 'block';
        }
    </script>
</body>
</html>