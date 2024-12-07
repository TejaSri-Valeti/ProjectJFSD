<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ include file="EducatorDashboard.jsp" %> <!-- Include the Educator Dashboard -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Webinars</title>
    <!-- Bootstrap 4.5.2 CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            display: flex;
            height: 100vh;
            color: #333;
        }

        .sidebar {
            width: 250px;
            background-color: #333;
            color: #fff;
            position: fixed;
            height: 100%;
            overflow: auto;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        }

        .sidebar .dropdown-btn {
            background-color: #444;
            color: white;
            padding: 10px 15px;
            border: none;
            width: 100%;
            text-align: left;
            cursor: pointer;
            outline: none;
            font-size: 16px;
        }

        .sidebar .dropdown-btn:hover {
            background-color: #555;
        }

        .sidebar .dropdown-container {
            display: none;
            padding-left: 20px;
            background-color: #444;
        }

        .sidebar .dropdown-container a {
            padding: 10px 0;
            display: block;
            color: #ddd;
            text-decoration: none;
        }

        .sidebar .dropdown-container a:hover {
            color: white;
        }

        .main-content {
            margin-left: 250px;
            padding: 20px;
            flex-grow: 1;
            overflow-y: auto;
        }

        .main-content h1 {
            font-size: 32px;
            color: #333;
        }

        .message {
            font-weight: bold;
            color: green;
            text-align: center;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
        }

        a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }

        a:hover {
            color: #007bff;
        }

        /* Custom Style for Alerts */
        .alert-info {
            background-color: #d1ecf1;
            color: #0c5460;
            border-color: #bee5eb;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <%@ include file="citizendashboard.jsp" %> <!-- Include Citizen Dashboard content -->
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h1>Upcoming Webinars</h1>

        <!-- Display message if exists -->
        <c:if test="${not empty message}">
            <div class="alert alert-info">${message}</div>
        </c:if>

        <!-- Webinars Table -->
        <c:if test="${empty webinarList}">
            <p class="message">No webinars available.</p>
        </c:if>

        <table>
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Time</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="webinar" items="${webinarList}">
                    <tr>
                        <td>${webinar.title}</td>
                        <td>${webinar.description}</td>
                        <td>${webinar.time}</td>
                        <td><a href="/viewWebinars/${webinar.id}">View Details</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS (necessary for Bootstrap 4) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
