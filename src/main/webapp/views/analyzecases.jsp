<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Legal Expert Dashboard - Analyze Cases</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff;
            color: #000;
            margin: 0;
            display: flex;
        }
        .sidebar {
            background-color: #000;
            color: #fff;
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
        .content {
            margin-left: 270px;
            padding: 30px;
            width: calc(100% - 270px);
        }
        header {
            background-color: #000;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        header h1 {
            margin: 0;
        }
        .container {
            max-width: 1000px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #000;
            border-radius: 10px;
        }
        h2 {
            color: #000;
            margin-bottom: 20px;
        }
        .case-section {
            margin-bottom: 40px;
        }
        .case-section h3 {
            color: #000;
            margin-bottom: 10px;
        }
        .case-section p {
            color: #000;
        }
        .case-section select, .case-section button {
            margin: 10px 0;
        }
        .case-list {
            margin-top: 20px;
            width: 100%;
            border-collapse: collapse;
        }
        .case-list th, .case-list td {
            padding: 12px;
            text-align: left;
            border: 1px solid #000;
        }
        .case-list th {
            background-color: #000;
            color: #fff;
        }
        .btn-container {
            margin-top: 20px;
            text-align: right;
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

        const cases = [
            { id: 1, name: "Case A", date: "2024-06-01", type: "Constitutional Law", status: "Pending" },
            { id: 2, name: "Case B", date: "2024-05-12", type: "Criminal Law", status: "Resolved" },
            { id: 3, name: "Case C", date: "2024-04-20", type: "Civil Law", status: "In Progress" },
            { id: 4, name: "Case D", date: "2024-03-15", type: "Family Law", status: "Pending" },
        ];

        function displayCases() {
            const caseType = document.getElementById('case-type').value;
            const filteredCases = cases.filter(c => caseType === 'all' || c.type === caseType);

            const tableBody = document.getElementById('caseTableBody');
            tableBody.innerHTML = '';

            filteredCases.forEach(caseItem => {
                const row = `
                    <tr>
                        <td>${caseItem.name}</td>
                        <td>${caseItem.date}</td>
                        <td>${caseItem.type}</td>
                        <td>${caseItem.status}</td>
                        <td><button onclick="analyzecases(${caseItem.id})">Analyze</button></td>
                    </tr>
                `;
                tableBody.insertAdjacentHTML('beforeend', row);
            });
        }

        function analyzeCase(caseId) {
            alert(`Analyzing Case ID: ${caseId}`);
        }

        window.onload = function() {
            displayCases();
        };
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
        <button onclick="analyzecases()">
            <i>&#128203;</i> <span>Analyze Cases</span>
        </button>
        <a href="legalexpertlogin.jsp">
            <i>&#x1F511;</i> <span>Logout</span>
        </a>
    </div>

    <div class="content">
        <header>
            <h1>Analyze Legal Cases</h1>
            <p>View and analyze legal cases based on their type and status.</p>
        </header>

        <div class="container">
            <h2>Case Analysis</h2>

            <div class="case-section">
                <h3>Filter by Case Type</h3>
                <select id="case-type" onchange="displayCases()">
                    <option value="all">All</option>
                    <option value="Constitutional Law">Constitutional Law</option>
                    <option value="Criminal Law">Criminal Law</option>
                    <option value="Civil Law">Civil Law</option>
                    <option value="Family Law">Family Law</option>
                </select>
            </div>

            <div class="case-section">
                <h3>Available Cases</h3>
                <table class="case-list">
                    <thead>
                        <tr>
                            <th>Case Name</th>
                            <th>Date</th>
                            <th>Type</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody id="caseTableBody"></tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
