<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Legal Expert Dashboard</title>
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            display: flex;
            min-height: 100vh;
            color: #333;
        }
        .sidebar {
            background-color: #000;
            color: white;
            width: 250px;
            height: 100vh;
            position: fixed;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 30px 0;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }
        .sidebar h1 {
            font-size: 18px;
            margin-bottom: 40px;
            letter-spacing: 2px;
            font-weight: bold;
            text-transform: uppercase;
            text-align: center;
        }
        .sidebar button, .sidebar a {
            background-color: transparent;
            color: white;
            padding: 15px;
            margin: 10px 0;
            border: none;
            cursor: pointer;
            text-align: left;
            font-size: 14px;
            transition: background-color 0.3s;
            width: 90%;
            display: flex;
            align-items: center;
        }
        .sidebar button:hover, .sidebar a:hover {
            background-color: #555;
        }
        .sidebar button i, .sidebar a i {
            font-size: 1.5em;
            margin-right: 10px;
        }
        .sidebar button span, .sidebar a span {
            font-size: 12px;
            margin-left: 10px;
        }
        .container {
            margin-left: 270px;
            padding: 30px;
            width: calc(100% - 270px);
            background-color: #fff;
        }
        header {
            background-color: #000;
            color: white;
            padding: 10px; /* Reduced padding */
            text-align: center;
            border-radius: 5px; /* Reduced border-radius */
            margin-bottom: 20px; /* Reduced margin */
        }
        header h1 {
            margin: 0;
            font-size: 1.5em; /* Reduced font size */
        }
        header p {
            font-size: 0.9em; /* Smaller font size for subtext */
            margin-top: 5px; /* Slight spacing between title and description */
        }
        form {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        form label {
            color: #000;
            margin-bottom: 8px;
            display: block;
            font-weight: bold;
        }
        form input, form textarea, form select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        form button {
            background-color: #000;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
            transition: background 0.3s;
        }
        form button:hover {
            background-color: #555;
        }
        .update-list {
            margin-top: 40px;
        }
        .update-item {
            background: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 15px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .update-item h3 {
            color: #000;
            font-size: 1.5em;
        }
        .update-item p {
            margin: 10px 0;
        }
        .update-item .actions button {
            background: #555;
            color: white;
            border: none;
            padding: 8px 10px;
            margin-right: 10px;
            cursor: pointer;
            border-radius: 5px;
        }
        .update-item .actions button:hover {
            background: #333;
        }
        .success-message {
            background-color: #333;
            color: white;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 5px;
            text-align: center;
            font-size: 18px;
        }
    </style>
    <script>
        function redirectToLegalUpdates() {
            window.location.href = "legalupdates";
        }
        function participateInQA() {
            window.location.href = "qa-session";
        }
        function reviewReports() {
            window.location.href = "reports";
        }
        function analyzeCases() {
            window.location.href = "analyzecases";
        }
        function viewLegalExpertProfile() {
            window.location.href = "legalExpertProfile";
        }
    </script>
</head>
<body>
    <div class="sidebar">
        <h1>Legal Expert Dashboard</h1>
        <button onclick="redirectToLegalUpdates()">
            <i>&#128196;</i> <span>Update Legal Content</span>
        </button>
        <button onclick="participateInQA()">
            <i>&#128172;</i> <span>Participate in Q&A</span>
        </button>
        <button onclick="reviewReports()">
            <i>&#128221;</i> <span>Review Reports</span>
        </button>
        <button onclick="analyzeCases()">
            <i>&#128203;</i> <span>Analyze Cases</span>
        </button>
        <a href="legalexpertlogin">
            <i>&#x1F511;</i> <span>Logout</span>
        </a>
    </div>

    <div class="container">
        <header>
            <h1>Legal Updates</h1>
            <p>Manage constitutional amendments, court rulings, and legal precedents.</p>
        </header>

        <!-- Success Message Display -->
        <div id="successMessage" class="success-message" style="display: none;">
            Legal update added successfully!
        </div>

        <form id="legalUpdateForm" method="post" action="submitUpdate.jsp">
            <label for="title">Title of Update:</label>
            <input type="text" id="title" name="title" placeholder="Enter update title (e.g., 'Amendment on Article 370')" required>

            <label for="category">Category:</label>
            <select id="category" name="category" required>
                <option value="">Select a category</option>
                <option value="Amendments">Amendments</option>
                <option value="Judgments">Court Judgments</option>
                <option value="Laws">New Laws</option>
                <option value="Bills">Upcoming Bills</option>
            </select>

            <label for="description">Description:</label>
            <textarea id="description" name="description" placeholder="Provide a brief description..." required></textarea>

            <label for="document">Upload Legal Document:</label>
            <input type="file" id="document" name="document">

            <label for="link">Relevant Link (Optional):</label>
            <input type="text" id="link" name="link" placeholder="Add a relevant link (if any)">

            <button type="submit" onclick="showSuccessMessage()">Submit Update</button>
        </form>
    </div>

    <script>
        function showSuccessMessage() {
            document.getElementById("successMessage").style.display = "block";
            setTimeout(function() {
                document.getElementById("successMessage").style.display = "none";
            }, 3000);
        }
    </script>
</body>
</html>