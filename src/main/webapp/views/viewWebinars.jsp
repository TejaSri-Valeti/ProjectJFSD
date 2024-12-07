<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ include file="EducatorDashboard.jsp" %> <!-- Include the Educator Dashboard -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Webinars</title>
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

        .message {
            font-weight: bold;
            color: green;
            text-align: center;
        }
    </style>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            const dropdownButtons = document.querySelectorAll('.dropdown-btn');
            dropdownButtons.forEach(button => {
                button.addEventListener('click', function () {
                    const dropdownContent = this.nextElementSibling;
                    dropdownContent.style.display =
                        dropdownContent.style.display === 'block' ? 'none' : 'block';
                });
            });
        });
    </script>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <%@ include file="EducatorDashboard.jsp" %> <!-- Include Educator Dashboard content -->
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h1>Upcoming Webinars</h1>
        <!-- Display success or error message -->
        <c:if test="${not empty message}">
            <p class="message">${message}</p>
        </c:if>

        <!-- Webinars Table -->
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
                <c:forEach var="webinar" items="${webinars}">
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
</body>
</html>
