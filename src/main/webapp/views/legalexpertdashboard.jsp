<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Legal Expert Section</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Main layout styling */
        body {
            display: flex;
            min-height: 100vh;
            background-color: #f0f0f0;
            color: #333;
        }

        /* Sidebar styling */
        .sidebar {
            background-color: #333;
            width: 250px;
            height: 100vh;
            padding-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            color: white;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar h1 {
            color: white;
            font-size: 24px;
            margin-bottom: 30px;
        }

        .sidebar button, .sidebar a {
            width: 90%;
            padding: 12px;
            margin: 8px 0;
            background-color: rgba(255, 255, 255, 0.1);
            color: white;
            border: none;
            border-radius: 4px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .sidebar button:hover, .sidebar a:hover {
            background-color: rgba(255, 255, 255, 0.3);
        }

        /* Content area styling */
        .content {
            margin-left: 260px;
            padding: 20px;
            width: calc(100% - 260px);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            background-color: #ffffff;
            color: #333;
        }

        .content h2 {
            color: #333;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .sidebar {
                width: 200px;
            }

            .content {
                margin-left: 200px;
            }
        }

        @media (max-width: 576px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }

            .content {
                margin-left: 0;
            }
        }
    </style>
    <script>
        function redirectToLegalUpdates() {
            window.location.href = "legalupdates"; // Adjust to the actual URL for legal content updates
        }

        function participateInQA() {
            window.location.href = "qa-session"; // Adjust to the actual URL for Q&A participation
        }

        function reviewReports() {
            window.location.href = "reports"; // Adjust to the actual URL for reports review
        }

        function analyzeCases() {
            window.location.href = "analyzecases"; // Adjust to the actual URL for case analysis
        }

        function viewLegalExpertProfile() {
            window.location.href = "legalExpertProfile"; // Adjust to the actual URL for profile view
        }
    </script>
</head>
<body>
    <!-- Sidebar for navigation -->
    <div class="sidebar">
        <h1>Legal Expert Dashboard</h1>
        <button onclick="redirectToLegalUpdates()">Update Legal Content</button>
        <button onclick="participateInQA()">Participate in Q&A</button>
        <button onclick="reviewReports()">Review Reports</button>
        <button onclick="analyzeCases()">Analyze Cases</button>
        <button onclick="viewLegalExpertProfile()">View Profile</button>
        <a href="legalexpertlogin">Logout</a>
    </div>

    <!-- Content area for page details -->
    <div class="content">
        <h2>Welcome to your Legal Expert Dashboard!</h2>
        <p>Manage your legal tasks and provide support by selecting an option from the sidebar.</p>
    </div>

</body>
</html>