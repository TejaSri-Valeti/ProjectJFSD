<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amendments Quiz - Indian Constitution</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            min-height: 100vh;
        }

        /* Sidebar styling */
        .sidebar {
            background-color: #4CAF50;
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
        .sidebar a {
            width: 90%;
            padding: 12px;
            margin: 8px 0;
            background-color: #ffffff33;
            color: white;
            border-radius: 4px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            display: block;
        }
        .sidebar a:hover {
            background-color: #ffffff55;
        }
        .logout-link {
            margin-top: auto;
            padding-bottom: 20px;
        }

        /* Main content styling */
        .main-content {
            margin-left: 260px;
            padding: 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 600px;
            margin-top: 50px;
            text-align: center;
        }

        h1 {
            color: #4CAF50;
            margin-bottom: 20px;
        }

        form {
            text-align: left;
        }

        .question {
            margin-bottom: 15px;
        }

        .question label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            margin-top: 20px;
        }

        button:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: #4CAF50;
            display: block;
            margin-top: 20px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <!-- Sidebar Section -->
    <div class="sidebar">
        <h1>Dashboard</h1>
        <a href="citizen1">Educational Resources</a>
        <a href="citizen2">Discussion Forums</a>
        <a href="citizen3">Webinars & Sessions</a>
        <a href="citizen4">Quizzes & Assessments</a>
        <a href="citizen5">Learning Progress</a>
        <a href="citizenlogout">Logout</a>
    </div>

    <!-- Main Content Section -->
    <div class="main-content">
        <div class="container">
            <h1>Amendments Quiz</h1>
            <p>Test your knowledge of the Amendments in the Indian Constitution!</p>

            <form id="amendmentsQuiz">
                <div class="question">
                    <label for="q1">1. How many amendments were made to the Indian Constitution as of 2024?</label>
                    <input type="radio" name="q1" value="105" id="q1a"> 105<br>
                    <input type="radio" name="q1" value="104" id="q1b"> 104<br>
                    <input type="radio" name="q1" value="103" id="q1c"> 103<br>
                    <input type="radio" name="q1" value="102" id="q1d"> 102
                </div>

                <div class="question">
                    <label for="q2">2. Which amendment is known for the introduction of the 73rd and 74th Amendments?</label>
                    <input type="radio" name="q2" value="61st Amendment" id="q2a"> 61st Amendment<br>
                    <input type="radio" name="q2" value="73rd Amendment" id="q2b"> 73rd Amendment<br>
                    <input type="radio" name="q2" value="74th Amendment" id="q2c"> 74th Amendment<br>
                    <input type="radio" name="q2" value="61st and 73rd Amendments" id="q2d"> 61st and 73rd Amendments
                </div>

                <div class="question">
                    <label for="q3">3. The 42nd Amendment is also known as the:</label>
                    <input type="radio" name="q3" value="Mini Constitution" id="q3a"> Mini Constitution<br>
                    <input type="radio" name="q3" value="Basic Structure" id="q3b"> Basic Structure<br>
                    <input type="radio" name="q3" value="Constitutional Amendment" id="q3c"> Constitutional Amendment<br>
                    <input type="radio" name="q3" value="Preamble Amendment" id="q3d"> Preamble Amendment
                </div>

                <div class="question">
                    <label for="q4">4. Which article provides the procedure for amending the Constitution?</label>
                    <input type="radio" name="q4" value="Article 368" id="q4a"> Article 368<br>
                    <input type="radio" name="q4" value="Article 370" id="q4b"> Article 370<br>
                    <input type="radio" name="q4" value="Article 371" id="q4c"> Article 371<br>
                    <input type="radio" name="q4" value="Article 369" id="q4d"> Article 369
                </div>

                <button type="button" onclick="submitQuiz()">Submit Quiz</button>
            </form>

            <div id="result" style="margin-top: 20px;"></div>

            <a href="citizen4">Back to Quizzes</a>
        </div>
    </div>

    <script>
        function submitQuiz() {
            let score = 0;
            const totalQuestions = 4;

            const answers = {
                q1: "105",
                q2: "61st and 73rd Amendments",
                q3: "Mini Constitution",
                q4: "Article 368"
            };

            for (let i = 1; i <= totalQuestions; i++) {
                const userAnswer = document.querySelector(`input[name="q${i}"]:checked`);
                if (userAnswer && userAnswer.value === answers[`q${i}`]) {
                    score++;
                }
            }

            document.getElementById("result").innerText = `You scored ${score} out of ${totalQuestions}.`;
        }
    </script>
</body>
</html>
