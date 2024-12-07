<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conduct Webinar</title>
    <style>
        /* Sidebar CSS */
        .sidebar {
            width: 250px;
            background-color: #333;
            color: #fff;
            position: fixed;
            height: 100%;
            overflow: auto;
            display: flex;
            flex-direction: column;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        }

        .sidebar a, .sidebar .dropdown-btn {
            padding: 15px 20px;
            text-decoration: none;
            font-size: 16px;
            color: #fff;
            display: block;
            text-align: left;
            border: none;
            background: none;
            width: 100%;
            outline: none;
            cursor: pointer;
            transition: 0.3s;
        }

        .sidebar a:hover, .sidebar .dropdown-btn:hover {
            background-color: #666;
        }

        .dropdown-container {
            display: none;
            background-color: #555;
            padding-left: 15px;
        }

        .sidebar .educator-heading {
            font-weight: bold;
            padding: 15px 20px;
            background-color: #444;
        }

        /* Main Content */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            display: flex;
            height: 100vh;
            color: #333;
        }

        .main-content {
            margin-left: 250px;
            padding: 20px;
            flex-grow: 1;
            overflow-y: auto;
        }

        form {
            display: flex;
            flex-direction: column;
            background: #fff;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            max-width: 800px;
            margin: 20px auto;
        }

        label {
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }

        input, textarea, button {
            margin-bottom: 15px;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #333;
            color: white;
            cursor: pointer;
            border: none;
        }

        button:hover {
            background-color: #555;
        }

        .message {
            font-weight: bold;
            color: green;
            text-align: center;
        }
    </style>
</head>
<body>
    <!-- Include Educator Dashboard -->
    <%@ include file="EducatorDashboard.jsp" %>

    <!-- Main Content -->
    <div class="main-content">
        <h1>Conduct a Webinar</h1>
        <c:if test="${not empty message}">
            <p class="message">${message}</p>
        </c:if>
        <form action="/conductWebinar" method="post">
            <label for="title">Webinar Title:</label>
            <input type="text" id="title" name="title" placeholder="Enter webinar title" required>
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>
            <label for="time">Time:</label>
            <input type="time" id="time" name="time" required>
            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="5" placeholder="Enter webinar description" required></textarea>
            <label for="link">Webinar Link:</label>
            <input type="url" id="link" name="link" placeholder="Enter webinar link (e.g., Zoom, Google Meet)" required>
            <button type="submit">Host Webinar</button>
        </form>
    </div>
</body>
</html>
