<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Facilitate Discussion</title>
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
            background-color: #1a1a1a; /* Dark background */
            color: #e0e0e0; /* Light text */
        }

        /* Sidebar styling */
        .sidebar {
            background-color: #111; /* Darker gray for sidebar */
            width: 250px;
            height: 100vh;
            padding-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            color: #e0e0e0;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.3);
        }

        .sidebar h1 {
            color: #f0f0f0;
            font-size: 24px;
            margin-bottom: 30px;
        }

        .sidebar button, .sidebar a {
            width: 90%;
            padding: 12px;
            margin: 8px 0;
            background-color: #333; /* Medium gray */
            color: #e0e0e0;
            border: none;
            border-radius: 4px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .sidebar button:hover, .sidebar a:hover {
            background-color: #555; /* Lighter gray on hover */
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
            background-color: #1a1a1a;
            color: #e0e0e0;
        }

        .container {
            background-color: #333; /* Medium gray */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
            width: 400px;
            text-align: center;
            margin-top: 50px;
        }

        h1 {
            color: #f0f0f0;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #555; /* Light gray border */
            background-color: #222; /* Dark background for inputs */
            color: #e0e0e0;
            border-radius: 4px;
        }

        button {
            padding: 10px;
            background-color: #333;
            color: #e0e0e0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        button:hover {
            background-color: #555;
        }

        .discussion-list {
            margin-top: 20px;
            text-align: left;
            max-height: 200px;
            overflow-y: auto;
            color: #e0e0e0;
        }

        .discussion-item {
            border-bottom: 1px solid #444;
            padding: 10px 0;
        }

        a {
            display: block;
            margin-top: 15px;
            color: #e0e0e0;
            text-decoration: none;
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

    <!-- Content area for facilitating discussion -->
    <div class="content">
        <div class="container">
            <h1>Facilitate Discussion</h1>
            <form id="discussionForm">
                <input type="text" id="topic" placeholder="Discussion Topic" required>
                <textarea id="question" rows="4" placeholder="Your Question" required></textarea>
                <button type="button" onclick="addDiscussion()">Post Discussion</button>
            </form>

            <div class="discussion-list" id="discussionList">
                <h2>Ongoing Discussions:</h2>
            </div>

            <a href="EducatorDashboard.jsp">Back to Dashboard</a>
        </div>
    </div>

    <script>
        // Load discussions from localStorage on page load
        window.onload = function() {
            loadDiscussions();
        };

        // Function to load discussions from localStorage
        function loadDiscussions() {
            const discussions = JSON.parse(localStorage.getItem('discussions')) || [];
            const discussionList = document.getElementById('discussionList');
            discussionList.innerHTML = '<h2>Ongoing Discussions:</h2>';

            discussions.forEach(discussion => {
                const discussionItem = document.createElement('div');
                discussionItem.classList.add('discussion-item');
                discussionItem.innerHTML = `<strong>${discussion.topic}</strong><p>${discussion.question}</p>`;
                discussionList.appendChild(discussionItem);
            });
        }

        // Function to add a discussion
        function addDiscussion() {
            const topic = document.getElementById('topic').value;
            const question = document.getElementById('question').value;

            if (!topic || !question) {
                alert('Please fill in both fields');
                return;
            }

            // Get the current discussions from localStorage
            let discussions = JSON.parse(localStorage.getItem('discussions')) || [];
            discussions.push({ topic, question });

            // Save the updated discussions to localStorage
            localStorage.setItem('discussions', JSON.stringify(discussions));

            // Reload the discussions to show the newly added one
            loadDiscussions();

            // Reset the form
            document.getElementById('discussionForm').reset();
        }

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
