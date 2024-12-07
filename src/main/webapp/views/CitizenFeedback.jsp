<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit Feedback</title>
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
            background-color: #666;
        }

        .dropdown-container {
            display: none;
            background-color: #555;
            padding-left: 15px;
        }

        .main-content {
            margin-left: 270px;
            padding: 20px;
            flex-grow: 1;
            overflow-y: auto;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            font-size: 24px;
            color: #333;
        }

        form {
            width: 80%;
            max-width: 800px;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 16px;
            color: #333;
            margin-bottom: 10px;
            display: block;
        }

        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        textarea {
            resize: vertical;
            min-height: 150px;
        }

        button {
            background-color: #444;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            border-radius: 4px;
        }

        button:hover {
            background-color: #666;
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
    
    <!-- Display the success or error message -->
    <p style="color: green; font-weight: bold;">${message}</p>
    <p style="color: red; font-weight: bold;">${errorMessage}</p>

    <div class="main-content">
        <h1>Submit Your Feedback</h1>

        <form action="SubmitFeedback" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="feedback">Feedback</label>
            <textarea id="feedback" name="feedback" required></textarea>

            <button type="submit">Submit Feedback</button>
        </form>
    </div>

    <script>
        // Toggle dropdown menus in the sidebar
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
