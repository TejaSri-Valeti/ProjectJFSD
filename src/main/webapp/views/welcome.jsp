<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
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
        .logout-link {
            margin-top: auto;
            padding-bottom: 20px;
        }
        /* Main content styling */
       .content {
            margin-left: 260px;
            padding: 20px;
            width: 100%;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 700px;
            margin: 20px auto;
        }
        h1 {
            color: #4CAF50;
            text-align: center;
        }
        /* Center alignment for welcome message */
        .welcome-message {
            text-align: center;
            margin-top: 20px;
            font-size: 24px;
            color: #4CAF50;
        }
    </style>
</head>
<body>
    <%@ include file="citizendashboard.jsp" %>

    <!-- Main content section -->
    <div class="content">
        <div class="container">
            <div class="welcome-message">
                <h2>Welcome, ${citizen.username}!</h2>
                <p>Welcome to your home page!</p>
            </div>
        </div>
    </div>
</body>
</html>
