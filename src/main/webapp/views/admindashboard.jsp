<%@ page import="com.klef.jfsd.springboot.Models.Admin"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #fff;
            margin: 0;
            display: flex;
            height: 100vh;
            color: #333;
        }

        /* Left Navbar styles */
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

        /* Dropdown container styles */
        .dropdown-container {
            display: none;
            background-color: #555; /* Medium gray */
            padding-left: 15px;
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

        /* Sidebar Admin Dashboard heading styles */
        .sidebar .admin-heading {
            font-weight: bold;
            padding: 15px 20px;
            background-color: #444;
        }
    </style>
</head>
<body>

    <!-- Left Navbar -->
    <div class="sidebar">
        <!-- Admin Dashboard heading -->
        <div class="admin-heading">Admin Dashboard</div>
        
        <a href="adminhome">Admin Home</a>

        <!-- Citizen dropdown -->
        <button class="dropdown-btn">Citizen</button>
        <div class="dropdown-container">
            <a href="updatecitizendetails">Update Citizen</a>
            <a href="viewcitizen">View Citizens</a>
            <a href="deletecitizen">Delete Citizen</a>
        </div>

        <!-- Educator dropdown -->
        <button class="dropdown-btn">Educator</button>
        <div class="dropdown-container">
            <a href="updateeducatordetails">Update Educator</a>
            <a href="vieweducator">View Educators</a>
            <a href="deleteeducator">Delete Educator</a>
            <a href="updateeducatorstatus">Status Update</a>
            
        </div>

        <!-- Legal Expert dropdown -->
        <button class="dropdown-btn">Legal Expert</button>
        <div class="dropdown-container">
            <a href="updatelegalexpert">Update Legal Expert</a>
            <a href="viewlegalexpert">View Legal Experts</a>
            <a href="deletelegalexpert">Delete Legal Expert</a>
            <a href="updatelegalexpertstatus">Status Update</a>
        </div>

       

        <!-- Logout link -->
        <a href="adminlogout">Logout</a>
    </div>

    

    <!-- Footer -->
    

    <script>
        // Toggle dropdowns in the sidebar
        const dropdownButtons = document.querySelectorAll('.dropdown-btn');
        dropdownButtons.forEach(button => {
            button.addEventListener('click', function() {
                this.classList.toggle('active');
                const dropdownContent = this.nextElementSibling;
                dropdownContent.style.display = dropdownContent.style.display === 'block' ? 'none' : 'block';
            });
        });
    </script>

</body>
</html>
