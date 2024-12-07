<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Directive Principles Quiz - Indian Constitution</title>
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
        <h1>Directive Principles Quiz</h1>
        <p>Test your knowledge of the Directive Principles of State Policy in the Indian Constitution!</p>

        <form id="directivePrinciplesQuiz">
            <div class="question">
                <label for="q1">1. Directive Principles are enshrined in which part of the Constitution?</label>
                <input type="radio" name="q1" value="Part IV" id="q1a"> Part IV<br>
                <input type="radio" name="q1" value="Part III" id="q1b"> Part III<br>
                <input type="radio" name="q1" value="Part V" id="q1c"> Part V<br>
                <input type="radio" name="q1" value="Part VI" id="q1d"> Part VI
            </div>

            <div class="question">
                <label for="q2">2. Which article mentions that the Directive Principles are fundamental in the governance of the country?</label>
                <input type="radio" name="q2" value="Article 37" id="q2a"> Article 37<br>
                <input type="radio" name="q2" value="Article 38" id="q2b"> Article 38<br>
                <input type="radio" name="q2" value="Article 39" id="q2c"> Article 39<br>
                <input type="radio" name="q2" value="Article 40" id="q2d"> Article 40
            </div>

            <div class="question">
                <label for="q3">3. Which of the following is NOT a Directive Principle?</label>
                <input type="radio" name="q3" value="Right to Work" id="q3a"> Right to Work<br>
                <input type="radio" name="q3" value="Right to Education" id="q3b"> Right to Education<br>
                <input type="radio" name="q3" value="Right to Equality" id="q3c"> Right to Equality<br>
                <input type="radio" name="q3" value="Right to Social Security" id="q3d"> Right to Social Security
            </div>

            <div class="question">
                <label for="q4">4. Which article provides for the promotion of educational and economic interests of Scheduled Castes, Scheduled Tribes, and other weaker sections?</label>
                <input type="radio" name="q4" value="Article 46" id="q4a"> Article 46<br>
                <input type="radio" name="q4" value="Article 47" id="q4b"> Article 47<br>
                <input type="radio" name="q4" value="Article 48" id="q4c"> Article 48<br>
                <input type="radio" name="q4" value="Article 49" id="q4d"> Article 49
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
                q1: "Part IV",
                q2: "Article 37",
                q3: "Right to Equality",
                q4: "Article 46"
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
