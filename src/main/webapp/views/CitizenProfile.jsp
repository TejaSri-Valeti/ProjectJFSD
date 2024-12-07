<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citizen Profile</title>
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
            max-width: 900px;
            text-align: center;
        }
        .profile-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 700px;
            margin: 20px auto;
            text-align: left;
        }
        h1 {
            color: #4CAF50;
            text-align: center;
        }
        .profile-details {
            margin: 20px 0;
        }
        .profile-details p {
            font-size: 18px;
            margin: 10px 0;
        }
        .profile-details span {
            font-weight: bold;
            color: #333;
        }
        a {
            display: block;
            text-align: center;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            padding: 10px;
            border-radius: 4px;
            margin-top: 20px;
        }
        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <%@ include file="citizendashboard.jsp" %>

    <!-- Main Content Section -->
    <div class="content">
        <div class="profile-container">
            <h1>Citizen Profile</h1>
            <div class="profile-details">
                <p><span>Username:</span> ${citizen.username}</p>
                <p><span>Email:</span> ${citizen.email}</p>
                <p><span>Mobile:</span> ${citizen.mobile}</p>
                <p><span>Role:</span> ${citizen.role}</p>
            </div>
            <a href="citizenlogout">Logout</a>
        </div>
    </div>
</body>
</html>
