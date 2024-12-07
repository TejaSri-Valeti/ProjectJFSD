<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Educator Dashboard - Create Educational Material</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #fff;
            margin: 0;
            display: flex;
            height: 100vh;
            color: #333;
        }

        /* Sidebar styles */
        .sidebar {
            width: 250px;
            background-color: #333; /* Dark gray background */
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
            background-color: #666; /* Lighter gray for hover effect */
        }

        .dropdown-container {
            display: none;
            background-color: #555; /* Medium gray */
            padding-left: 15px;
        }

        .educator-heading {
            font-weight: bold;
            padding: 15px 20px;
            background-color: #444;
        }

        /* Content styles */
        .main-content {
            margin-left: 250px;
            padding: 20px;
            flex-grow: 1;
            overflow-y: auto;
        }

        .main-content h1 {
            font-size: 28px;
            color: #222;
            margin-bottom: 20px;
        }

        .main-content form input,
        .main-content form textarea,
        .main-content form button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .main-content form button {
            background-color: #333;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .main-content form button:hover {
            background-color: #555;
        }

        /* Footer styles */
        footer {
            background-color: #333; /* Dark gray */
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

    <!-- Sidebar -->
    <%@ include file="EducatorDashboard.jsp" %> <!-- Include the EducatorDashboard here -->

    <!-- Main Content -->
    <div class="main-content">
        <h1>Create Educational Material</h1>
        <c:if test="${not empty message}">
            <p style="color: green; font-weight: bold;">${message}</p>
        </c:if>
        <form action="/createMaterial" method="post">
            <input type="text" name="title" placeholder="Title" required>
            <textarea name="description" rows="4" placeholder="Description" required></textarea>
            <input type="text" name="tags" placeholder="Tags (comma-separated)" required>
            <button type="submit">Create Material</button>
        </form>
        <a href="EducatorDashboard">Back to Dashboard</a>
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
