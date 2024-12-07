<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Legal Reports</title>
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
        nav {
            background-color: #333;
            padding: 10px;
            text-align: center;
        }
        nav a {
            color: #fff;
            margin: 0 15px;
            text-decoration: none;
            font-size: 18px;
        }
        nav a:hover {
            text-decoration: underline;
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
        .report-section {
            margin-bottom: 40px;
        }
        .report-section h3 {
            color: #000;
            margin-bottom: 10px;
        }
        .report-section p {
            color: #000;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #000;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #000;
            color: #fff;
        }
        .btn-container {
            margin-top: 20px;
            text-align: right;
        }
        button {
            background-color: #000;
            border: none;
            color: #fff;
            padding: 12px 16px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #333;
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

    <div class="content">
        <!-- Header -->
        <header>
            <h1>Legal Reports</h1>
            <p>Generate and view detailed reports on constitutional matters, amendments, and recent rulings.</p>
        </header>

        <!-- Content -->
        <div class="container">
            <h2>Generate Legal Reports</h2>

            <!-- Section to generate reports -->
            <div class="report-section">
                <h3>Generate Report</h3>
                <p>Select a report type and time period to generate a comprehensive legal report.</p>
                <form id="reportForm">
                    <label for="report-type">Report Type:</label>
                    <select id="report-type" name="report-type" required>
                        <option value="constitutional-amendments">Constitutional Amendments</option>
                        <option value="recent-rulings">Recent Court Rulings</option>
                        <option value="legal-precedents">Legal Precedents</option>
                    </select>

                    <label for="time-period">Time Period:</label>
                    <select id="time-period" name="time-period" required>
                        <option value="last-month">Last Month</option>
                        <option value="last-quarter">Last Quarter</option>
                        <option value="last-year">Last Year</option>
                    </select>

                    <div class="btn-container">
                        <button type="submit">Generate Report</button>
                    </div>
                </form>
            </div>

            <!-- Section to display generated reports -->
            <div class="report-section">
                <h3>Recent Generated Reports</h3>
                <table>
                    <thead>
                        <tr>
                            <th>Report Type</th>
                            <th>Time Period</th>
                            <th>Date Generated</th>
                            <th>Download</th>
                        </tr>
                    </thead>
                    <tbody id="reportTableBody">
                        <!-- Example reports -->
                        <tr>
                            <td>Constitutional Amendments</td>
                            <td>Last Year</td>
                            <td>2024-09-15</td>
                            <td><button>Download</button></td>
                        </tr>
                        <tr>
                            <td>Recent Court Rulings</td>
                            <td>Last Quarter</td>
                            <td>2024-08-12</td>
                            <td><button>Download</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script>
        document.getElementById("reportForm").onsubmit = function(event) {
            event.preventDefault();
            
            const reportType = document.getElementById('report-type').value;
            const timePeriod = document.getElementById('time-period').value;

            // Example of generating a report - this can be replaced with backend code
            const reportDate = new Date().toISOString().split('T')[0];
            const newRow = `
                <tr>
                    <td>${reportType}</td>
                    <td>${timePeriod}</td>
                    <td>${reportDate}</td>
                    <td><button>Download</button></td>
                </tr>
            `;
            document.getElementById('reportTableBody').insertAdjacentHTML('beforeend', newRow);
            alert('Report generated successfully!');
        };
    </script>

</body>
</html>