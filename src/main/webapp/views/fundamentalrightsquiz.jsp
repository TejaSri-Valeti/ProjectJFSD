<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fundamental Rights Quiz - Indian Constitution</title>
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
        <h1>Fundamental Rights Quiz</h1>
        <p>Test your knowledge of the Fundamental Rights in the Indian Constitution!</p>

        <form id="fundamentalRightsQuiz">
            <div class="question">
                <label for="q1">1. How many Fundamental Rights are guaranteed by the Indian Constitution?</label>
                <input type="radio" name="q1" value="5" id="q1a"> 5<br>
                <input type="radio" name="q1" value="6" id="q1b"> 6<br>
                <input type="radio" name="q1" value="7" id="q1c"> 7<br>
                <input type="radio" name="q1" value="8" id="q1d"> 8
            </div>

            <div class="question">
                <label for="q2">2. Which article of the Indian Constitution provides the Right to Equality?</label>
                <input type="radio" name="q2" value="Article 14" id="q2a"> Article 14<br>
                <input type="radio" name="q2" value="Article 15" id="q2b"> Article 15<br>
                <input type="radio" name="q2" value="Article 16" id="q2c"> Article 16<br>
                <input type="radio" name="q2" value="Article 17" id="q2d"> Article 17
            </div>

            <div class="question">
                <label for="q3">3. Which Fundamental Right is considered to be the heart of the Constitution?</label>
                <input type="radio" name="q3" value="Right to Equality" id="q3a"> Right to Equality<br>
                <input type="radio" name="q3" value="Right to Freedom" id="q3b"> Right to Freedom<br>
                <input type="radio" name="q3" value="Right against Exploitation" id="q3c"> Right against Exploitation<br>
                <input type="radio" name="q3" value="Right to Constitutional Remedies" id="q3d"> Right to Constitutional Remedies
            </div>

            <div class="question">
                <label for="q4">4. Which article empowers the state to impose reasonable restrictions on the exercise of Fundamental Rights?</label>
                <input type="radio" name="q4" value="Article 19" id="q4a"> Article 19<br>
                <input type="radio" name="q4" value="Article 20" id="q4b"> Article 20<br>
                <input type="radio" name="q4" value="Article 21" id="q4c"> Article 21<br>
                <input type="radio" name="q4" value="Article 22" id="q4d"> Article 22
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

            const answers = {
                q1: "6",
                q2: "Article 14",
                q3: "Right to Constitutional Remedies",
                q4: "Article 19"
            };

            for (let i = 1; i <= totalQuestions; i++) {
                const userAnswer = document.querySelector(input[name="q${i}"]:checked);
                if (userAnswer && userAnswer.value === answers[q${i}]) {
                    score++;
                }
            }

            document.getElementById("result").innerText = You scored ${score} out of ${totalQuestions}.;
        }
    </script>
</body>
</html>