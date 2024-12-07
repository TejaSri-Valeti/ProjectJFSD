<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Q&A Session</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            color: #333;
        }
        header {
            background-color: #000;
            color: white;
            padding: 15px;
            text-align: center;
        }
        header h1 {
            margin: 0;
            font-size: 1.8em;
        }
        header p {
            margin: 5px 0 0;
            font-size: 0.9em;
        }
        nav {
            background-color: #222;
            padding: 10px;
            text-align: center;
        }
        nav a {
            color: white;
            margin: 0 10px;
            text-decoration: none;
            font-size: 16px;
        }
        nav a:hover {
            text-decoration: underline;
        }
        .container {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            color: #000;
            margin-bottom: 15px;
        }
        .question-item {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 10px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
        }
        .question-item h3 {
            margin: 0;
            color: #000;
        }
        .question-item p {
            margin: 8px 0;
            color: #555;
            font-size: 0.9em;
        }
        .question-item .respond-button {
            background-color: #000;
            border: none;
            color: white;
            padding: 8px 12px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }
        .question-item .respond-button:hover {
            background-color: #555;
        }
        form {
            display: flex;
            flex-direction: column;
            margin-top: 20px;
        }
        textarea {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            resize: vertical;
            font-size: 16px;
            height: 100px;
        }
        button {
            background-color: #000;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #333;
        }
        .pagination {
            text-align: center;
            margin-top: 20px;
        }
        .pagination button {
            padding: 10px;
            background-color: #000;
            color: white;
            border: none;
            border-radius: 5px;
            margin: 0 5px;
            cursor: pointer;
        }
        .pagination button:hover {
            background-color: #333;
        }
        .search-box {
            margin-bottom: 20px;
            text-align: center;
        }
        #search {
            padding: 10px;
            font-size: 16px;
            width: 80%;
            max-width: 400px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .category-dropdown {
            margin-bottom: 20px;
            display: block;
            text-align: center;
        }
        .category-dropdown select {
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 200px;
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
    <!-- Header -->
    <header>
        <h1>Q&A Session</h1>
        <p>Provide insights and answers to citizen questions on legal matters.</p>
    </header>

    
    <!-- Content -->
    <div class="container">
        <h2>Respond to Questions</h2>

        <!-- Search Box -->
        <div class="search-box">
            <input type="text" id="search" placeholder="Search questions..." />
        </div>

        <!-- Question Categories Dropdown -->
        <div class="category-dropdown">
            <select id="category">
                <option value="all">All Categories</option>
                <option value="constitution">Constitutional Law</option>
                <option value="privacy">Right to Privacy</option>
                <option value="judiciary">Judicial System</option>
                <option value="human-rights">Human Rights</option>
                <option value="government">Government Policies</option>
            </select>
        </div>

        <!-- Form to respond -->
        <form id="qaForm" method="post" action="submitAnswer.jsp">
            <textarea id="question" name="question" placeholder="Select a question to respond..." disabled></textarea>
            <textarea id="answer" name="answer" placeholder="Type your response here..." required></textarea>
            <button type="submit">Submit Answer</button>
        </form>

        <!-- List of open questions -->
        <div class="question-list" id="question-list">
            <h2>Open Questions</h2>

            <!-- Example Question Items -->
            <div class="question-item" data-category="constitution">
                <h3>What is the process for amending the Indian Constitution?</h3>
                <button class="respond-button">Respond</button>
            </div>

            <div class="question-item" data-category="privacy">
                <h3>How does the judiciary interpret the Right to Privacy?</h3>
                <button class="respond-button">Respond</button>
            </div>

            <div class="question-item" data-category="judiciary">
                <h3>What is the significance of Article 370?</h3>
                <button class="respond-button">Respond</button>
            </div>

            <!-- Additional Questions -->
            <div class="question-item" data-category="government">
                <h3>What is the process of judicial review in India?</h3>
                <button class="respond-button">Respond</button>
            </div>

            <div class="question-item" data-category="judiciary">
                <h3>What are the powers of the President of India?</h3>
                <button class="respond-button">Respond</button>
            </div>

            <div class="question-item" data-category="human-rights">
                <h3>How does the Indian legal system deal with child rights?</h3>
                <button class="respond-button">Respond</button>
            </div>

            <div class="question-item" data-category="government">
                <h3>What is the role of the Election Commission of India?</h3>
                <button class="respond-button">Respond</button>
            </div>

            <div class="question-item" data-category="judiciary">
                <h3>How does the judiciary ensure checks and balances in India?</h3>
                <button class="respond-button">Respond</button>
            </div>

            <div class="question-item" data-category="constitution">
                <h3>What is the significance of Article 21 in the Indian Constitution?</h3>
                <button class="respond-button">Respond</button>
            </div>

            <div class="question-item" data-category="privacy">
                <h3>What are the implications of the Right to Information Act?</h3>
                <button class="respond-button">Respond</button>
            </div>
        </div>

        <!-- Pagination -->
        <div class="pagination">
            <button id="prevBtn">Previous</button>
            <button id="nextBtn">Next</button>
        </div>
    </div>

    <script>
        // Search functionality
        document.getElementById('search').addEventListener('input', function () {
            const searchText = this.value.toLowerCase();
            const questions = document.querySelectorAll('.question-item');
            questions.forEach(question => {
                const questionText = question.querySelector('h3').innerText.toLowerCase();
                if (questionText.includes(searchText)) {
                    question.style.display = '';
                } else {
                    question.style.display = 'none';
                }
            });
        });

        // Category filter functionality
        document.getElementById('category').addEventListener('change', function () {
            const selectedCategory = this.value;
            const questions = document.querySelectorAll('.question-item');
            questions.forEach(question => {
                const category = question.getAttribute('data-category');
                if (selectedCategory === 'all' || category === selectedCategory) {
                    question.style.display = '';
                } else {
                    question.style.display = 'none';
                }
            });
        });

        // Pagination functionality
        let currentPage = 1;
        const questionsPerPage = 3;
        const questions = document.querySelectorAll('.question-item');
        const totalQuestions = questions.length;

        document.getElementById('nextBtn').addEventListener('click', function () {
            if ((currentPage * questionsPerPage) < totalQuestions) {
                currentPage++;
                updatePagination();
            }
        });

        document.getElementById('prevBtn').addEventListener('click', function () {
            if (currentPage > 1) {
                currentPage--;
                updatePagination();
            }
        });

        function updatePagination() {
            const start = (currentPage - 1) * questionsPerPage;
            const end = currentPage * questionsPerPage;

            questions.forEach((question, index) => {
                if (index >= start && index < end) {
                    question.style.display = '';
                } else {
                    question.style.display = 'none';
                }
            });
        }

        updatePagination(); // Initialize pagination
    </script>

</body>
</html>