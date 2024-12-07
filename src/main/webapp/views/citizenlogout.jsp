<!DOCTYPE html>
<html lang="en">
<head>
    <title>Educator Dashboard</title>
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

        .sidebar a {
            padding: 15px 20px;
            text-decoration: none;
            font-size: 16px;
            color: #fff;
            display: block;
            text-align: left;
            transition: 0.3s;
        }

        .sidebar a:hover {
            background-color: #666; /* Lighter gray for hover effect */
        }

        /* Sidebar Educator Dashboard heading */
        .sidebar .educator-heading {
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
            font-size: 32px;
            color: #333;
        }

        .main-content p {
            font-size: 18px;
            color: #666;
            line-height: 1.6;
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
    <%@ include file="citizendashboard.jsp" %>

    <!-- Main Content -->
    <div class="main-content">
        <h1>Welcome to the Educator Dashboard!</h1>
        <p>Manage your tasks such as hosting webinars, creating materials, and providing assessments.</p>
    </div>
</body>
</html>
