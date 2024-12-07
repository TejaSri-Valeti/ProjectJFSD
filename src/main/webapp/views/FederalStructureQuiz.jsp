<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Federal Structure Quiz - Indian Constitution</title>
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
        <a href="citizenlogout.jsp" class="logout-link">Logout</a>
    </div>

    <!-- Main Content Section -->
    <div class="main-content">
        <div class="container">
            <h1>Federal Structure Quiz</h1>
            <p>Test your knowledge of the Federal Structure in the Indian Constitution!</p>

            <form id="federalStructureQuiz">
                <div class="question">
                    <label for="q1">1. The distribution of powers between the Centre and the States is laid down in which part of the Constitution?</label>
                    <input type="radio" name="q1" value="Seventh Schedule" id="q1a"> Seventh Schedule<br>
                    <input type="radio" name="q1" value="Eighth Schedule" id="q1b"> Eighth Schedule<br>
                    <input type="radio" name="q1" value="Ninth Schedule" id="q1c"> Ninth Schedule<br>
                    <input type="radio" name="q1" value="Tenth Schedule" id="q1d"> Tenth Schedule
                </div>

                <div class="question">
                    <label for="q2">2. Which article provides for the establishment of a Finance Commission?</label>
                    <input type="radio" name="q2" value="Article 280" id="q2a"> Article 280<br>
                    <input type="radio" name="q2" value="Article 281" id="q2b"> Article 281<br>
                    <input type="radio" name="q2" value="Article 282" id="q2c"> Article 282<br>
                    <input type="radio" name="q2" value="Article 283" id="q2d"> Article 283
                </div>

                <div class="question">
                    <label for="q3">3. The power to legislate on matters in the Concurrent List is given to:</label>
                    <input type="radio" name="q3" value="Both Parliament and State Legislatures" id="q3a"> Both Parliament and State Legislatures<br>
                    <input type="radio" name="q3" value="Only Parliament" id="q3b"> Only Parliament<br>
                    <input type="radio" name="q3" value="Only State Legislatures" id="q3c"> Only State Legislatures<br>
                    <input type="radio" name="q3" value="Local Authorities" id="q3d"> Local Authorities
                </div>

                <div class="question">
                    <label for="q4">4. Which article of the Constitution is related to the distribution of powers?</label>
                    <input type="radio" name="q4" value="Article 246" id="q4a"> Article 246<br>
                    <input type="radio" name="q4" value="Article 247" id="q4b"> Article 247<br>
                    <input type="radio" name="q4" value="Article 248" id="q4c"> Article 248<br>
                    <input type="radio" name="q4" value="Article 249" id="q4d"> Article 249
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
                q1: "Seventh Schedule",
                q2: "Article 280",
                q3: "Both Parliament and State Legislatures",
                q4: "Article 246"
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
