<%@ include file="EducatorDashboard.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Educator Profile</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            display: flex;
            min-height: 100vh;
            background-color: #f4f4f4;
            color: #333;
        }

        /* Sidebar already handled by EducatorDashboard.jsp */

        /* Content area styling */
        .content {
            margin-left: 250px; /* Adjusted for sidebar width */
            padding: 20px;
            width: calc(100% - 250px);
            background-color: white;
            color: #333;
        }

        .content h1 {
            color: #222;
            margin-bottom: 20px;
        }

        .profile-container {
            max-width: 600px;
            width: 100%;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .profile-details {
            margin-top: 20px;
        }

        .profile-details p {
            font-size: 18px;
            color: #555;
            margin: 10px 0;
        }

        .profile-details span {
            font-weight: bold;
            color: #000;
        }

        @media (max-width: 768px) {
            .content {
                margin-left: 200px; /* Adjust for smaller sidebar width */
            }
        }

        @media (max-width: 576px) {
            .content {
                margin-left: 0; /* Full width when sidebar collapses */
            }
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <%@ include file="EducatorDashboard.jsp" %>

    <!-- Content area for profile -->
    <div class="content">
        <div class="profile-container">
            <h1>Educator Profile</h1>
            <div class="profile-details">
                <p><span>Username:</span> ${educator.username}</p>
                <p><span>Email:</span> ${educator.email}</p>
                <p><span>Mobile:</span> ${educator.mobile}</p>
                <p><span>Status:</span> ${educator.status}</p>
            </div>
        </div>
    </div>
</body>
</html>
