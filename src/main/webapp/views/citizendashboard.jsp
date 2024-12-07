<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Educational Resources - Indian Constitution Project</title>
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

        /* Dropdown styling */
        .dropdown-btn {
            width: 90%;
            padding: 12px;
            background-color: #ffffff33;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            text-align: left;
        }

        .dropdown-container {
            display: none;
            background-color: #4CAF50;
            padding-left: 20px;
            width: 90%;
        }

        .dropdown-container a {
            padding: 12px;
            text-decoration: none;
            color: white;
            display: block;
            font-size: 16px;
        }

        .dropdown-container a:hover {
            background-color: #ffffff55;
        }

        /* Main content styling */
        .content {
            margin-left: 260px;
            padding: 20px;
            width: 100%;
        }
    </style>
</head>
<body>

    <!-- Sidebar section -->
    <div class="sidebar">
        <h1>Dashboard</h1>
        <!-- Educational Resources Dropdown -->
        <button class="dropdown-btn">Educational Resources</button>
        <div class="dropdown-container">
            <a href="citizenviewmaterials">View Resources</a>
        </div>

        <!-- Webinars Dropdown -->
        <button class="dropdown-btn">Webinars & Sessions</button>
        <div class="dropdown-container">
            <a href="citizenviewWebinars">View Webinars</a>
        </div>

        <!-- Quizzes & Assessments Dropdown -->
        <button class="dropdown-btn">Quizzes & Assessments</button>
        <div class="dropdown-container">
            <a href="takeQuiz">Take Quiz</a>
            <a href="viewResults">View Results</a>
        </div>
         <a href="CitizenFeedback">Provide Feedback</a>
        <!-- Profile Link -->
        <button onclick="location.href='CitizenProfile'">Profile</button>

        <!-- Logout Link -->
        <a href="citizenlogout" class="logout-link">Logout</a>
    </div>

    <!-- Main content section -->
    <div class="content">
        <!-- Content will go here -->
    </div>

    <script>
        // Toggle dropdown menus
        const dropdownButtons = document.querySelectorAll('.dropdown-btn');
        dropdownButtons.forEach(button => {
            button.addEventListener('click', function () {
                this.classList.toggle('active');
                const dropdownContent = this.nextElementSibling;
                dropdownContent.style.display = dropdownContent.style.display === 'block' ? 'none' : 'block';
            });
        });
    </script>

</body>
</html>
