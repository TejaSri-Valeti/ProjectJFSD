<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Educational Materials</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff;
            color: #333;
            display: flex;
            height: 100vh;
        }

        /* Sidebar styles */
        .sidebar {
            width: 250px;
            background-color: #333; /* Dark gray */
            color: #fff;
            position: fixed;
            height: 100%;
            overflow: auto;
            display: flex;
            flex-direction: column;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        }

        .sidebar .citizen-heading {
            font-weight: bold;
            padding: 15px 20px;
            background-color: #444;
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
            outline: none;
            cursor: pointer;
            transition: 0.3s;
        }

        .sidebar a:hover, .sidebar .dropdown-btn:hover {
            background-color: #666; /* Lighter gray for hover effect */
        }

        .dropdown-container {
            display: none;
            background-color: #555; /* Medium gray */
            padding-left: 15px;
        }

        .main-content {
            margin-left: 270px; /* Space for the sidebar */
            padding: 20px;
            flex-grow: 1;
            overflow-y: auto;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full height */
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            font-size: 24px;
            color: #333;
        }

        table {
            width: 80%; /* Adjust table width */
            max-width: 1200px; /* Limit table width */
            margin: 0 auto; /* Center the table */
            border-collapse: collapse;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            border: 1px solid #ccc;
            text-align: left;
            font-size: 16px;
        }

        th {
            background-color: #444;
            color: #fff;
        }

        td {
            background-color: #f9f9f9;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
            width: 100%;
            position: fixed;
            bottom: 0;
            left: 250px;
        }
    </style>
</head>
<body>

    <%@ include file="citizendashboard.jsp" %> <!-- Including the Citizen Dashboard Sidebar -->

    <!-- Main Content -->
    <div class="main-content">
        <h1>List of Educational Materials</h1>
        <table>
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Tags</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="material" items="${materialList}">
                    <tr>
                        <td>${material.title}</td>
                        <td>${material.description}</td>
                        <td>${material.tags}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
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
