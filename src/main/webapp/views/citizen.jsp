<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citizen Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            min-height: 100vh;
        }
        /* Sidebar styling managed in citizendashboard.jsp */

        .content {
            margin-left: 260px; /* Adjust margin for sidebar width */
            padding: 20px;
            width: calc(100% - 260px); /* Adjust width to account for sidebar */
            background-color: white;
            color: #333;
        }

        .content h2 {
            color: #4CAF50; /* Matching sidebar color theme */
            margin-bottom: 20px;
        }

        .content p {
            font-size: 16px;
            line-height: 1.6;
        }
    </style>
</head>
<body>
    <!-- Include Citizen Dashboard -->
    <%@ include file="citizendashboard.jsp" %>

    <!-- Main content area -->
    <div class="content">
        <h2>Welcome to your Citizen Dashboard!</h2>
        <p>
            Select an option on the left to start exploring resources, participating in discussions,
            taking quizzes, registering for webinars, or tracking your learning progress.
        </p>
    </div>
</body>
</html>
