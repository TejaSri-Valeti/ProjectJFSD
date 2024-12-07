<!DOCTYPE html>
<html>
<head>
    <title>Update Citizen Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            display: flex;
            height: 100vh;
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

        /* Sidebar Educator Dashboard heading */
        .sidebar .educator-heading {
            font-weight: bold;
            padding: 15px 20px;
            background-color: #444;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
            width: 100%;
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Educator Dashboard heading -->
        <div class="educator-heading">Educator Dashboard</div>

        <!-- Educational Materials Dropdown -->
        <button class="dropdown-btn">Educational Materials</button>
        <div class="dropdown-container">
            <a href="CreateEducationalMaterial">Create Materials</a>
            <a href="viewmaterials">View Materials</a>
            <a href="deleteviewmaterials">Delete Materials</a>
        </div>

        <!-- Webinars Dropdown -->
        <button class="dropdown-btn">Webinars</button>
        <div class="dropdown-container">
            <a href="ConductWebinar">Conduct Webinars</a>
            <a href="viewWebinars">View Webinars</a>
            <a href="deletewebinars">Delete Webinars</a>
        </div>

        <!-- Feedback Dropdown -->
        <button class="dropdown-btn">Feedback</button>
        <div class="dropdown-container">
            <a href="viewfeedback">View Feedback</a>
            <a href="deletefeedback">Delete Feedback</a>
        </div>

        <!-- Assessments Dropdown -->
        <button class="dropdown-btn">Quizzes</button>
        <div class="dropdown-container">
            <a href="addquizes">Add Quizzes</a>
            <a href="viewquizes">View Quizzes</a>
            <a href="deletequizes">Delete Quizzes</a>
        </div>

        <!-- Profile Dropdown -->
        <button class="dropdown-btn">Profile</button>
        <div class="dropdown-container">
            <a href="educatorprofile">View Profile</a>
            <a href="editprofile">Edit Profile</a>
        </div>

        <!-- Logout Link -->
        <a href="educatorlogin">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h1>Quiz added succesfully</h1>
        
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
