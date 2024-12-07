<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ include file="EducatorDashboard.jsp" %>  <!-- Include Educator Dashboard -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Webinar Details</title>
    <style>
        /* Dashboard Sidebar and General Styles */
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

        .webinar-details {
            margin-top: 20px;
        }

        .webinar-details table {
            width: 100%;
            border-collapse: collapse;
        }

        .webinar-details th, .webinar-details td {
            padding: 10px;
            border: 1px solid #ddd;
        }

        .webinar-details th {
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
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <div class="educator-heading">Educator Dashboard</div>
        <button class="dropdown-btn">Educational Materials</button>
        <div class="dropdown-container">
            <a href="CreateEducationalMaterial">Create Materials</a>
            <a href="viewmaterials">View Materials</a>
            <a href="deleteviewmaterials">Delete Materials</a>
        </div>
        <button class="dropdown-btn">Webinars</button>
        <div class="dropdown-container">
            <a href="ConductWebinar">Conduct Webinars</a>
            <a href="viewWebinars">View Webinars</a>
            <a href="deletewebinars">Delete Webinars</a>
        </div>
        
        <button class="dropdown-btn">Feedback</button>
        <div class="dropdown-container">
        <a href="addassessment">Add Assessments</a>
            <a href="viewfeedback">View Feedback</a>
            <a href="deletefeedback">Delete Feedback</a>
        </div>
        <button class="dropdown-btn">Quizes</button>
        <div class="dropdown-container">
        <a href="addquizes">Add Quizes</a>
            <a href="viewviewquizes">View Quizes</a>
            <a href="deleteQuizes">Delete Quizes</a>
        </div>
        <button class="dropdown-btn">Profile</button>
        <div class="dropdown-container">
            <a href="educatorprofile">View Profile</a>
            <a href="editprofile">Edit Profile</a>
        </div>
        <a href="educatorlogin">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h1>Webinar Details</h1>

        <!-- Display success or error message -->
        <c:if test="${not empty message}">
            <p class="message">${message}</p>
        </c:if>

        <!-- Display Webinar Details -->
        <c:if test="${not empty webinar}">
            <div class="webinar-details">
                <h3>Title: ${webinar.title}</h3>
                <table>
                    <tr>
                        <th>Description</th>
                        <td>${webinar.description}</td>
                    </tr>
                    <tr>
                        <th>Date</th>
                        <td>${webinar.date}</td>
                    </tr>
                    <tr>
                        <th>Time</th>
                        <td>${webinar.time}</td>
                    </tr>
                    <tr>
                        <th>Link</th>
                        <td><a href="${webinar.link}" target="_blank">Join Webinar</a></td>
                    </tr>
                </table>
            </div>
        </c:if>
    </div>

    <script>
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
