<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Provide Feedback</title>
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
            background-color: #fff; /* White background */
            color: #000; /* Black text */
        }

        /* Sidebar styling */
        .sidebar {
            background-color: #000; /* Black */
            width: 250px;
            height: 100vh;
            padding-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            color: #fff; /* White text */
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        }

        .sidebar h1 {
            color: #fff;
            font-size: 24px;
            margin-bottom: 30px;
        }

        .sidebar button, .sidebar a {
            width: 90%;
            padding: 12px;
            margin: 8px 0;
            background-color: #333; /* Dark gray */
            color: #fff; /* White text */
            border: none;
            border-radius: 4px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .sidebar button:hover, .sidebar a:hover {
            background-color: #666; /* Medium gray on hover */
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
            background-color: #fff;
            color: #000;
        }

        .container {
            background-color: #f9f9f9; /* Light gray */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
            margin-top: 50px;
        }

        h1 {
            color: #000; /* Black header */
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc; /* Light gray border */
            border-radius: 4px;
            background-color: #fff; /* White input background */
            color: #000; /* Black text */
        }

        button {
            padding: 10px;
            background-color: #333; /* Dark gray button */
            color: #fff; /* White text */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        button:hover {
            background-color: #666; /* Medium gray on hover */
        }

        a {
            display: block;
            margin-top: 15px;
            color: #000; /* Black link */
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
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
</head>
<body>
    <!-- Sidebar for navigation -->
    <div class="sidebar">
        <h1>Educator Dashboard</h1>
        <button onclick="redirectToCreateMaterial()">Create Educational Material</button>
        <button onclick="hostWebinar()">Host Live Webinar</button>
        <button onclick="facilitateDiscussion()">Facilitate Discussion Forum</button>
        <button onclick="provideFeedback()">Provide Feedback on Engagement</button>
        <button onclick="assessLearningOutcomes()">Assess Learning Outcomes</button>
        <button onclick="viewProfile()">View Profile</button>
        <a href="index2.jsp">Logout</a>
    </div>

    <!-- Content area for feedback form -->
    <div class="content">
        <div class="container">
            <h1>Provide Feedback</h1>
            <form id="feedbackForm" action="/feedback" method="POST">
                <input type="text" name="name" placeholder="Your Name" required>
                <textarea name="feedback" rows="4" placeholder="Your Feedback" required></textarea>
                <button type="submit">Submit Feedback</button>
            </form>
            <a href="EducatorDashboard.jsp">Back to Dashboard</a>
        </div>
    </div>

    <script>
        function redirectToCreateMaterial() {
            alert('Redirecting to create educational material...');
            window.location.href = 'CreateEducationalMaterial';
        }

        function hostWebinar() {
            alert('Redirecting to Host Webinar...');
            window.location.href = 'HostWebinar';
        }

        function facilitateDiscussion() {
            alert('Redirecting to Facilitate Discussion Forum...');
            window.location.href = 'FacilitateDiscussion';
        }

        function provideFeedback() {
            alert('Redirecting to Provide Feedback...');
            window.location.href = 'ProvideFeedback';
        }

        function assessLearningOutcomes() {
            alert('Redirecting to Learning Outcomes...');
            window.location.href = 'AssessLearningOutcomes';
        }

        function viewProfile() {
            alert('Redirecting to Profile...');
            window.location.href = 'profile.jsp';
        }
    </script>
</body>
</html>