
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

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Educator Dashboard heading -->
        <div class="educator-heading">Educator Dashboard</div>
 <a href="EducatorHome">Educator Home</a>
 
 
 
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
            <a href="deleteviewWebinars">Delete Webinars</a>
        </div>

       

        <!-- Feedback Dropdown -->
        <button class="dropdown-btn">Feedback</button>
        <div class="dropdown-container">
            <a href="viewfeedback">View Feedback</a>
            
        </div>

        <!-- Assessments Dropdown -->
        <button class="dropdown-btn">Quizes</button>
        <div class="dropdown-container">
        <a href="addquizes">Add Quizes</a>
            <a href="viewviewquizes">View Quizes</a>
            <a href="deleteQuizes">Delete Quizes</a>
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
