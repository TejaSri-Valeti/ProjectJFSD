<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Host Webinar</title>
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
            background-color: #f4f4f4; /* Light gray background */
            color: #333; /* Dark gray text */
        }

        /* Sidebar styling */
        .sidebar {
            background-color: #222; /* Black background */
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
            background-color: rgba(255, 255, 255, 0.1); /* Dark gray hover effect */
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
            background-color: rgba(255, 255, 255, 0.2); /* Lighter gray on hover */
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
            background-color: white; /* White background */
            color: #333; /* Dark gray text */
        }

        .content h1 {
            color: #222; /* Darker gray for heading */
            margin-bottom: 20px;
        }

        /* Form styling */
        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc; /* Light gray border */
            border-radius: 4px;
            background-color: #f9f9f9; /* Light gray background */
            color: #333; /* Dark gray text */
        }

        button {
            padding: 10px;
            background-color: #222; /* Black button */
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        button:hover {
            background-color: #333; /* Darker gray on hover */
        }

        a {
            display: block;
            margin-top: 15px;
            color: #222; /* Dark gray link */
            text-decoration: none;
        }

        .tips {
            margin-top: 20px;
            text-align: left;
            color: #222; /* Dark gray text */
        }

        .tips ul {
            list-style-type: none;
        }

        .tips li {
            margin-bottom: 10px;
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
        <a href="index.jsp">Logout</a>
    </div>

    <!-- Content area for hosting the webinar -->
    <div class="content">
        <h1>Host Webinar</h1>
        <form id="webinarForm">
            <input type="text" id="title" placeholder="Webinar Title" required>
            <textarea id="description" rows="4" placeholder="Description" required></textarea>
            <input type="datetime-local" id="dateTime" required>
            <input type="text" id="link" placeholder="Meeting Link" required>
            <button type="button" onclick="hostWebinar()">Host Webinar</button>
        </form>

        <div class="tips">
            <h2>Webinar Tips</h2>
            <ul>
                <li><strong>Promote Early:</strong> Share your webinar details on social media and via email to attract participants.</li>
                <li><strong>Engage Your Audience:</strong> Use polls and Q&A sessions to keep the audience engaged.</li>
                <li><strong>Test Your Tech:</strong> Check your internet connection, audio, and video setup before the webinar.</li>
                <li><strong>Follow Up:</strong> Send a thank-you email with a recording of the webinar to participants.</li>
            </ul>
        </div>

        <a href="EducatorDashboard.jsp">Back to Dashboard</a>
    </div>

    <script>
        function hostWebinar() {
            const title = document.getElementById('title').value;
            const description = document.getElementById('description').value;
            const dateTime = document.getElementById('dateTime').value;
            const link = document.getElementById('link').value;

            // Here you would typically send the data to the server
            console.log('Webinar Hosted:', { title, description, dateTime, link });

            // For demonstration, show a success message
            alert('Your webinar has been successfully scheduled! Don’t forget to promote it!');

            // Optionally reset the form
            document.getElementById('webinarForm').reset();
        }

       
    </script>
</body>
</html>