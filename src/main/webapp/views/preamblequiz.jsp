<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Preamble Quiz - Indian Constitution</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            height: 100vh;
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
<%@ include file="citizendashboard.jsp" %>
    <div class="container">
        <h1>Preamble Quiz</h1>
        <p>Test your knowledge of the Preamble to the Indian Constitution!</p>

        <form id="preambleQuiz">
            <div class="question">
                <label for="q1">1. Which of the following words is NOT included in the Preamble of the Indian Constitution?</label>
                <input type="radio" name="q1" value="Sovereign" id="q1a"> Sovereign<br>
                <input type="radio" name="q1" value="Secular" id="q1b"> Secular<br>
                <input type="radio" name="q1" value="Federal" id="q1c"> Federal<br>
                <input type="radio" name="q1" value="Democratic" id="q1d"> Democratic
            </div>

            <div class="question">
                <label for="q2">2. What is the primary goal of the Preamble?</label>
                <input type="radio" name="q2" value="Justice" id="q2a"> To ensure justice for all<br>
                <input type="radio" name="q2" value="Equality" id="q2b"> To promote equality among citizens<br>
                <input type="radio" name="q2" value="Liberty" id="q2c"> To secure liberty for all<br>
                <input type="radio" name="q2" value="All of the above" id="q2d"> All of the above
            </div>

            <div class="question">
                <label for="q3">3. When was the Preamble adopted by the Constituent Assembly?</label>
                <input type="radio" name="q3" value="26th January 1950" id="q3a"> 26th January 1950<br>
                <input type="radio" name="q3" value="15th August 1947" id="q3b"> 15th August 1947<br>
                <input type="radio" name="q3" value="26th November 1949" id="q3c"> 26th November 1949<br>
                <input type="radio" name="q3" value="1st January 1950" id="q3d"> 1st January 1950
            </div>

            <div class="question">
                <label for="q4">4. How many ideals are listed in the Preamble?</label>
                <input type="radio" name="q4" value="3" id="q4a"> 3<br>
                <input type="radio" name="q4" value="4" id="q4b"> 4<br>
                <input type="radio" name="q4" value="5" id="q4c"> 5<br>
                <input type="radio" name="q4" value="6" id="q4d"> 6
            </div>

            <button type="button" onclick="submitQuiz()">Submit Quiz</button>
        </form>

        <div id="result" style="margin-top: 20px;"></div>

        <a href="citizen4">Back to Quizzes</a>
    </div>

    <script>
        function submitQuiz() {
            let score = 0;
            const totalQuestions = 4;

            // Answer key for the quiz
            const answers = {
                q1: "Federal",
                q2: "All of the above",
                q3: "26th November 1949",
                q4: "5"
            };

            // Loop through each question to check the user's answer
            for (let i = 1; i <= totalQuestions; i++) {
                const userAnswer = document.querySelector(`input[name="q${i}"]:checked`);
                if (userAnswer && userAnswer.value === answers[`q${i}`]) {
                    score++;
                }
            }

            // Display the score result
            document.getElementById("result").innerText = `You scored ${score} out of ${totalQuestions}.`;
        }
    </script>
</body>
</html>
