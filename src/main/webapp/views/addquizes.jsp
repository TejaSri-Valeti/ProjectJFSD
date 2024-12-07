<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Quiz - Educator Dashboard</title>
    <style>
        /* General styles */
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
            background-color: #333;
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
            background-color: #666;
        }

        .dropdown-container {
            display: none;
            background-color: #555;
            padding-left: 15px;
        }

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

        .form-container {
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .form-container label {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 8px;
            display: block;
        }

        .form-container input[type="text"],
        .form-container textarea {
            font-size: 16px;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #ddd;
            width: 100%;
            margin-bottom: 20px;
        }

        .form-container button[type="submit"] {
            background-color: #007bff;
            color: white;
            font-size: 18px;
            padding: 12px;
            border-radius: 8px;
            border: none;
            cursor: pointer;
        }

        .form-container button[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Styling for options inputs */
        .option-group {
            margin-bottom: 15px;
        }

        .option-group input {
            margin-bottom: 10px;
        }

        /* Success Message Styles */
        .success-message {
            background-color: #d4edda;
            color: #155724;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
            font-size: 18px;
        }

    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <div class="educator-heading">Educator Dashboard</div>
        <button class="dropdown-btn">Quizzes</button>
        <div class="dropdown-container">
            <a href="addquizes">Add Quizzes</a>
            <a href="viewquizes">View Quizzes</a>
            <a href="deletequizes">Delete Quizzes</a>
        </div>
        <a href="educatorlogin">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h1>Add a New Quiz</h1>
        <p>Provide quiz details and questions along with their options and correct answers.</p>

        <!-- Form to add quiz -->
        <div class="form-container">
            <form action="savequizdetails" method="POST">
                <label for="title">Quiz Title:</label>
                <input type="text" id="title" name="title" placeholder="Enter quiz title" required>

                <label for="description">Quiz Description:</label>
                <input type="text" id="description" name="description" placeholder="Enter quiz description" required>

                <!-- Add Question, Options and Correct Answer dynamically -->
                <div id="questions-section">
                    <div class="question-section">
                        <label for="question1">Question 1:</label>
                        <input type="text" name="question1" placeholder="Enter question" required>

                        <div class="option-group">
                            <label for="option1-1">Option 1:</label>
                            <input type="text" name="option1-1" placeholder="Option 1" required>

                            <label for="option1-2">Option 2:</label>
                            <input type="text" name="option1-2" placeholder="Option 2" required>

                            <label for="option1-3">Option 3:</label>
                            <input type="text" name="option1-3" placeholder="Option 3" required>

                            <label for="option1-4">Option 4:</label>
                            <input type="text" name="option1-4" placeholder="Option 4" required>
                        </div>

                        <label for="correctAnswer1">Correct Answer:</label>
                        <input type="text" name="correctAnswer1" placeholder="Correct Answer" required>
                    </div>
                </div>

                <button type="submit">Save Quiz</button>
            </form>
        </div>
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
